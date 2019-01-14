
function ChaosGreed:Recall(currentPlayer)
	player = Isaac.GetPlayer(0) -- 플레이어 변수 설정
	entities = Isaac.GetRoomEntities()

	if player:HasCollectible(50)==true and player:GetCollectibleNum(50)<8 then
		player:AddCollectible(50,0,true)
	end
	if player:HasCollectible(51)==true and player:GetCollectibleNum(51)<6 then
		player:AddCollectible(51,0,true)
	end
	if player:HasCollectible(79)==true and player:GetCollectibleNum(79)<10 then
		player:AddCollectible(79,0,true)
	end
	if player:HasCollectible(80)==true and player:GetCollectibleNum(80)<10 then
		player:AddCollectible(80,0,true)
	end
	if player:HasCollectible(138)==true and player:GetCollectibleNum(138)<40 then
		player:AddCollectible(138,0,true)
	end
	if player:HasCollectible(165)==true and player:GetCollectibleNum(165)<10 then
		player:AddCollectible(165,0,true)
	end
	if player:HasCollectible(193)==true and player:GetCollectibleNum(193)<10 then
		player:AddCollectible(193,0,true)
	end
	if player:HasCollectible(197)==true and player:GetCollectibleNum(197)<6 then
		player:AddCollectible(197,0,true)
	end
	if player:HasCollectible(201)==true and player:GetCollectibleNum(201)<40 then
		player:AddCollectible(201,0,true)
	end
	if player:HasCollectible(259)==true and player:GetCollectibleNum(259)<10 then
		player:AddCollectible(259,0,true)
	end
	if player:HasCollectible(345)==true and player:GetCollectibleNum(345)<10 then
		player:AddCollectible(345,0,true)
	end
	if player:HasCollectible(359)==true and player:GetCollectibleNum(359)<8 then
		player:AddCollectible(359,0,true)
	end
	if player:HasCollectible(399)==true and player:GetCollectibleNum(399)<40 then
		player:AddCollectible(399,0,true)
	end
	if player:HasCollectible(445)==true and player:GetCollectibleNum(445)<40 then
		player:AddCollectible(445,0,true)
	end

	if player:HasCollectible(280)==true and player:GetCollectibleNum(280)<3 then -- 280을 획득했고 3개 이하면(씨씨)
		player:AddCollectible(280,0,true) -- 3개를 얻을 때까지 반복해서 280 획득
	end
	if player:HasCollectible(511)==true and player:GetCollectibleNum(511)<3 then -- 511을 획득했고 3개 이하면(앵그리플라이)
		player:AddCollectible(511,0,true) -- 3개를 얻을 때까지 반복해서 511 획득
	end
	if player:HasCollectible(493)==true and player:GetCollectibleNum(208)<10 then -- 493을 획득했고 208이 10개 이하면(아드레날린/챔벨)
		player:AddCollectible(208,0,true) -- 10개를 얻을 때까지 반복해서 208 획득
	end
	if player:HasCollectible(417)==true and player:GetCollectibleNum(417)<2 then -- 417을 획득했고 2개 이하면(서큐)
		player:AddCollectible(417,0,true) -- 2개를 얻을 때까지 반복해서 417 획득
	end
	if player:HasCollectible(317)==true and player:GetCollectibleNum(48)<1 then -- 317을 획득했고 48이 1개 이하면(섬창/큐피드)
		player:AddCollectible(48,0,true) -- 1개를 얻을 때까지 반복해서 48 획득
	end
	if player:HasCollectible(207)==true and player:GetCollectibleNum(207)<4 then -- 207을 획득했고 4개 이하면(밴드)
		player:AddCollectible(207,0,true) -- 4개를 얻을 때까지 반복해서 415 획득
	end
	if player:HasCollectible(73)==true and player:GetCollectibleNum(73)<4 then -- 73을 획득했고 4개 이하면(미트)
		player:AddCollectible(73,0,true) -- 4개를 얻을 때까지 반복해서 73 획득
	end
	if player:HasCollectible(155)==true and player:GetCollectibleNum(155)<3 then -- 155을 획득했고 3개 이하면(피퍼)
		player:AddCollectible(155,0,true) -- 3개를 얻을 때까지 반복해서 155 획득
	end
	if player:HasCollectible(405)==true and player:GetCollectibleNum(405)<3 then -- 405을 획득했고 3개 이하면(기가바이트)
		player:AddCollectible(405,0,true) -- 3개를 얻을 때까지 반복해서 405 획득
	end
	if player:HasCollectible(238)==true and player:HasCollectible(239)==true then -- 238과 239를 획득했다면(키피스 1,2)
		if player:HasCollectible(499)==false then --499가 없다면
			player:AddCollectible(499,0,true) -- 499 획득
			player:RemoveCollectible(238)
			player:RemoveCollectible(239)
		end
	end
	if player:HasCollectible(170)==true and player:GetCollectibleNum(170)<2 then 
		player:AddCollectible(170,0,true) 
	end
	if player:HasCollectible(318)==true and player:GetCollectibleNum(318)<2 then 
		player:AddCollectible(318,0,true)
	end
	if player:HasCollectible(275)==true and player:GetCollectibleNum(275)<3 then 
		player:AddCollectible(275,0,true)
	end
	if player:HasCollectible(508)==true and player:GetCollectibleNum(508)<3 then 
		player:AddCollectible(508,0,true)
	end
	if player:HasCollectible(7)==true and player:HasCollectible(462)==false then 
		player:AddCollectible(462,0,true) 
	end
	if player:HasCollectible(279)==true and player:GetCollectibleNum(279)<3 then 
		player:AddCollectible(279,0,true)
	end
	if player:HasCollectible(528)==true and player:GetCollectibleNum(528)<15 then 
		player:AddCollectible(528,0,true)
	end
	if player:HasCollectible(526)==true and player:GetCollectibleNum(526)<2 then 
		player:AddCollectible(526,0,true)
	end
	if player:HasCollectible(biblethump_item)==true and player:GetCollectibleNum(281)<4 then 
		player:AddCollectible(281,0,true)
	end
	if player:HasCollectible(bloodtrail_item)==true and player:GetCollectibleNum(73)<16 then 
		player:AddCollectible(73,0,true)
	end
	if player:HasCollectible(solfon_item) and player:HasCollectible(tenenu_item) and player:HasCollectible(lumen_item) and player:GetCollectibleNum(232)<1 then
		player:AddCollectible(232,0,true)
	end
	if player:HasCollectible(chaosSt_item) and player:HasCollectible(chaosNd_item) and player:HasCollectible(chaosRd_item) and player:HasCollectible(402) == false then
		player:AddCollectible(402,0,true)
	end
	if player:HasCollectible(injecA_item) and player:HasCollectible(injecB_item) and player:HasCollectible(injecC_item) and player:HasCollectible(chiggers_item) == false then
		player:AddCollectible(chiggers_item,0,true)
	end
	if player:HasCollectible(moneyA_item) and player:HasCollectible(moneyB_item) and player:HasCollectible(moneyC_item) and player:HasCollectible(76) == false then
		player:AddCollectible(76,0,true)
	end
	if player:HasCollectible(rainbowdead_item) and player:HasCollectible(rainbowpaw_item) and player:HasCollectible(rainbowtail_item) and not player:HasCollectible(248) then
		player:AddCollectible(248,0,true)
	end

	if player:HasCollectible(aguppy_item)==true then -- 119를 획득하면(앱솔루트 구피)
		if player:HasCollectible(134)==false then -- 134를 획득하지 않았을 때
			player:AddCollectible(134,0,true) -- 134 획득
		end
		if player:HasCollectible(187)==false then -- 이하 반복
			player:AddCollectible(187,0,true)
		end
		if player:HasCollectible(212)==false then
			player:AddCollectible(212,0,true)
		end
	end
	if player:HasCollectible(75)==true then -- 앱솔루트 마약
		if player:HasCollectible(70)==false then
			player:AddCollectible(70,0,true)
		end
		if player:HasCollectible(13)==false then
			player:AddCollectible(13,0,true)
		end
		if player:HasCollectible(143)==false then
			player:AddCollectible(143,0,true)
		end
	end
	if player:HasCollectible(aconjoin_item)==true then -- 앱솔루트 종양
		if player:HasCollectible(322)==false then
			player:AddCollectible(322,0,true)
		end
		if player:HasCollectible(268)==false then
			player:AddCollectible(268,0,true)
		end
		if player:HasCollectible(167)==false then
			player:AddCollectible(167,0,true)
		end
	end
	if player:HasCollectible(asulf_item)==true then -- 앱솔루트 유황
		if player:HasCollectible(118)==false then
			player:AddCollectible(118,0,true)
		end
		if player:HasCollectible(329)==false then
			player:AddCollectible(329,0,true)
		end
	end
	if player:HasCollectible(52)==true then -- 폭셋
		if player:HasCollectible(220)==false then
			player:AddCollectible(220,0,true)
		end
	end
	if player:HasCollectible(9)==true then -- 앱솔루트 파리셋
		if player:HasCollectible(264)==false then
			player:AddCollectible(264,0,true)
		end
		if player:HasCollectible(492)==false then
			player:AddCollectible(492,0,true)
		end
		if player:HasCollectible(chiggers_item)==false then
			player:AddCollectible(chiggers_item,0,true)
		end
	end
	if player:HasCollectible(aserap_item)==true then -- 앱솔루트 세라핌
		if player:HasCollectible(156)==false then
			player:AddCollectible(156,0,true)
		end
		if player:HasCollectible(72)==false then
			player:AddCollectible(72,0,true)
		end
		if player:HasCollectible(101)==false then
			player:AddCollectible(101,0,true)
		end
		if player:HasCollectible(390)==false then
			player:AddCollectible(390,0,true)
		end
	end
	if player:HasCollectible(alevi_item)==true then -- 앱솔루트 레비아탄
		if player:HasCollectible(79)==false then
			player:AddCollectible(79,0,true)
		end
		if player:HasCollectible(80)==false then
			player:AddCollectible(80,0,true)
		end
		if player:HasCollectible(159)==false then
			player:AddCollectible(159,0,true)
		end
	end
	if player:HasCollectible(agravity_item)==true then -- 앱솔루트 그혈
		if player:HasCollectible(118)==false then
			player:AddCollectible(118,0,true)
		end
		if player:HasCollectible(222)==false then
			player:AddCollectible(222,0,true)
		end
		if agravityVar == 0 then
			player:AddCollectible(381,0,true)
			player:AddCollectible(381,0,true)
			player:AddCollectible(381,0,true)
			agravityVar = 1
		end
	end
	if player:HasCollectible(223) then
		if player:HasCollectible(106)==false then
			player:AddCollectible(106,0,true)
		end
		if player:HasCollectible(125)==false then
			player:AddCollectible(125,0,true)
		end
		if player:HasCollectible(140)==false then
			player:AddCollectible(140,0,true)
		end
		if player:HasCollectible(220)==false then
			player:AddCollectible(220,0,true)
		end
		if player:HasCollectible(256)==false then
			player:AddCollectible(256,0,true)
		end
		if player:HasCollectible(353)==false then
			player:AddCollectible(353,0,true)
		end
		if player:HasCollectible(367)==false then
			player:AddCollectible(367,0,true)
		end
		if player:HasCollectible(517)==false then
			player:AddCollectible(517,0,true)
		end
	end
	if player:HasCollectible(cleaner_item) then -- 만약 클리너 소지 시
		if player:HasCollectible(52) then -- 닥터 소지 시
			player:RemoveCollectible(52) -- 닥터 제거
		end
		if player:HasCollectible(68) then -- 테크 소지 시
			player:RemoveCollectible(68) -- 테크 제거
			player:RemoveCollectible(68)
		end
		if player:HasCollectible(104) then -- 테크 소지 시
			player:RemoveCollectible(104) -- 테크 제거
		end
		if player:HasCollectible(114) then -- 칼 소지 시
			player:RemoveCollectible(114) -- 칼 제거
		end
		if player:HasCollectible(118) then -- 혈사 소지 시
			player:RemoveCollectible(118) -- 혈사 제거
			player:RemoveCollectible(118)
		end
		if player:HasCollectible(agravity_item) then -- 그혈 소지 시
			player:RemoveCollectible(agravity_item) -- 그혈 제거
		end
		if player:HasCollectible(149) then -- 구토 소지 시
			player:RemoveCollectible(149) -- 구토 제거
		end
		if player:HasCollectible(152) then -- 테크2 소지 시
			player:RemoveCollectible(152) -- 테크2 제거
		end
		if player:HasCollectible(168) then -- 에픽 소지 시
			player:RemoveCollectible(168) -- 에픽 제거
		end
		if player:HasCollectible(229) then -- 플래닛 소지 시
			player:RemoveCollectible(229) -- 플래닛 제거
		end
		if player:HasCollectible(233) then -- 플래닛 소지 시
			player:RemoveCollectible(233) -- 플래닛 제거
		end
		if player:HasCollectible(asulf_item) then -- 루도비코 소지 시
			player:RemoveCollectible(asulf_item) -- 루도비코 제거
		end
		if player:HasCollectible(329) then -- 루도비코 소지 시
			player:RemoveCollectible(329) -- 루도비코 제거
		end
		if player:HasCollectible(395) then -- 테크엑스 소지 시
			player:RemoveCollectible(395) -- 테크엑스 제거
		end
		if player:HasCollectible(67) then -- 테크엑스 소지 시
			player:RemoveCollectible(67) -- 테크엑스 제거
		end
		if player:HasCollectible(88) then -- 테크엑스 소지 시
			player:RemoveCollectible(88) -- 테크엑스 제거
		end
		if player:HasCollectible(269) then -- 테크엑스 소지 시
			player:RemoveCollectible(269) -- 테크엑스 제거
		end
		if player:HasCollectible(275) then -- 테크엑스 소지 시
			player:RemoveCollectible(275) -- 테크엑스 제거
		end
		if player:HasCollectible(52) == false and player:HasCollectible(68) == false and player:HasCollectible(104) == false and player:HasCollectible(114) == false and player:HasCollectible(118) == false and player:HasCollectible(agravity_item) == false and player:HasCollectible(149) == false and player:HasCollectible(152) == false and player:HasCollectible(168) == false and player:HasCollectible(229) == false and player:HasCollectible(233) == false and player:HasCollectible(asulf_item) == false and player:HasCollectible(395) == false then -- 공격 변화 아이템이 없는 경우
			player:RemoveCollectible(cleaner_item) -- 클리너 제거
		end
	end
	if player:GetPlayerType() == 5 and player:HasCollectible(126) then --만약 플레이어가 이브(5)이고 만약 126(면도) 소지 시라면
		player:AddCollectible(485,24,true)
	end
	if player:GetPlayerType() == 14 and player:HasCollectible(349) then 
		player:AddCollectible(521,30,true)
	end
	if player:GetPlayerType() == 10 and player:HasCollectible(482) then
		player:RemoveCollectible(482)
	end
	if player:GetPlayerType() == 10 and player:HasCollectible(332) then
		player:RemoveCollectible(332)
	end
	if player:GetPlayerType() == 10 and player:HasCollectible(311) then
		player:RemoveCollectible(311)
		shadowremove = true
		player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
		player:EvaluateItems()
	end
	if player:GetPlayerType() == 10 and player:HasCollectible(161) then
		player:RemoveCollectible(161)
	end
	if player:GetPlayerType() == 10 and player:GetTrinket(28) then
		player:TryRemoveTrinket(28)
	end
	if player:GetPlayerType() == 14 and player:HasCollectible(482) then
		player:RemoveCollectible(482)
	end
	if player:GetPlayerType() == 14 and player:HasCollectible(332) then
		player:RemoveCollectible(332)
	end
	if player:GetPlayerType() == 14 and player:HasCollectible(311) then
		player:RemoveCollectible(311)
		shadowremove = true
		player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
		player:EvaluateItems()
	end
	if player:GetPlayerType() == 14 and player:HasCollectible(161) then
		player:RemoveCollectible(161)
	end
	if player:GetPlayerType() == 14 and player:GetTrinket(23) then
		player:TryRemoveTrinket(23)
	end
	if player:GetPlayerType() == 14 and player:GetTrinket(28) then
		player:TryRemoveTrinket(28)
	end
	if player:GetPlayerType() == 14 and player:HasCollectible(227) then
		player:RemoveCollectible(227)
	end
	if player:GetPlayerType() == 14 and player:GetTrinket(1) then
		player:TryRemoveTrinket(1)
	end
	if player:GetTrinket(49) then 
		player:TryRemoveTrinket(49)
	end
	if player:GetTrinket(112) then 
		player:TryRemoveTrinket(112)
	end
	if player:GetTrinket(82) then 
		player:TryRemoveTrinket(82)
	end
end

ChaosGreed:AddCallback(ModCallbacks.MC_POST_UPDATE, ChaosGreed.Recall, EntityType.ENTITY_PLAYER)