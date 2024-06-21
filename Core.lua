--if GetLocale() ~= "koKR" then return end
-------------------------------------------
-- 2021/05/21 TBC NYRR Edition v2.0(classic) by 로크홀라 NYRR

-- 각종 필터링 정보를 담고 있는 파일입니다.
-- 패치로 새로운 던전이 추가되거나 난이도가 추가될 경우 이 파일에서 수정하시면 됩니다.
-- 난이도 추가시에는 FindParty.lua 파일에서 별도 처리가 필요할 수도 있습니다.

-- ===============================
-- 난이도 분류 키워드를 정의합니다.
-- keywords는 파티모집 문구에 해당 문자열이 있을 경우 해당 난이도로 분류할 수 있도록 정의하는 부분입니다.
-- 빠른출발파티, 오늘출발파티, 일반파티 . . 기타 인스던트 던전&레이드 세분화

FP_DIFFICULTY_KEYWORDS = {
	[1] = {
		name = "full",
		dbname = "full",
		postfix = " [FULL]", --
		color = {0.92, 0, 0},		
		keywords = {"풀", "풀파"},
	},	
	[2] = {
		name = "10인",
		dbname = "10f", 
		postfix = "|cff5DFF00 [10]",
		color = {1, 1, 1}, 
		keywords = {"10"},
	},		
	[3] = {
		name = "25인",
		dbname = "25f", 
		postfix = "|cffF59801 [25]", 
		color = {1, 1, 1}, 
		keywords = {"25"},
	},	
	[4] = {
		name = "25인 영웅",
		dbname = "25h", 
		postfix = "|cFFFE0000 [25H]",
		color = {1, 0.5, 0.3}, --r3
		keywords = {},
	},	
	[5] = {
		name = "일반",
		dbname = "dungeon",
		postfix = "",
		color = {1, 1, 1},
		keywords = {"일반", "일던", "%(1%)", "%(일%)"},
	},	
	[6] = {
		name = "10인 영웅",
		dbname = "10h", 
		postfix = "|cFFFF933E [10H]",
		color = {1, 0.5, 0.3}, --r3
		keywords = {},
	},		
	[7] = {
		name = "감마",
		dbname = "gamma",
		postfix = "|cFF00FFFF [감마]", 
		color = {1, 1, 1},
		keywords = {"감마"},
	},		
	[8] = {
		name = "베타",
		dbname = "titan",
		postfix = "|cFFFF7CB6 [베타]", 
		color = {1, 1, 1},
		keywords = {"티탄", "베타"},
	},	
	[9] = {
		name = "알파",
		dbname = "alp",
		postfix = "|cFFFF7CB6 [알파]", 
		color = {1, 1, 1},
		keywords = {"알파"},
	},	
	[10] = {
		name = "영웅",
		dbname = "heroic",
		postfix = "|cFFC900FF [영던]", 
		color = {1, 1, 1},
		keywords = {"영웅", "영던", "0던", "%(0%)", "%(영%)", "일영"},
	},	
	[11] = {
		name = "전쟁",
		dbname = "battle",
		postfix = "",
		color = {0.6, 0.2, 0.7},
		keywords = {},
	},		
	[12] = {
		name = "퀘스트",
		dbname = "qst",
		postfix = "|cfffff270 [퀘스트]", 
		color = {1, 1, 1},
		keywords = {"퀘"},
	},	
	[13] = {
		name = "월드 이벤트",
		dbname = "evt",
		postfix = " [이벤트]",
		color = {0.85, 0.42, 0.85},		
		keywords = {"할로윈", "여름", "아훈", "가을", "산양"},
	},	
}



