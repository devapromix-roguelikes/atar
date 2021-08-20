program AtarRL;

{ 
[16:18:10] Konstantin Ramenskii: 10 �����. ����� �������� ���� � ���, ��� �� 
20 ����� � ������� � ������������ ������ �������� (������, ����� � ����������, ���� ������� +100500 ��, �� ���� ���, ���� ������ + 1 ����������� ������� ��� ��� ��������� �����)
30 ����� �������� � ��������. ��� 2-3 �� ������� ����+������ ���� �� ��������� ����+����� ����.
40 ������ � �������.
50 ���� ���� ���� ���� (��� ������ ������ ������)
60 ������� ����, ����������� ������ � ������� �����.
70 ���� + � ����� � ��������� ��� �� �����(��� ��������, ����� ������ �� ����� ���� ���������� ��).
80 GoTo 20
}

{167 �.}
{
v. 0.01
* ��������� ����������.
* ����� (���� 2 ���� - ����� � �������, ���� ��). �� 3 ������������� ������� ��������.
* ������� ���.
* ������ (�������).
* �������� � ����������.
* ������� ��������.

v. 0.02
* ������� � ����� ������� - ��������.
* �������� �� ���� � �� �������� �� ��. G (��������� ��� ���).
* ��������� ������ � �������� ����������.
* ������������� ��� ������ ������.

v. 0.03
* ��������� ������� ���������.
* ������ ���� ������������ �� ���������.    
* ��������� ����� �������� � ����.
* ��������� ����� �����: ������, ������� � �������-����.
* ������������� ��� � �����.
* ���������� ������ ������.
* ���� �������������.
* ����� -r (������ ����, ��������, -r800x600) � -d (���������� �����)

v. 0.04
* ��������� ��������: �����, ������������� ����� (���������� �����, �����).
* ��������� ������� ���� �����.
* ��������� ������� (����� ����� ���������).
* ��������� ���������� (�����, ����� �����, ����� � �. �.).
* �������� ����� ����: Magan - ���������� ��������, ��������� ����.
* ��������� ����� ������� ���������� ��������� � ������ �����.
* ��������� ����� ��������� ���������� � ���������.
* ����� ���� -s ������ ������ ������ � ����.

v. 0.05   
* ��������� ����� � �����������.
* ���� ���������� �� ������� ����.
* ������ ������ ����� ������ �� ����.
* ��������� ������������ ���������.
* ����� ���� -l ��������� ������������ ���������.
* ��������� ����� ���������� (������, �����������).
* �������� ������ ������������ ��������.
* ���� -a ��������� � ���� ��� �������.
* ��������� ����� �����: Dark Eye, Necromancer.

v. 0.06
* ��������� ����� ��������: ���������.
* ��������� ����� �������� � ������ ����� ��� ������������.
* �������� ������ ������������ ��������.
* ��������� ����� �����: Slime, Tuorg.
* ��������� ����� ������, ������ � �������.  
* ���� ������������ � ����.
* ��������� �����.
* ��������� ��������� ������ ��� ������� ����������.
* �������� ������������� ���, ����, �������� � ������� Shoot � Look.
* � ���������� ����� ������� ������ ������: 32, 48 ��� 64.

v. 0.07
* ��������� ��������. ���� ������������� � AtarRL.
* ��������� �����, ��������� � ������� Wait � Rest.
* ��������� ������� (F1) �� �������� ����������.
* ��������� ���� � ����� ������ ���� ���������.
* ��������� ������. ����� ��������� ������� ������.
* ��������� ������� "����������� �������" - ������� D.
* ��������� ��������� ���������� ������.

v. 0.08
* ������� �������� �� �������� � ���������.
* ��������� ����������, �������� ������� � ������� �������.
* ��������� ����� ���������� ������.
* ��������� ����� ��������.
* ���������� ����� ������ ���� ���������.

v. 0.09
* �������� ������ "���� �������", ������������ ��������� �������� �� ���������.
* �������� ������ "������ ��������", ��������� ��� ������� � ���������, � ��� ����� � ���������� :)
* �������� ������ "�������� ���"; ����������� ��� �������� � ���������.
}

