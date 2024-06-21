--if GetLocale() ~= "koKR" then return end
-- 한국어 로컬 파일입니다. 애드온에서 직접 사용하는 문자열은 이 파일에서 정의합니다.
-- 2021.05.25 v.2.0(TBC) NYRR Edition. by 로크홀라 호드 NYRR

FP_C_TITLE = "FIND PARTY(CATA) |cffff0000" ..GetAddOnMetadata("FindParty", "version")

FP_DEFAULT_PARTY_CHANNEL = "파티찾기"
FP_DEFAULT_WHISPER = "LFG %s %s!"

FP_TEXT_STOPPED = "|cffff0000(OFF)"
FP_TEXT_EXCEPTION = "광고삭제"
FP_TEXT_EXCEPTION_DELETE = "삭제초기화"
FP_TEXT_WHISPER = "귓말창열기"
FP_TEXT_WHO = "파티장정보"
FP_TEXT_HELP = "도움말"
FP_TEXT_APPLY = "파티신청"
--20.08.29 aim ver fixed
--FP_TEXT_START_AD = "광고시작"
--FP_TEXT_STOP_AD = "광고중단"
FP_TEXT_APPLY_FILTER = "필터적용"
FP_TEXT_IGNORE = "삭제적용"
FP_TEXT_WH_LABEL = "귓속말 내용 "
--20.08.29 aim ver fixed
--FP_TEXT_AD_LABEL = "광고글 문구 : "
FP_TEXT_FILTER_LABEL = "필터링 단어 "
--20.08.29 aim ver fixed
FP_TEXT_IGNORE_LABEL = "차단할 단어 "
FP_TEXT_CLOSE = "닫기"
FP_TEXT_LIST_LABEL = "광고 문구"

FP_DUNGEONFILTER_RESETALL = "* 선택 던전 모두 삭제 *"
FP_DUNGEONFILTER_SINGLE = "던전: %s"
FP_DUNGEONFILTER_MULTI = "던전: %d개 선택"
FP_DUNGEONFILTER_NOT_FILTERED = "던전: 모두 보기"
FP_DUNGEONFILTER_NONE = "없음"

FP_TOOLTIP_CLOSE = "창 닫기"
FP_TOOLTIP_MAXMIZE = "최대화"
FP_TOOLTIP_MINIMIZE = "최소화"
FP_TOOLTIP_DECREASE = "1줄 줄이기"
FP_TOOLTIP_INCREASE = "1줄 늘리기"
FP_TOOLTIP_OPTION = "설정"
FP_TOOLTIP_SORT_TIME = "시간순 정렬"
FP_TOOLTIP_ACTIVATE_ON = "ON\n클릭하면 비활성화"
FP_TOOLTIP_ACTIVATE_OFF = "OFF\n클릭하면 활성화"
--20.08.29 aim ver fixed
--[[
FP_TOOLTIP_AD_ON = "파티 광고중\n클릭하면 중단"
FP_TOOLTIP_AD_OFF = "클릭하면 파티 광고 시작"
]]
FP_TOOLTIP_POPUP_ON = "팝업 및 소리 작동중\n클릭하면 중단"
FP_TOOLTIP_POPUP_OFF = "팝업 및 소리 중단됨"
FP_TOOLTIP_DUNGEON_FILTER = "왼쪽 클릭 : 정렬/관심 던전 보기\n오른쪽 클릭 : 관심 던전 선택\n\n- 관심 던전 목록 -\n"
FP_TOOLTIP_CLASS_FILTER = "왼쪽 클릭 : 내 직업 골라냄\n오른쪽 클릭 : 관심 직업만 골라냄\n선택 : "
FP_TOOLTIP_SHORTCUT_ALT = "빠른귓말 : 해당 광고 선택후 광고 Alt + 클릭"
FP_TOOLTIP_SHORTCUT_ALT_RIGHT = "단축키 : Alt + 우클릭"
FP_TOOLTIP_SHORTCUT_CTRL = "단축키 : Ctrl + 클릭"
FP_TOOLTIP_SHORTCUT_SHIFT = "단축키 : Shift + 클릭"
FP_TOOLTIP_IGNORE = "광고 리스트에서 제외할 단어 입력후 적용버튼클릭 또는 엔터 / 쉼표로 여러단어 차단가능 (갑니다,가요,얍)"
FP_TOOLTIP_MINIMAP = {
	"FIND PARTY CLASSIC" ..GetAddOnMetadata("FindParty", "version"),
	"\n",
	"\n|cff00ff00왼쪽 클릭: |r파티 찾기 도우미 열기",
	"\n|cff00ff00오른쪽 클릭: |r설정",
	"\n|cff00ff00Alt + 클릭: |r아이콘 고정/해제";
	--"\n|cff00ff00Ctrl + 클릭: |r광고 시작/정지";
	"\n|cff00ff00Shift + 왼쪽 클릭: |r애드온 작동/작동정지";
	"\n";
	"\n현재 설정:";
}
FP_TOOLTIP_MINIMAP_ON = " 작동중"
FP_TOOLTIP_MINIMAP_OFF = " 사용중지"
--FP_TOOLTIP_MINIMAP_AD = " 광고중"
FP_TOOLTIP_MINIMAP_LOCK = " 아이콘고정"
FP_TOOLTIP_MINIMAP_NOLOCK = "\n아이콘 이동가능(왼쪽 드래그)"