-- ==============================
-- 던전 분류 키워드를 정의합니다.
-- 아래 모든 필드가 있어야합니다.
-- category는 새로운 분류를 추가할 때 이용하시면 됩니다.
-- name은 던전 이름을 입력하며, 낮은 번호가 우선으로 인식됩니다. 번호가 중복되지 않도록 하여주시기 바랍니다.
-- difficulty는 해당 던전에 존재하는 난이도를 정의하는 부분입니다. 난이도 정의의 dbname에 맞게 입력하셔야 합니다.
-- keywords는 파티모집 문구에 해당 문자열이 있을 경우 해당 난이도로 분류할 수 있도록 정의하는 부분입니다.
-- heroickeywods는 던전 분류후 해당 문자열이 발견될 경우 영웅 난이도로 분류하도록 별도로 정의하는 부분입니다.
-- 시네스트라나 비룡팟등 기본 하드 진행인데, 하드로 분류되지 않는 경우를 대비하여 만들어 졌습니다. 하드 난이도에만 존재하는 네임드의 경우, 이 곳에 키워드를 적을 수 있습니다.
-- 단, 이 경우 던전 분류시 인식하지 않으므로 던전 분류에서 해당 키워드를 기재하여 우선 던전을 인식시키는 작업이 필요합니다. (황혼의 요새를 참고하시기 바랍니다.)
FP_DUNGEON_KEYWORDS = {
	[1] = {
		category = "대격변 공격대",
		dungeon = {
			[1] = {
				name = "|cffFF300B용의 영혼|r",
				difficulty = {"10f", "25f", "10h", "25h"},
				keywords = {"용영", "데스윙", "울트락", "용의영혼"},
			},
			[2] = {
				name = "|cffFF7738불의 땅|r",
				difficulty = {"10f", "25f", "10h", "25h"},
				keywords = {"불땅", "불의땅", "라그", "대표단"},
			},
			[3] = {
				name = "|cffFFE400검은날개 강림지|r",
				difficulty = {"10f", "25f", "10h", "25h"},
				keywords = {"강림지", "검날", "검은날개", "검강", "네파"},
				excludekeywords = {"황혼", "황요", "황", "황+", "황요+", "초갈", "시네", "네바람", "알아키르", "네"},					
			},
			[4] = {
				name = "|cff2034FF황혼의 요새|r",
				difficulty = {"10f", "25f", "10h", "25h"},
				keywords = {"황혼", "황요", "초갈", "시네"},
				excludekeywords = {"투기", "강림지", "검날", "검은날개", "검강", "네파", "검", "검+", "검날+", "네바람", "알아키르", "네"},					
				heroickeywords = {"시네"},
			},
			[5] = {
				name = "|cff7EE1EC네 바람의 왕자|r",
				difficulty = {"10f", "25f", "10h", "25h"},
				keywords = {"네바람", "알아키르"},
				excludekeywords = {"강림지", "검날", "검은날개", "검강", "네파", "검", "검+", "검날+", "황혼", "황요", "초갈", "황", "황+", "황요"},					
			},	
			[6] = {
				name = "|cffF99829[2]검날+황요|r",
				difficulty = {"10f", "25f", "10h", "25h"},
				keywords = {"검날", "강림지", "검", "검+", "검날+", "황요", "황"},
				excludekeywords = {"투기", "네바람", "알아키르", "네", "바람+", "네+", "투기"},	
				heroickeywords = {"시네"},				
			},	
			[7] = {
				name = "|cffF99829[2]황요+네바람|r",
				difficulty = {"10f", "25f", "10h", "25h"},
				keywords = {"황요", "황", "황+", "황요+", "네바람", "알아키르", "네", "바람+", "네+"},
				excludekeywords = {"투기", "검날", "강림지", "검", "검+", "검날+", "투기"},				
			},				
			[8] = {
				name = "|cffF99829[3]검날+황요+네바람|r",
				difficulty = {"10f", "25f", "10h", "25h"},
				keywords = {"검날", "강림지", "검", "검+", "날+", "황요", "황", "황+", "황요+", "네바람", "네", "네+", "바람+"},
				excludekeywords = {"투기"},	
				heroickeywords = {"시네"},				
			},			
			[9] = {
				name = "|cff89F1D4바라딘 요새|r",
				difficulty = {"10f", "25f"},
				keywords = {"바라딘", "톨바"},			
			},
		},
	},
	[2] = {
		category = "대격변 던전",
		dungeon = {
			[1] = {
				name = "무작위 던전",
				difficulty = {"dungeon", "heroic", "titan", "alp" ,"gamma"},
				keywords = {"무작"},
			},
			[2] = {
				name = "시간의 끝",
				difficulty = {"heroic", "titan", "alp" ,"gamma"},
				keywords = {"시끝", "시간의끝"},
			},
			[3] = {
				name = "영원의 샘",
				difficulty = {"heroic", "titan", "alp" ,"gamma"},
				keywords = {"영샘", "영원의샘"},
				excludekeywords = {"영원의눈"},
			},
			[4] = {
				name = "황혼의 시간",
				difficulty = {"heroic", "titan", "alp" ,"gamma"},
				keywords = {"황혼의시간", "황시"},
			},
			[5] = {
				name = "검은바위 동굴",
				difficulty = {"dungeon", "heroic", "titan", "alp" ,"gamma"},
				keywords = {"검바", "동굴"},
			},
			[6] = {
				name = "그림 바톨",
				difficulty = {"dungeon", "heroic", "titan", "alp" ,"gamma"},
				keywords = {"그바", "바툴", "바톨", "그림"},
			},
			[7] = {
				name = "바위 심장부",
				difficulty = {"dungeon", "heroic", "titan", "alp" ,"gamma"},
				keywords = {"바심", "심장부"},
			},
			[8] = {
				name = "시초의 전당",
				difficulty = {"dungeon", "heroic", "titan", "alp" ,"gamma"},
				keywords = {"시초", "전당"},
			},
			[9] = {
				name = "톨비르의 잃어버린 도시",
				difficulty = {"dungeon", "heroic", "titan", "alp" ,"gamma"},
				keywords = {"톨비르"},
			},
			[10] = {
				name = "파도의 왕좌",
				difficulty = {"dungeon", "heroic", "titan", "alp" ,"gamma"},
				keywords = {"파도", "파왕"},
			},
			[11] = {
				name = "그림자송곳니 성채",
				difficulty = {"dungeon", "heroic", "titan", "alp" ,"gamma"},
				keywords = {"그림자", "성채", "송곳니", "그송"},
				excludekeywords = {"우트", "드락", "얼음왕관"},
			},
			[12] = {
				name = "죽음의 폐광",
				difficulty = {"dungeon", "heroic", "titan", "alp" ,"gamma"},
				keywords = {"폐광"},
			},
		},
	},
	[3] = {
		category = "5인 던전 (리치왕의 분노)",
		dungeon = {	
			[1] = {
				name = "무작위 던전",
				difficulty = {"heroic", "titan", "alp" ,"gamma"},
				keywords = {"랜덤", "랜영", "무작던전", "무작영던", "무작영웅", "무작스핀", "12스핀"},
				heroickey = {"랜영", "무작영던", "무작영웅", "영던스핀", "12영던"},
			},		
			[2] = {
				name = "영혼의 제련소",
				difficulty = {"dungeon", "heroic", "titan", "alp" ,"gamma"},
				keywords = {"제련", "제련소", "영제"},
			},
			[3] = {
				name = "사론의 구덩이",
				difficulty = {"dungeon", "heroic", "titan", "alp" ,"gamma"},
				keywords = {"사론", "샤론"},
			},
			[4] = {
				name = "투영의 전당",
				difficulty = {"dungeon", "heroic", "titan", "alp" ,"gamma"},
				keywords = {"투영"},
			},
			[5] = {
				name = "용사의 시험장",
				difficulty = {"dungeon", "heroic", "titan", "alp" ,"gamma"},
				keywords = {"용사"},
				excludekey = {"천둥왕", "부른다"},
			},		
			[6] = {
				name = "번개의 전당",
				difficulty = {"dungeon", "heroic", "titan", "full", "alp" ,"gamma"},
				keywords = {"번개", "번전"},
				excludekeywords = {"돌전", "돌의"},				
			},	
			[7] = {
				name = "돌의 전당",
				difficulty = {"dungeon", "heroic", "titan", "full", "alp" ,"gamma"},
				keywords = {"돌전", "돌의"},
				excludekeywords = {"번개", "번전"},				
			},		
			[8] = {
				name = "군드락",
				difficulty = {"dungeon", "heroic", "titan", "full", "alp" ,"gamma"},
				keywords = {"군드", "군드락"},
				excludekeywords = {"돌전", "돌의", "드락타", "드락성"},				
			},	
			[9] = {
				name = "드락타론 성채",
				difficulty = {"dungeon", "heroic", "titan", "full", "alp" ,"gamma"},
				keywords = {"드락타", "드락성"},
				excludekeywords = {"줄드", "군드", "군드락", "얼음왕관", "얼왕", "그림자", "그송", "그림자", "지옥불"},				
			},		
			[10] = {
				name = "우트가드 성채",
				difficulty = {"dungeon", "heroic", "titan", "full", "alp" ,"gamma"},
				keywords = {"우트"},
				excludekeywords = {"얼음왕관", "얼왕", "드락타론", "드락타", "드락성",  "그림자", "그송", "그림자", "첨탑", "우트첨탑", "지옥불"},
			},
			[11] = {
				name = "우트가드 첨탑",
				difficulty = {"dungeon", "heroic", "titan", "full", "alp" ,"gamma"},
				keywords = {"첨탑", "우트첨탑"},
				excludekeywords = {"성채", "우트", "검은바위", "하층", "상층"},
			},		
			[12] = {
				name = "마력의 눈",
				difficulty = {"dungeon", "heroic", "titan", "full", "alp" ,"gamma"},
				keywords = {"마눈", "마력의눈"},
				excludekeywords = {"마탑","마력의탑"},					
			},
			[13] = {
				name = "마력의 탑",
				difficulty = {"dungeon", "heroic", "titan", "full", "alp" ,"gamma"},
				keywords = {"마탑","마력의탑"},
				excludekeywords = {"마눈", "마력의눈"},					
			},	
			[14] = {
				name = "아졸네룹",
				difficulty = {"dungeon", "heroic", "titan", "full", "alp" ,"gamma"},
				keywords = {"아졸"},
				excludekeywords = {"안카"},				
			},		
			[15] = {
				name = "안카헤트: 고대 왕국",
				difficulty = {"dungeon", "heroic", "titan", "full", "alp" ,"gamma"},
				keywords = {"안카"},
				excludekeywords = {"아졸"},				
			},
			[16] = {
				name = "보랏빛 요새",
				difficulty = {"dungeon", "heroic", "titan", "full", "alp" ,"gamma"},
				keywords = {"보요", "보라빛", "보라"},
				excludekeywords = {"옛솔", "솔름", "솔룸", "옛솔름"},					
			},			
			[17] = {
				name = "옛 스트라솔름",
				difficulty = {"dungeon", "heroic", "titan", "full", "alp" ,"gamma"},
				keywords = {"옛솔", "솔름", "솔룸", "옛솔름"},
				excludekeywords = {"보요", "보라빛", "보라"},					
			},			
			[18] = {
				name = "|cffEE5F5F[2]|r 돌의전당+번개의전당",
				difficulty = {"dungeon", "heroic", "titan", "full", "alp" ,"gamma"},
				keywords = {"번개", "번전", "돌전", "돌의"},				
			},	
			[19] = {
				name = "|cffEE5F5F[2]|r 마력의 탑+눈",
				difficulty = {"dungeon", "heroic", "titan", "full", "alp" ,"gamma"},
				keywords = {"마탑","마력의탑", "마눈", "마력의눈"},
			},	
			[20] = {
				name = "|cffEE5F5F[2]|r 우트가트 성채+첨탑",
				difficulty = {"dungeon", "heroic", "titan", "full", "alp" ,"gamma"},
				keywords = {"첨탑", "우트첨탑", "우트", "우트성채"},
				excludekeywords = {"검은바위", "하층", "상층", "드락타", "드락성", "군드", "지옥불", "그림자", "그송"},
			},	
			[21] = {
				name = "|cffEE5F5F[2]|r 군드락+드락타론 성채",
				difficulty = {"dungeon", "heroic", "titan", "full", "alp" ,"gamma"},
				keywords = {"드락타", "드락성", "군드", "군드락"},
				excludekeywords = {"지옥불", "성루", "그림자", "그송"},				
			},			
			[22] = {
				name = "|cffEE5F5F[2]|r 안카헤트+아졸네룹",
				difficulty = {"dungeon", "heroic", "titan", "full", "alp" ,"gamma"},
				keywords = {"안카", "아졸"},			
			},				
			[23] = {
				name = "|cffEE5F5F[2]|r 보랏빛요새+솔룸",
				difficulty = {"dungeon", "heroic", "titan", "full"},
				keywords = {"보요", "보라빛", "보라", "옛솔", "솔름", "솔룸", "옛솔름", "alp" ,"gamma"},			
			},				
		},
	},
	[4] = {
		category = "공격대 (리치왕의 분노)",
		dungeon = {	
			[1] = {
				name = "|cffFF300B얼음왕관 성채",
				difficulty = {"10f", "25f", "10h", "25h"},
				keywords = {"얼왕", "얼음왕관"},
				excludekeywords = {"루비", "성소"}, 					
				heroickeywords = {"하드", "H", "h", "왕몰", "여빛"},			
			},		
			[2] = {
				name = "|cffFF300B루비 성소",
				difficulty = {"10f", "25f", "10h", "25h"},
				keywords = {"루비", "성소"},	
				excludekeywords = {"얼왕", "얼음왕관"}, 					
				heroickeywords = {"하드", "H", "h"},			
			},			
			[3] = {
				name = "|cffC257FF얼왕+루비",
				difficulty = {"10f", "25f", "10h", "25h"},
				keywords = {"얼왕", "얼음왕관", "루비", "성소"},		
				heroickeywords = {"하드", "H", "h"},			
			},		
			[4] = {
				name = "|cffFF8000십자군",
				difficulty = {"10f", "25f", "10h", "25h"},
				keywords = {"십자"},
				excludekeywords = {"수도원", "붉은", "번방", "용사", "도서관"}, 				
				heroickeywords = {"50트"},			
			},			
			[5] = {
				name = "|cffFFC162오닉시아",
				difficulty = {"10f", "25f"},
				keywords = {"오닉"},
			},			
			[6] = {
				name = "|cffFFE400울두아르",
				difficulty = {"10f", "25f", "10h", "25h"},
				keywords = {"울두", "울드"},
				heroickeywords = {"0수호", "알갈"},
			},						
			[7] = {
				name = "|cff89F1D4아카본 석실|r",
				difficulty = {"10f", "25f"},
				keywords = {"아카본", "에말론", "코랄론", "토라본", "석실"},
			},				
			[8] = {
				name = "|cff00A2FF낙스라마스|r",
				difficulty = {"10f", "25f"},
				keywords = {"낙스", "켈투"},
				excludekeywords = {"흑요", "영원의눈", "영눈", "말리"},		
			},	
			[9] = {
				name = "|cff0055FF흑요석 성소|r",
				difficulty = {"10f", "25f"},
				keywords = {"흑요", "살타", "성소", "0비룡", "1비룡"},
				--heroickeywords = {"비룡"}, 
				excludekeywords = {"낙스", "켈투", "영원의눈", "영눈", "말리", "2비룡", "2용", "3비룡", "3용"},				
			},				
			[10] = {
				name = "|cff7EE1EC영원의 눈|r",
				difficulty = {"10f", "25f"},
				keywords = {"영원의눈", "영눈", "말리"},
				excludekeywords = {"낙스", "켈투", "흑요", "살타", "성소"},					
			},	
		},
	},
	[5] = {
		category = "공격대 (불타는 성전)",
		dungeon = {
			[1] = {
				name = "태양샘 고원",
				difficulty = {"25f"},
				keywords = {"태양샘", "태샘", "킬제덴"},					
			},				
			[2] = {
				name = "검은 사원",
				difficulty = {"25f"},
				keywords = {"검사", "검은사원"},
				excludekeywords = {"안퀴", "하이잘", "하잘"},				
			},
			[3] = {
				name = "하이잘 정상",
				difficulty = {"25f"},
				keywords = {"하이잘", "하잘"},
				excludekeywords = {"안퀴", "검사", "검은사원"},					
			},
			[4] = {
				name = "하이잘+검사 세트",
				difficulty = {"25f"},
				keywords = {"하이잘", "검사", "검은사원", "하잘"},
			},			
			[5] = {
				name = "줄아만",
				difficulty = {"10f"},
				keywords = {"줄아만"},
			},--]]			
			[6] = {
				name = "폭풍우 요새",
				difficulty = {"25f"},
				keywords = {"폭요", "폭우"},
				excludekeywords = {"퀘", "불뱀", "제단", "바쉬", "불폭"},
			},
			[7] = {
				name = "불뱀 제단",
				difficulty = {"25f"},
				keywords = {"불뱀", "제단"},
				excludekeywords = {"퀘", "폭요", "폭풍", "폭.요", "폭/요", "폭우", "포교", "켈타", "불폭"},
			},
			[8] = {
				name = "불뱀+폭요 세트",
				difficulty = {"25f"},
				keywords = {"불뱀", "제단", "폭요", "폭.요", "폭/요", "폭우", "포교", "바쉬", "켈타", "불폭"},
				excludekeywords = {"퀘"},
			},
			[9] = {
				name = "그룰의 등지",
				difficulty = {"25f"},
				keywords = {"그룰", "그롤"},
				excludekeywords = {"물건", "항공", "마그", "그룰록"},					
			},
			[10] = {
				name = "마그테리돈의 둥지",
				difficulty = {"25f"},
				keywords = {"마그"},
				excludekeywords = {"항공", "고크", "그룰", "그롤", "그룰록", "마그나"},					
			},
			[11] = {
				name = "그룰+마그 세트",
				difficulty = {"25f"},
				keywords = {"그룰", "그롤", "마그"},
				excludekeywords = {"항공", "고크", "룰록", "마그나"},					
			},					
			[12] = {
				name = "카라잔",
				difficulty = {"10f"},
				keywords = {"카라잔"},
				excludekeywords = {"퀘", "항공"},					
			},			
		},
	},
	[6] = {
		category = "5인 던전 [Lv.60-70]",
		dungeon = {
			[1] = {
				name = "마법학자의 정원",
				difficulty = {"dungeon", "heroic"},
				keywords = {"마정", "마법학자"},				
			},
			[2] = {
				name = "메카나르",
				difficulty = {"dungeon", "heroic"},
				keywords = {"메카"},				
			},
			[3] = {
				name = "알카트라즈",
				difficulty = {"dungeon", "heroic"},
				keywords = {"알카"},
			},
			[4] = {
				name = "신록의 정원",
				difficulty = {"dungeon", "heroic"},
				keywords = {"신록"},
			},
			[5] = {
				name = "어둠의 미궁",
				difficulty = {"dungeon", "heroic", "bus"},
				keywords = {"미궁"},
			},
			[6] = {
				name = "세데크 전당",
				difficulty = {"dungeon", "heroic"},
				keywords = {"세데크", "세덱", "안주"},
			},
			[7] = {
				name = "아키나이 납골당",
				difficulty = {"dungeon", "heroic"},
				keywords = {"납골"},
			},
			[8] = {
				name = "마나 무덤",
				difficulty = {"dungeon", "heroic"},
				keywords = {"마나"},
			},
			[9] = {
				name = "증기 저장고",
				difficulty = {"dungeon", "heroic"},
				keywords = {"중기", "증기"},
			},
			[10] = {
				name = "지하 수렁",
				difficulty = {"dungeon", "heroic"},
				keywords = {"수렁"},
			},
			[11] = {
				name = "강제 노역소",
				difficulty = {"dungeon", "heroic", "evt"},
				keywords = {"노역"},
			},
			[12] = {
				name = "으스러진 손의 전당",
				difficulty = {"dungeon", "heroic"},
				keywords = {"으스", "으손"},
			},
			[13] = {
				name = "피의 용광로",
				difficulty = {"dungeon", "heroic"},
				keywords = {"피용", "용광로"},
			},
			[14] = {
				name = "지옥불 성루",
				difficulty = {"dungeon", "heroic"},
				keywords = {"성루"},
			},
			[15] = {
				name = "검은 늪",
				difficulty = {"dungeon", "heroic", "qst"},
				keywords = {"검은늪", "검늪"},
			},
			[16] = {
				name = "옛 힐스구릉지",
				difficulty = {"dungeon", "heroic", "qst"},
				keywords = {"힐스", "옛힐"},
			},
		},
	},
	
	[7] = {
		category = "클래식던전 [Lv.1-60]",
		dungeon = {
			[1] = {
				name = "가시덩굴 구릉",
				difficulty = {"dungeon"},
				keywords = {"구릉", "구렁", "구룽"},
				excludekeywords = {"회색", "구릉지"},
			},
			[2] = {
				name = "가시덩굴 우리",
				difficulty = {"dungeon"},
				keywords = {"우리"},
				excludekeywords = {"마우리"},
			},
			[3] = {
				name = "검은심연의 나락",
				difficulty = {"dungeon"},
				keywords = {"심연", "검은심연", "검은심연의"},
				excludekeywords = {"바위", "심연의홀", "홀"},
			},
			[4] = {
				name = "검은바위 나락",
				difficulty = {"dungeon", "evt"},
				keywords = {"나락", "윈저"},
				excludekeywords = {"심연"},
			},
			[5] = {
				name = "검은바위 첨탑 하층",
				difficulty = {"dungeon"},
				keywords = {"하층"},
				excludekeywords = {"우트가드"},
			},
			[6] = {
				name = "검은바위 첨탑 상층",
				difficulty = {"dungeon"},
				keywords = {"상층", "드라키"},
				excludekeywords = {"우트가드"},
			},
			[7] = {
				name = "그림자송곳니 성채",
				difficulty = {"dungeon"},
				keywords = {"그송", "송곳니"},
				excludekeywords = {"우트", "드락", "얼음왕관"},
			},
			[8] = {
				name = "놈리건",
				difficulty = {"dungeon"},
				keywords = {"놈리"},
			},
			[9] = {
				name = "마라우돈",
				difficulty = {"dungeon"},
				keywords = {"마라우돈", "우동", "마라"},
			},
			[10] = {
				name = "붉은십자군 수도원",
				difficulty = {"dungeon", "evt"},
				keywords = {"수도원", "도서관", "무기고", "성당", "예배당", "1번", "2번", "3번", "4번"},
			},
			[11] = {
				name = "성난불길 협곡",
				difficulty = {"dungeon"},
				keywords = {"성난불길", "성불"},
			},
			[12] = {
				name = "스톰윈드 지하감옥",
				difficulty = {"dungeon"},
				keywords = {"감옥"},
			},
			[13] = {
				name = "스칼로맨스",
				difficulty = {"dungeon"},
				keywords = {"스칼", "교장"},
			},
			[14] = {
				name = "스트라솔름",
				difficulty = {"dungeon"},
				keywords = {"솔름", "솔룸", "솔륨", "솔롬", "스솔"},
				excludekeywords = {"옛", "영웅", "영던", "0던", "%(0%)", "%(영%)", "일영", "일반", "일던", "%(1%)", "%(일%)"},
			},
			[15] = {
				name = "아탈학카르 신전",
				difficulty = {"dungeon"},
				keywords = {"학카르", "학칼", "아탈", "가라앉은"},
			},
			[16] = {
				name = "울다만",
				difficulty = {"dungeon"},
				keywords = {"울다"},
			},
			[17] = {
				name = "죽음의 폐광",
				difficulty = {"dungeon"},
				keywords = {"폐광"},
			},
			[18] = {
				name = "줄파락",
				difficulty = {"dungeon"},
				keywords = {"줄파"},
			},
			[19] = {
				name = "통곡의 동굴",
				difficulty = {"dungeon"},
				keywords = {"통곡"},
			},
			[20] = {
				name = "혈투의 전장",
				difficulty = {"dungeon"},
				keywords = {"혈투", "혈장"},
			},
		},
	},	
	
	[8] = {
		category = "PvP",
		dungeon = {
			[1] = {
				name = "투기장",
				difficulty = {"pvp"},
				keywords = {"점먹", "8승", "10승", "2V2", "2VS2", "2대2", "3V3", "3VS3", "3대3","5V5", "5VS5", "5대5", "2:2", "3:3", "5:5"},
				excludekeywords = {"퀘", "쐐기", "길드", "투기장퀘", "나그란드", "나그", "줄드", "회색구릉지", "구릉", "퀘스트", "정복", "피의", "고뇌"},
			},
			[2] = {
				name = "전장",
				difficulty = {"pvp"},
				keywords = {"명점", "쟁", "전장", "아라시", "알방", "노래방", "토방", "룰방", "분지", "폭눈", "겨손", "겨울손아귀"},
				excludekeywords = {"퀘", "쐐기", "길드", "하실"},
			},
		},
	},
	
	[9] = {
		category = "퀘스트",
		dungeon = {
			[1] = {
				name = "퀘스트",
				difficulty = {"dungeon"},
				keywords = {"퀘"},
			},
		},
	},	
}