{%ToDo 'AtarRL.todo'}

uses
  uLostMemory in 'uLostMemory.pas',
  Windows,
  Forms,
  uMain in 'uMain.pas' {fMain},
  uZip in 'uZip.pas',
  uScenes in 'uScenes.pas',
  uSceneGame in 'uSceneGame.pas',
  uCreatures in 'uCreatures.pas',
  uGraph in 'uGraph.pas',
  uMap in 'uMap.pas',
  uSceneMenu in 'uSceneMenu.pas',
  uScene in 'uScene.pas',
  uUtils in 'uUtils.pas',
  uBox in 'uBox.pas',
  uItem in 'uItem.pas',
  uTrap in 'uTrap.pas',
  uScript in 'uScript.pas',
  uTile in 'uTile.pas',
  uScreenshot in 'uScreenshot.pas',
  uLog in 'uLog.pas',
  uSceneAbout in 'uSceneAbout.pas',
  uGame in 'uGame.pas',
  uSceneName in 'uSceneName.pas',
  uSceneRecords in 'uSceneRecords.pas',
  uSceneLoad in 'uSceneLoad.pas',
  uScores in 'uScores.pas',
  uColor in 'uColor.pas',
  uName in 'uName.pas',
  uMapGenerator in 'uMapGenerator.pas',
  uAStar in 'uAStar.pas',
  uError in 'uError.pas',
  uSceneLevelUp in 'uSceneLevelUp.pas',
  uInv in 'uInv.pas',
  uSceneInv in 'uSceneInv.pas',
  uSceneItem in 'uSceneItem.pas',
  uProjectiles in 'uProjectiles.pas',
  uTempSys in 'uTempSys.pas',
  uSceneItems in 'uSceneItems.pas',
  uDecorator in 'uDecorator.pas',
  uSceneChar in 'uSceneChar.pas',
  uSceneSettings in 'uSceneSettings.pas',
  uSettings in 'uSettings.pas',
  uLang in 'uLang.pas',
  uLight in 'uLight.pas',
  uNews in 'uNews.pas',
  uEffect in 'uEffect.pas',
  uLook in 'uLook.pas',
  uResources in 'uResources.pas',
  uDocs in 'uDocs.pas',
  uSceneBaseMenu in 'uSceneBaseMenu.pas',
  uSceneBaseGame in 'uSceneBaseGame.pas',
  uTime in 'uTime.pas',
  uSceneHelp in 'uSceneHelp.pas',
  uSceneRace in 'uSceneRace.pas',
  uRace in 'uRace.pas',
  uSkill in 'uSkill.pas',
  uEntity in 'uEntity.pas',
  uBar in 'uBar.pas',
  uMiniMap in 'uMiniMap.pas',
  uCustomMap in 'uCustomMap.pas',
  uRandItems in 'uRandItems.pas',
  uSceneIntro in 'uSceneIntro.pas',
  uPC in 'uPC.pas',
  uBaseCreature in 'uBaseCreature.pas',
  uCreature in 'uCreature.pas',
  uEnemy in 'uEnemy.pas',
  uFormulas in 'uFormulas.pas';

{$R *.res}

var UniqueMapping: THandle;

begin
  UniqueMapping := CreateFileMapping($ffffffff,
    nil, PAGE_READONLY, 0, 32,'m6gh7jq2lb6mbpfrwchmaltdr45');
  if UniqueMapping = 0 then Halt else
    if GetLastError = ERROR_ALREADY_EXISTS then Halt;
  Application.Initialize;
  Application.Title := 'AtarRL';
  Application.CreateForm(TfMain, fMain);
  if ParamCraftDoc then Items.MakeCraftDoc;
  Application.Run;
end.
