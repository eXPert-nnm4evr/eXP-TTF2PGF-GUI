{
Registry functions exported from SquallAPI
© Written by Roman Barlos aka Squall
© 2007 LogicArt Software
E-mail: Squall2007@yandex.ru
All rights reserved

≈сли вы используете этот модуль в своих приложени€х, укажите где-нибудь (например в About'е) мое им€ и мыло. я буду очень рад!
}
unit SquallRegistry;

interface
uses Windows, Registry, SysUtils, classes;


function RegGetRoot(regpath: string): hkey;
function RegValueName(regpath: string):string;
function RegValueExists(regpath: String):Boolean;
function RegDeleteValue(regpath: string): Boolean;
function RegWriteString(regpath: String; value: String):Boolean;
function RegWriteInt(regpath: String; value: Longint):Boolean;
function RegWriteBool(regpath: String; value: boolean):Boolean;
function RegReadInt(regpath: String; def:Int64):Int64;
function RegReadBool(regpath: String; def:Boolean):Boolean;
function RegReadString(regpath: String; def: String):String;
function RegGetValueNames(regpath: string; strings: TStrings):Boolean;
function RegGetKeyNames(regpath: string; strings: TStrings):Boolean;
function RegGetDataType(regpath: string): TRegDataType;

implementation

function RegGetRoot(regpath: string): hkey;
var reg: string;
begin
  if regpath ='' then
  begin
  result := 0;
  exit;
  end;
  reg := Copy(regpath,1,4);
  reg := AnsiUpper(PChar(reg));
  if reg = 'HKLM' then result := HKEY_LOCAL_MACHINE
  else if reg = 'HKCU' then result := HKEY_CURRENT_USER
  else if reg = 'HKCR' then result := HKEY_CLASSES_ROOT
  else if reg = 'HKU' then result := HKEY_USERS
  else if reg = 'HKPD' then result := HKEY_PERFORMANCE_DATA
  else if reg = 'HKCC' then result := HKEY_CURRENT_CONFIG
  else if reg = 'HKDD' then result := HKEY_DYN_DATA
  else result := 0;
end;

function RegValueName(regpath: string):string;
var i: Integer;
begin
  for i:=Length(regpath) downto 1 do
  begin
  if (regpath[i]='/') or (regpath[i]='\') then
  begin
  result := Copy(regpath,i+1,length(regpath)-i+2);
  exit;
  end;
  end;
end;

function RegKey(regpath: string):string;
var i, k: Integer;
begin
    for i:=1 to length(regpath) do
  begin
  if (regpath[i]='/') or (regpath[i]='\') then
  begin
  k := i;
  break;
  end;
  end;
  for i:=Length(regpath) downto 1 do
  begin
  if (regpath[i]='/') or (regpath[i]='\') then
  begin
  result := Copy(regpath,k+1,i-k-1);
  exit;
  end;
  end;
end;

function RegReadString(regpath: String; def: String):String;
var reg: TRegistry;
begin
   if RegGetRoot(regpath) = 0 then
   begin
   result := def;
   exit;
   end
   else
   begin
   reg := TRegistry.Create;
   reg.RootKey := RegGetRoot(regpath);
   reg.OpenKey(regkey(regpath),False);
   try
   if reg.ValueExists(regvaluename(regpath)) = false then
   begin
   result := def;
   reg.CloseKey;
   reg.Free;
   exit;
   end;
   result := reg.ReadString(regvaluename(regpath));
   reg.CloseKey;
   reg.Free;
   except
   result := def;
   reg.CloseKey;
   reg.Free;
   end;
   end;
end;

function RegValueExists(regpath: String):Boolean;
var reg: TRegistry;
begin
   if RegGetRoot(regpath) = 0 then
   begin
   result := False;
   exit;
   end
   else
   begin
   reg := TRegistry.Create;
   reg.RootKey := RegGetRoot(regpath);
   if reg.OpenKey(regkey(regpath),False) = false then
   begin
   result := false;
   reg.CloseKey;
   reg.Free;
   exit;
   end;
   try
   if  reg.ValueExists(regvaluename(regpath)) then result := true else result := False;
   finally
   reg.CloseKey;
   reg.Free;
   end;
   end;
end;


function RegDeleteValue(regpath: string): Boolean;
var reg: TRegistry;
begin
  if RegGetRoot(regpath) = 0 then
   begin
   result := False;
   exit;
   end
   else
   begin
   reg := TRegistry.Create;
   reg.RootKey := RegGetRoot(regpath);
   reg.OpenKey(regkey(regpath),True);
   try
   reg.DeleteValue(regvaluename(regpath));
   result := True;
   reg.CloseKey;
   reg.Free;
   except
   result := False;
   reg.CloseKey;
   reg.Free;
   end;
   end;
end;

function RegWriteString(regpath: String; value: String):Boolean;
var reg: TRegistry;
begin
   if RegGetRoot(regpath) = 0 then
   begin
   result := False;
   exit;
   end
   else
   begin
   reg := TRegistry.Create;
   reg.RootKey := RegGetRoot(regpath);
   reg.OpenKey(regkey(regpath),True);
   try
   reg.WriteString(regvaluename(regpath),value);
   result := True;
   reg.CloseKey;
   reg.Free;
   except
   result := False;
   reg.CloseKey;
   reg.Free;
   end;
   end;
end;

function RegWriteInt(regpath: String; value: Longint):Boolean;
var reg: TRegistry;
begin
   if RegGetRoot(regpath) = 0 then
   begin
   result := False;
   exit;
   end
   else
   begin
   reg := TRegistry.Create;
   reg.RootKey := RegGetRoot(regpath);
   reg.OpenKey(regkey(regpath),True);
   try
   reg.WriteInteger(regvaluename(regpath),value);
   result := True;
   reg.CloseKey;
   reg.Free;
   except
   result := False;
   reg.CloseKey;
   reg.Free;
   end;
   end;
end;

function RegWriteBool(regpath: String; value: boolean):Boolean;
var reg: TRegistry;
begin
   if RegGetRoot(regpath) = 0 then
   begin
   result := False;
   exit;
   end
   else
   begin
   reg := TRegistry.Create;
   reg.RootKey := RegGetRoot(regpath);
   reg.OpenKey(regkey(regpath),True);
   try
   reg.WriteBool(regvaluename(regpath),value);
   result := True;
   reg.CloseKey;
   reg.Free;
   except
   result := False;
   reg.CloseKey;
   reg.Free;
   end;
   end;
end;

function RegReadInt(regpath: String; def:Int64):Int64;
var reg: TRegistry;
begin
   if RegGetRoot(regpath) = 0 then
   begin
   result := def;
   exit;
   end
   else
   begin
   reg := TRegistry.Create;
   reg.RootKey := RegGetRoot(regpath);
   reg.OpenKey(regkey(regpath),False);
   try
   if reg.ValueExists(regvaluename(regpath)) = false then
   begin
   result := def;
   reg.CloseKey;
   reg.Free;
   exit;
   end;
   result := reg.ReadInteger(regvaluename(regpath));
   reg.CloseKey;
   reg.Free;
   except
   result := def;
   reg.CloseKey;
   reg.Free;
   end;
   end;
end;

function RegReadBool(regpath: String; def:Boolean):Boolean;
var reg: TRegistry;
begin
   if RegGetRoot(regpath) = 0 then
   begin
   result := def;
   exit;
   end
   else
   begin
   reg := TRegistry.Create;
   reg.RootKey := RegGetRoot(regpath);
   reg.OpenKey(regkey(regpath),False);
   try
   if reg.ValueExists(regvaluename(regpath)) = false then
   begin
   result := def;
   reg.CloseKey;
   reg.Free;
   exit;
   end;
   result := reg.ReadBool(regvaluename(regpath));
   reg.CloseKey;
   reg.Free;
   except
   result := def;
   reg.CloseKey;
   reg.Free;
   end;
   end;
end;

function RegGetKeyNames(regpath: string; strings: TStrings):Boolean;
var reg: TRegistry;
begin
   result:= false;
   if RegGetRoot(regpath) = 0 then  exit
   else
   begin
   try
   reg := TRegistry.Create;
   reg.RootKey := RegGetRoot(regpath);
   reg.OpenKey(regkey(regpath),False);
   reg.GetKeyNames(strings);
   result := True;
   finally
   reg.CloseKey;
   reg.Free;
   end;
   end;
end;

function RegGetValueNames(regpath: string; strings: TStrings):Boolean;
var reg: TRegistry;
begin
   result:= false;
   if RegGetRoot(regpath) = 0 then  exit
   else
   begin
   try
   reg := TRegistry.Create;
   reg.RootKey := RegGetRoot(regpath);
   reg.OpenKey(regkey(regpath),False);
   reg.GetValueNames(strings);
   result := True;
   finally
   reg.CloseKey;
   reg.Free;
   end;
   end;
end;

function RegGetDataType(regpath: string): TRegDataType;
var reg: TRegistry;
res: string;
begin
   result:= rdUnknown;
   if RegGetRoot(regpath) = 0 then  exit
   else
   begin
   try
   reg := TRegistry.Create;
   reg.RootKey := RegGetRoot(regpath);
   reg.OpenKey(regkey(regpath),False);
   result := reg.GetDataType(regvaluename(regpath));
   finally
   reg.Closekey;
   reg.Free;
   end;
   end;
end;

end.


