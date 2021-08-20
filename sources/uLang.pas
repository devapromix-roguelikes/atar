unit uLang;

interface

uses uItem, uCreature, uMap;

const
  Lang: array [0..299 + 1, 0..1] of string = (

  ('Start new game', '������ ����� ����'), // 000
  ('Load previous game', '��������� ����'),
  ('Settings', '���������'),
  ('High scores table', '������� ��������'),
  ('Character creation', '�������� ���������'),
  ('', ''),
  ('', ''),
  ('', ''),
  ('Character', '��������'),
  ('Escape to reality', '����� � ����������'),
  ('You need a key.', '���� ����� ����.'), // 010
  ('You are carrying a too much!', '�� ����������!'),
  ('You pick up a %s.', '�� ������ %s.'),
  ('', ''),
  ('', ''),
  ('Strength', '����'),
  ('Dexterity', '��������'),
  ('Will', '����'),
  ('Speed', '��������'),
  ('', ''),
  ('Hello #g%s$, welcome to #r%s$! Be careful!', '���������� #g%s$, ����� ���������� � #r%s$! ���� ���������!'), // 020
  ('Pickup', '������� �������'),
  ('Life', '�����'),
  ('Mana', '����'),
  ('select item', '������� �������'),
  ('Inventory', '���������'),
  ('pickup item', '������� �������'),
  ('to return to game', '��������� � ����'),
  ('select character', '����� ���������'),
  ('back to main menu', '����� � ������� ����'),
  ('Level', '�������'), // 030   
  ('Experience', '����'),
  ('Damage', '����'),
  ('Protect', '������'),
  ('Kills', '�����'),
  ('Turns', '�����'),
  ('Rating', '�������'),
  ('Name', '���'),
  ('What is your name?', '����� ���� ���?'),
  ('Map', '�����'),
  ('Durability', '���������'), // 040
  ('Count', '�����'),
  ('Weight', '���'),
  ('You find the hidden door.', '�� ����� �������� �����.'),
  ('You unlock the locked door.', '���� ������� ������� �������� �����.'),
  ('You open the chest.', '�� ������ ������.'),
  ('You open the door.', '�� ������ �����.'),
  ('There is an open chest.', '�������� ������.'),
  ('random name', '������������ ���'),
  ('to return to inventory', '��������� � ���������'),
  ('', ''), // 050
  ('There are many items lays in the chest (#w%s$).', '��������� ��������� ����� � ������� (#w%s$).'),
  ('A #w%s$ lays in the chest.', '#w%s$ ����� � �������.'),
  ('There are many items lays in the ground (#w%s$).', '��������� ��������� ����� �� ����� (#w%s$).'),
  ('A #w%s$ lays in the ground.', '#w%s$ ����� �� �����.'),
  ('You open the barrel.', '�� ������ �����.'),
  ('There is a barrel.', '�����.'),
  ('There is a closed barrel.', '�������� �����.'),
  ('A locked door.', '�������� �����.'),
  ('A door.', '�����.'),
  ('Congratulations!', '�����������!'), // 060
  ('You have advanced to level %d!', '�� �������� �� ������� %d!'),
  ('You have reached a new character level!', '�� �������� �� ����� �������!'),
  ('Choose an attribute to improve...', '������ ������� ��� ��������� ...'),
  ('Gained %d exp.', '��������� %d �����.'),
  ('You are now a level %d!', '�� ������ �� ������ %d!'),
  ('Radius', '�����'),
  ('Not enought mana!', '������������ ����!'),
  ('The %s hits you %d.', '%s ������� ���� (%d).'),
  ('You hit the %s %d.', '%s �������� ���� %d.'),
  ('The poison takes %d HP (%d m).', '�� �������� %d HP (%d m).'), // 070
  ('You are healed!', '�� ���������!'),
  ('You die.', '�� ����.'),
  ('The %s dies.', '%s ��������.'),
  ('You miss the %s.', '%s ������� �����.'),
  ('The %s poison you %d (%d m).', '%s ������� ���� %d (%d �).'),
  ('The %s misses you!', '%s �������������!'),
  ('The trap hits you %d.', '������� ���������� ���� %d.'),
  ('The trap misses you!', '�� ������� ����� �������!'),
  ('Cures poison.', '����� ����������.'),
  ('Instantly Regain Life and Mana.', '���������� ��� �������� � ����.'), // 080
  ('Heals %d hit points.', '��������������� %d ��������.'),
  ('Restores %d spell points.', '��������������� %d ����.'),
  ('There is a stone staircase leading upwards here (%s).', '�������� ��������, ������� ����� (%s).'),
  ('There is a stone staircase leading down here (%s).', '�������� ��������, ������� ���� (%s).'),
  ('There is an empty well.', '������ �������.'),
  ('There is a well.', '�������.'),
  ('There is a closed chest.', '�������� ������.'),
  ('There is a locked chest.', '�������� �� ���� ������.'),
  ('Repair Item', '��������������� �������'),
  ('Drop', '���������'), // 090
  ('You drop a %s.', '�� �������� %s.'),
  ('You drop a %s (%d).', '�� �������� %s (%d).'),
  ('Drink', '������'),
  ('You drink a %s.', '�� ����� %s.'),
  ('Wear/Wield', '�����/�����'), // ���������
  ('You equip a %s.', '�� �����/���� %s.'),
  ('You unequip a %s.', '�� ����/������� %s.'),  
  ('Use', '������������'),
  ('Read', '���������'),
  ('You read a %s.', '�� �������� %s.'), // 100
  ('There are many items lays in the barrel (#w%s$).', '��������� ��������� ����� � ����� (#w%s$).'),
  ('A #w%s$ lays in the barrel.', '#w%s$ ����� � �����.'),
  ('Trap', '�������'),
  ('The trap hits the %s %d.', '%s �������� ���� %d �� �������.'),
  ('You are poison %d (%d m).', '�� �������� %d (%d �).'),
  ('The trap hits the %s %d.', '%s ������ ���� %d �� �������.'),
  ('The %s hits you %d.', '%s ���������� ���� ���� (%d).'),
  ('You hit the %s %d.', '%s ������ ���� %d.'), 
  ('You find then hidden trap.', '�� ����� ������� �������.'),
  ('Area', '�������'), // 110
  ('', ''),
  ('Allows you to open the lock.', '��������� ������� �����.'),
  ('', ''),
  ('', ''),
  ('Shows enemies. Radius -', '���������� ������. ����� -'),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''), // 120
  ('Look', '���������'),
  ('Shoot', '��������'),
  ('Wait', '�����'),
  ('Rest', '���������'),
  ('Help', '�������'),
  ('Take screenshot', '������� ��������'),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''), // 130
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('Date/Time', '����/�����'), // 140
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('You are blinded.', '�� ��������.'),
  ('', ''),
  ('', ''), // 150
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''), // 160
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''), // 170
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('Race', '����'), // 180
  ('select race', '����� ����'),
  ('Human', '�������'),
  ('Halfling', '��������'),
  ('Gnome', '����'),
  ('Gray Dwarf', '����� �����'),
  ('Orc', '���'),
  ('High Elf', '������� ����'),    
  ('Night Elf', '������ ����'),
  ('Dark Elf', '������ ����'),
  ('Deep Dwarf', '��������� �����'), // 190
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('Skills', '������'), // 200
  ('Daggers and knives', '������� � ����'),
  ('Axes', '������'),
  ('Swords', '����'),
  ('Maces and Mauls', '������ � ������'),
  ('Spears', '�����'),
  ('Bows', '����'),
  ('Crossbows', '��������'),
  ('Shield use', '����'),
  ('Detect traps', '���a������ �������'),
  ('Magic', '�����'), // 210
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('You define a scroll:', '�� ��������� ������:'), // 220
  ('Scroll', '������'),
  ('Potion', '�������'),
  ('Instantly regenerates all of a character''s life.', '��������������� ��� ��������.'),
  ('Instantly regenerates all of a character''s mana.', '��������������� ��� ����.'),
  ('You define a potion:', '�� ��������� �����:'), // 225
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('Removing all effects.', '������ ���� ��������.'), // 230
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('Not Identified!', '�� ���������!'), // 240
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('Golden', '�������'), // 250
  ('Indigo', '����������'),
  ('Jade', '�������'),
  ('Azure', '�����'),
  ('Light', '�������'),
  ('Dark', '������'),
  ('Gray', '�����'),
  ('Brown', '����������'),     
  ('Black', '������'),
  ('White', '�����'),
  ('Blue', '�������'), // 260
  ('Yellow', '������'),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('Repair item.', '��������������� ������� ���������.'), // 270
  ('Repair all items in inventory.', '����������� ��� �������� � ���������.'),
  ('', '������������� ������ � ������ �����.'),
  ('', '������������� ������� � ������.'),
  ('Identify all items in inventory.', '�������������� ��� �������� � ���������.'),
  ('Open portal.', '��������� ������.'),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('Need Skill "Magic"', '����� ����� "�����"'), // 280
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('Entering The', '�� ������� �'), // 290
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),
  ('', ''),

  //
  ('#', '#'));