-- 하드 난이도를 위한 별도 처리 부분입니다. 던전 모집 문구에 해당 문자열이 포함되어 있을 경우 하드 난이도로 분류 합니다.
FP_HEROIC_KEYWORDS = {"영웅", "하드", "%d+H", "H%d+", "HARD", "HEROIC", "ALLH", "올H", "%dH", "%dh", "%d하드"}

-- 던전명 뒤에 아래 문제가 붙어 있을 경우 하드 난이도로 인식합니다. (순전히 용영H 등 같은것으로 인해 추가..)
FP_HEROIC_POSTFIX_KEYWORDS = {"H", "하드", "h"}

-- 모든 무시 키워드는 각단계 별로 별도로 제거 됩니다.
-- 즉, 다른 단계에서 사용한 키워드가 있다면 해당 단계에서 제거하는 것이 좋습니다.
-- 던전명 인식시 해당 문자열을 제거한후 던전명을 인식합니다. 오인식이 자주되는 키워드 위주로 추가하면 좋습니다.
-- 이를테면 도적의 키워드가 "도" 이고, 난이도 인식시 사용하는 키워드가 "도전" 이면, 직업 필터링에 "도전"을 추가하면 
-- 도전 모드는 정상적으로 인식되며 "도전" 을 도적으로 오인식하는 경우가 줄어듭니다.
-- 영어 사용시 대문자로만 적으세요. (자동으로 대문자 변환함)