FP_MESSAGE_NEWVERSION_RESET = "새로 설치 또는 구 버전에서 업그레이드 하셨습니다."
FP_MESSAGE_ACTIVE = "v%s - 파티 찾기 도우미 켜짐!"
FP_MESSAGE_DEACTIVE = "v%s - 파티 찾기 도우미 꺼짐"
FP_MESSAGE_POPUP_ACTIVE = "파티 목록이 갱신될때 팝업 및 알람 켜짐"
FP_MESSAGE_POPUP_DEACTIVE = "팝업 및 알람 꺼짐"
FP_MESSAGE_RESETALL = "설정 초기화 (DEFAULT)"
FP_MESSAGE_DUNGEON_RESET = "선택된 파티 목록이 삭제됨"
--FP_MESSAGE_START_AD = "파티 광고를 시작합니다."
--FP_MESSAGE_STOP_AD = "파티 광고를 중단합니다."
--FP_MESSAGE_NO_AD_TEXT = "광고글을 입력하셔야 합니다."
FP_MESSAGE_EXCEPTION = "%s 님의 광고를 목록에서 차단 합니다."
FP_MESSAGE_CLEAR_EXCEPTION = "차단 광고목록을 초기화 하였습니다!. 이제 모든 목록이 표시됩니다."
FP_MESSAGE_NOTARGET = "먼저 목록을 선택해 주세요!"
FP_MESSAGE_ICON_LOCK = "미니맵 아이콘을 이동할 수 없도록 고정합니다."
FP_MESSAGE_ICON_UNLOCK = "이제 미니맵 아이콘을 이동할 수 있습니다."
FP_MESSAGE_START_DUNGEON_FILTER = "선택한 던전만 목록에 표시합니다."
FP_MESSAGE_STOP_DUNGEON_FILTER = "모든 던전을 목록에 표시합니다."
FP_MESSAGE_APPLY_CUSTOM_FILTER = "사용자가 입력한 단어만 필터링하여 보여줍니다."
FP_MESSAGE_CUSTOM_IGNORE = "제외할 단어가 들어있는 광고를 표시하지 않습니다."
FP_MESSAGE_CUSTOM_IGNORE_RESET = "광고목록에서 제외할 단어를 초기화 하였습니다. 이제 모든 광고가 표시됩니다."

FP_OPTIONS_CHANNEL = "채널 지정"
--FP_OPTIONS_INTERVAL = "광고 주기"
FP_OPTIONS_VALID = "광고 유지시간"
FP_OPTIONS_FONTSIZE = "글자 크기"
FP_OPTIONS_SCALE = "창 크기"
FP_OPTIONS_COLOR = "창 색상"
FP_OPTIONS_ICON = "미니맵 아이콘 보기"
FP_OPTIONS_ESC = "ESC로 창 닫기"