const
  ItemName: array [0..ItemsCount, 0..2] of string = (

  ('GOLDCOINS',       'Gold Coin',                    '������'),
  ('KEY',             'Key',                          '����'),
  ('ORE',             'Ore',                          '����'),
  ('MINIPOTION',      'Empty Bottle',                 '������ ������'),
  ('MINILIFEPOTION',  'Minor Healing Potion',         '����� ������� ��������'),
  ('MINIMANAPOTION',  'Minor Mana Potion',            '����� ������� ����'),
  ('MINIMEGAPOTION',  'Minor Rejuvenation Potion',    '����� ������� ��������������'),
  ('MINIOILPOTION',   'Minor Oil Potion',             '����� ��������� �����'),
  ('NORMPOTION',      'Empty Bottle',                 '������ ������'),
  ('NORMLIFEPOTION',  'Light Healing Potion',         '������ ������� ��������'),
  ('NORMMANAPOTION',  'Light Mana Potion',            '������ ������� ����'),
  ('NORMMEGAPOTION',  'Light Rejuvenation Potion',    '������ ������� ��������������'),
  ('NORMOILPOTION',   'Light Oil Potion',             '������ ��������� �����'),
  ('BASEPOTION',      'Empty Bottle',                 '������ ������'),
  ('BASELIFEPOTION',  'Healing Potion',               '������� ��������'),
  ('BASEMANAPOTION',  'Mana Potion',                  '������� ����'),
  ('BASEMEGAPOTION',  'Rejuvenation Potion',          '������� ��������������'),
  ('BASEOILPOTION',   'Oil Potion',                   '��������� �����'),
  ('NANOPOTION',      'Empty Bottle',                 '������ ������'),
  ('NANOLIFEPOTION',  'Greater Healing Potion',       '������� ������� ��������'),
  ('NANOMANAPOTION',  'Greater Mana Potion',          '������� ������� ����'),
  ('NANOMEGAPOTION',  'Greater Rejuvenation Potion',  '������� ������� ��������������'),
  ('NANOOILPOTION',   'Greater Oil Potion',           '������� ��������� �����'),
  ('BIGPOTION',       'Empty Bottle',                 '������ ������'),
  ('BIGLIFEPOTION',   'Super Healing Potion',         '����� ������� ��������'),
  ('BIGMANAPOTION',   'Super Mana Potion',            '����� ������� ����'),
  ('BIGMEGAPOTION',   'Super Rejuvenation Potion',    '����� ������� ��������������'),
  ('BIGOILPOTION',    'Super Oil Potion',             '����� ��������� �����'),
  ('SLEDGEHAMMER',    'Sledge Hammer',                '��������� M����'),
  ('STONEHAMMER',     'Stone Hammer',                 '�������� �����'),
  ('HATCHET',         'Hatchet',                      '����� ��������'),
  ('WARAXE',          'War Axe',                      '����� �����'),
  ('LARGEAXE',        'Large Axe',                    '������� �����'),
  ('BROADAXE',        'Broad Axe',                    'Broad Axe'),
  ('BATTLEAXE',       'Battle Axe',                   '������ �����'),
  ('GREATAXE',        'Great Axe',                    '������� �����'),
  ('GIANTAXE',        'Giant Axe',                    '���������� �����'),
  ('SHORTSWORD',      'Short Sword',                  '�������� ���'),
  ('SMALLSHIELD',     'Small Shield',                 '����� ���'),
  ('LARGESHIELD',     'Large Shield',                 '������� ���'),
  ('TOWERSHIELD',     'Tower Shield',                 '�������� ���'),
  ('GOTHICSHIELD',    'Gothic Shield',                '���������� ���'),
  ('LEATHERARMOR',    'Leather Armor',                '������� ������'),
  ('STUDDEDLEATHER',  'Studded Leather',              '�������� ������'),
  ('RINGMAIL',        'Ring Mail',                    '���������� ������'),
  ('SCALEMAIL',       'Scale Mail',                   '���������� ������'),
  ('CAP',             'Cap',                          '����'),
  ('HELM',            'Helm',                         '����'),
  ('MESHBOOTS',       'Mesh Boots',                   '������� ������'),
  ('HEAVYBOOTS',      'Heavy Boots',                  '������� ������'),
  ('EARTHRING',       'Earth Ring',                   '������ �����'),
  ('FIRERING',        'Fire Ring',                    '������ ����'),
  ('TAMARILIS',       'Tamarilis',                    'Ta�������'),
  ('ARROW',           'Quiver of Arrows',             '������ �����'),  
  ('HUNTBOW',         'Hunter''s Bow',                '��� ��������'),  
  ('LONGBOW',         'Long Bow',                     '������� ���'),  
  ('BOLT',            'Case of Bolts',                '������ ������'),  
  ('LIGHTCROSSBOW',   'Light Crossbow',               '������ �������'),  
  ('SIEGECROSSBOW',   'Siege Crossow',                '������� �������'),
  // Scrolls
  ('SCROLLA',         'Scroll of Summon',             '������ �������'),
  ('SCROLLB',         'Scroll of Power Cure',         '������ ��������������'),
  ('SCROLLC',         'Scroll of Teleportation',      '������ ������������'),
  ('SCROLLD',         'Scroll of Unlocking',          '������ ���������'),
  ('SCROLLE',         'Scroll of Identify',           '������ �������������'),
  ('SCROLLF',         'Scroll of Portal',             '������ �������'),
  ('SCROLLG',         'Scroll of Wizard Eye',         '������ ����� �������'),
  ('SCROLLH',         'Scroll of Dispel Effects',     '������ ������ ��������'),
  ('SCROLLI',         'Scroll of Repair',             '������ �������'),
  // Potions
  ('POTIONA',         'Antidote Potion',              '������� �����������'),
  ('POTIONB',         'Full Healing Potion',          '������� ������� ��������'),
  ('POTIONC',         'Full Mana Potion',             '������� ������ ����'),
  ('POTIOND',         'Full Rejuvenation Potion',     '������� ������� ��������������'),
  ('POTIONE',         'Strength Potion',              '������� ����'),
  ('POTIONF',         'Dexterity Potion',             '������� ��������'),
  ('POTIONG',         'Will Potion',                  '������� ����'),
  ('POTIONH',         'Speed Potion',                 '������� �����������'),
  // Bag of Stones
  //
  ('#', '#', '#'));                 