FP_DUNGEON_IGNORE_KEYWORDS = {
	"할줄아",--줄아만 오분류
	"얼마나",--마나 무덤 오분류
}

-- 던전 이름 뒤에 다음 문자열이 기록되어 있으면 무시합니다.
-- 운다손, 갈레온손 같은 경우를 제거하기 위함입니다.
FP_DUNGEON_IGNORE_POSTFIX_KEYWORDS = {
	"손",--아주 손
	"뜸",--에메 뜸
	"없",--아주 파티 없나요
	"ㅅ",--카자크 ㅅㅅㅅ
	"초대",--카자크 초대좀요~
	--"풀",
	--"풀파",
}

-- 난이도명 인식시 해당 문자열을 제거한후 난이도명을 인식합니다. 오인식이 자주되는 키워드 위주로 추가하면 좋습니다.
FP_DIFFICULTY_IGNORE_KEYWORDS = {
	--시간 관련 문자열들 제거
	"OR", "AND", "1탐", "2탐", "일시", "1시", "2시", "3시", "4시", "5시", "6시", "7시", "8시", "9시", "10시", "11시", "12시", "20시", "22시", "~1", "~10", ":33", "~33", "~20", "1~", "10~", "20~", "22:", "22~", ":55", "~55", "55분", "1:", "10:", "20:", ":0", ":1", "10월", "0분", "0시", "30", "10:",
	--기타 오인식 문자열 제거
	"10/", "10렙", "10레벨", "250", "25렙", "25레벨", "1레벨", "1렙", "LV.25", "하드X", "10하드", "탄공이상", "1손", "2손", "100", "50", "25분", "100", "6100", "12하드", "12H", "11하드", "11H"
}


-- 목록 툴팁에서 가독성에 영향을 주는 문자열을 사전 제거 합니다. 가능한 최소로 사용하세요.
FP_TOOLTIP_IGNORE_KEYWORDS = {
	-- 툴팁에는 이모티콘이 표시되지 않으므로 이모티콘 관련 문자들 제거
	"{해골}", "{별}", "{다이아몬드}", "{세모}", "{동그라미}", "{가위표}", "{달}", "{네모}", "{rt1}", "{rt2}", "{rt3}", "{rt4}", "{rt5}", "{rt6}", "{rt7}", "{rt8}"
}

-- 스팸 메시지 필터링 문자열
FP_GLOBAL_EXCLUDE_KEYWORDS = {
	"길드에서",
	"길드원",
	"길드는",
	"길원",
	"친목",
	"함께",
	"렙업",
	"레벨업",
	"레벨링",
	"삽니다",
	"닌자",
	"먹튀",
}