FP_OPTIONS_RIGHTBUTTON = "Ctrl+우클릭 파티 신청"
FP_OPTIONS_NORAID = "레이드 던전에 있을때 비활성화"
--FP_OPTIONS_NOPARTY = "던전 내부에 있을때 비활성화"
FP_OPTIONS_NOPVP = "전장/투기장에 있을때 비활성화"
FP_OPTIONS_RESET = "설정 초기화"
FP_OPTIONS_RESETPOS = "창 위치"
FP_OPTIONS_RESETSIZE = "창 크기"
FP_OPTIONS_RESETALL = "모든 설정 초기화"

FP_HELPS = {
	"|cffffffff 파티 찾기 도우미 (classic fanfix BIIMS edition) |cffffff00메뉴얼",
	" ",	
	"|cffffff00  * 하단 바",
	"|cffffff00    1. 선택 : 광고목록 좌 클릭",
	"|cffffff00    2. 파티 신청 : 목록 선택 후, Alt + 좌 클릭",
	"|cffffff00    3. 파티장 정보 : Shift + 좌 클릭",
	"|cffffff00    4. 크기조정 : 우측 하단 삼각아이콘 드래그",
	" ",
	"|cffffff00  * 설 정",
	"|cffffff00    1. 채널 지정 : 선택된 채널에서만 광고가 필터링 됩니다.",
	"|cffffff00    2. 광고 유지 시간 : 목록에 유지할 시간 선택(초)",
	"|cffffff00    3. 글자 크기 : 목록의 글자 크기 조절",
	"|cffffff00    4. 창 크기 : 전체 UI 크기 / default 1",
	"|cffffff00    5. 미니맵 아이콘 보기 : 미니맵 아이콘 표시/숨김",
	"|cffffff00     - 숨겨진 상태에서는 UI단축키 지정 또는 /fp, /레",
	"|cffffff00    6. ESC로 창 닫기 : ESC를 눌러 창 닫기 선택/해제",
	"|cffffff00    7. Ctrl + 마우스 우 클릭 빠른 파티 신청",
	"|cffffff00     : 목록에서 Ctrl + 우클릭으로도 빠른 파티신청 가능 선택/해제",
	"|cffffff00    8. 레이드 및 전장 내부에서 비활성화",
	"|cffffff00     : [] 인스턴스 내부일때 애드온을 비활성화 선택/해제",
	"|cffffff00     : 낮은 사양일 때 다소 성능향상이 있을수 있음",
	" ",
	"|cffffff00  * 초기 설정법",
	"|cffffff00    -> 1. 각 서버별 파티찾기 채널에 입장 ( /입장 파티찾기 )",
	"|cffffff00    -> 2. 설정(우측상단 아이콘) > 채널 선택 > 파티찾기",
	" ",
	"|cffffff00  * 파티찾기 애드온은, 단축키 메뉴에 UI 표시 단축키를 지원합니다.",
	"|cffffff00    -> 1. 기본 단축키 설정 (화면에서 esc)",
	"|cffffff00    -> 2. 애드온 선택 후, 파티 찾기 도우미 에서 단축키 변경후 확인.",	
	" ",	
	"|cffffff00---- 제작자 : 아젤리아(성기사 @ 달라란)",
	"|cffffff00---- 수정자(8.3) : 법사세린(마법사 @ 아즈샤라), 아리보리(마법사 @ 아즈샤라)", 
	"|cffffff00---- 수정자(WotLK 3.1) BIIMS Edition : Muzq(전사 @ 로크홀라)",
	"|cffffff00---- version |cffff0000"..GetAddOnMetadata("FindParty", "version"),	
	"|cffffff00---- DISCORD FORUM   https://discord.gg/2y5TBsg",
	"|cffffffff      * 해당 버전은, 정식 업데이트 버전이 아닌 개인 수정본 배포 입니다.",	
}

BINDING_HEADER_FINDPARTY = "파티 찾기 도우미";
BINDING_NAME_FP_TOGGLE = "파티 찾기 도우미 열기";