const
  CreatureName: array [0..CreaturesCount, 0..2] of string = (
  
  ('BIGSPIDER',       'Big Spider',       '������� ����'),
  ('REDSPIDER',       'Red Spider',       '�������� ����'),
  ('CAVESPIDER',      'Cave Spider',      '�������� ����'),
  ('GOBLIN',          'Goblin',           '������'),
  ('DARKGOBLIN',      'Dark Goblin',      '������ ������'),
  ('CAVEGOBLIN',      'Cave Goblin',      '�������� ������'),
  ('SLUG',            'Slug',             '�������'),
  ('BIGSLIME',        'Big Slime',        '������� ����� �����'),
  ('SLIME',           'Slime',            '����� �����'),
  ('SMALLSLIME',      'Small Slime',      '��������� ����� �����'),
  ('BAT',             'Bat',              '������'),
  ('BLUEBAT',         'Blue Bat',         '�������� ������'),
  ('CAVEBAT',         'Cave Bat',         '�������� ������'),
  ('SKELETON',        'Skeleton',         '������'),
  ('SKELETONMAGE',    'Skeleton Mage',    '������ ���'),
  ('MAGAN',           'Magan',            '�����'),
  ('DARKEYE',         'Dark Eye',         '������ ����'),
  ('NECROMANCER',     'Necromancer',      '���������'),
  ('TUORG',           'Tuorg',            '�����'),
  //
  ('#', '#', '#'));

const
  MapName: array [0..MapsCount, 0..2] of string = (

//  ('DARKWOOD',        'The Dark Wood',    '������ ���'),
//  ('BLACKMARSH',      'Black Marsh',      '������ ����'),

  // Spider Forest
  ('SPIDERFOREST',    'Spider Forest',           '��� ������'),
  ('SPIDERCAVERN1',   'Spider Cavern Level 1',   '�����{�/y} ������ ������� 1'),
  ('SPIDERCAVERN2',   'Spider Cavern Level 2',   '�����{�/y} ������ ������� 2'),

  // The Underground Passage
  ('THEUNDERGROUNDP', 'The Underground Passage', '��������� ������'),

  // Valley of Bear
  ('VALLEYOFBEAR',    'Valley of Bear',          '�����{�/y} ��������'),
  ('INTERNALPIT1',    'Internal Pit Level 1',    '��{�/y} ������� 1'),
  ('INTERNALPIT2',    'Internal Pit Level 2',    '��{�/y} ������� 2'),

  // Stony Field
  ('STONYFIELD',      'Stony Field',             '�������� ����'),

  // Twilight Forest
//  ('TWILIGHTFOREST',  'Twilight Forest',         '���������� ���'),

  //
  ('#', '#', '#'),
  ('#', '#', '#'));
  
function GetLang(ID: Word): string; overload;
function GetLang(Eng, Rus: string): string; overload;
function GetItemLang(ID: string): string;
function GetCreatureLang(ID: string): string;
function GetMapLang(ID: string; G: Boolean = False): string; overload;
function GetMapLang(ID: Byte; G: Boolean = False): string; overload;
function LanguageName: string;
procedure ChangeLanguage;

var
  LangID: Byte = 0;

implementation

uses SysUtils, uUtils, uCreatures;

function GetLang(ID: Word): string;
begin
  Result := Lang[ID][LangID];
end;

function GetLang(Eng, Rus: string): string;
begin
  if (LangID = 0) then Result := Eng else Result := Rus;
end;

function GetMsg(AString: string; Gender: Boolean): string;
var
  I: Integer;
  SX, RX, S1, S2: string;
  RF: Byte;
begin
  SX := '';
  RX := '';
  RF := 0;
  for I := 1 to Length(AString) do
  begin
    case AString[I] of
      '{': begin
             RF := 1;
             Continue;
           end;
      '}': RF := 2;
    end;
    case RF of
      0: RX := RX + AString[I];
      1: SX := SX + AString[I];
      2: begin
           S1 := GetStrKey('/',SX);
           S2 := GetStrValue('/',SX);
           SX := '';
           RF := 0;
           if Gender then RX := RX + S2 else RX := RX + S1;
         end;
    end;
  end;
  Result := RX;
end;


function GetMapLang(ID: string; G: Boolean = False): string;
var
  I: Byte;
begin
  Result := '';
  for I := 0 to MapsCount - 1 do
    if (MapName[I][0] = ID) then
      Result := MapName[I][LangID + 1];
  Result := GetMsg(Result, G);
end;

function GetMapLang(ID: Byte; G: Boolean = False): string;
begin
  if (ID > MapsCount - 1) then ID := MapsCount - 1;
  Result := MapName[ID][LangID + 1];
  Result := GetMsg(Result, G);
end;

function GetItemLang(ID: string): string;
var
  I, T, Idx: Integer;
  P: string;
begin
  Result := '';
  //
  Idx := Items.ItemIndex(ID);
  // Scrolls and Potions
  T := DungeonItems[Idx].ColorTag;
  with Creatures.PC do
  begin
    if (T > 0) and (DungeonItems[Idx].Category = dsPotion) and not Potions.IsDefined(T) then
    begin
      Result := '#r' + Potions.GetColorName(T) + #32 + GetLang(222) + '$';
      Exit;
    end;
    if (T > 0) and (DungeonItems[Idx].Category = dsScroll) and not Scrolls.IsDefined(T) then
    begin
      Result := '#r' + GetLang(221) + '$' + #32 + '"#b' + Scrolls.GetName(T) + '$"';
      Exit;
    end;
  end;
  // Items
  case DungeonItems[Idx].Category of
    dsPotion: P := '#g';
    dsScroll: P := '#b';
    else      P := '#w';
  end;
  for I := 0 to ItemsCount - 1 do
    if (ItemName[I][0] = ID) then
      Result := P + ItemName[I][LangID + 1] + '$';
  //
//  Result := Result + #32 + '''' + DungeonItems[Items.ItemIndex(ID)].Sprite + '''';
end;

function GetCreatureLang(ID: string): string;
var
  I: Byte;
begin
  Result := '';
  for I := 0 to CreaturesCount - 1 do
    if (CreatureName[I][0] = ID) then
      Result := CreatureName[I][LangID + 1];
end;

function LanguageName: string; 
begin
  case LangID of
    1: Result := 'Russian';
    else Result := 'English';
  end;
end;

procedure ChangeLanguage;
begin
  if (LangID = 0) then LangID := 1 else LangID := 0;
end;

end.
