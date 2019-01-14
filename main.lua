--[[
1. 오버리밋세트 추가 데미지가 UI 초기화가 되지 않는 현상 수정 [문제 확인 불가]
2. 오버리밋세트 데미지 감소 옵션 제거 [완료]
3. 섬망셋 3분마다 델라니움 효과 제거 [완료]
4. 아스트랄 포스 사용 시 1분마다 은방템으로 리뉴얼 [완료]
5. 노겜노라, 탄생석 발동 확률 25% 감소 [완료]
6. 3신기 빠가지 제거 옵션 삭제 [완료]
7. 보이드 아폴리온이 아닐경우 3회까지만 사용하도록 변경 
8. 블러드 드라이브 사용 시 사용 시 15원 필요로 변경, 50% 확률로 성공, 50% 확률로 무효과로 리뉴얼 [완료]
]]

-- Lua 모듈 불러오기
timer = require "timer"

setnumber = 15;

--Settings
swapItemKey = Keyboard.KEY_LEFT_SHIFT --Which keyboard key swaps items
controllerMode = false --Changing this to true changes input to the item drop button (finnicky)

ChaosGreed = RegisterMod("ChaosGreed", 1)

-- 아이템 등록
chiggers_item = Isaac.GetItemIdByName("Larval Therapy")
backpack_item = Isaac.GetItemIdByName("Backpack")
symbolp_item = Isaac.GetItemIdByName("Symbol_Of_Babylonia")
farsp_item = Isaac.GetItemIdByName("Farss_Golden_Goblet")
rosettap_item = Isaac.GetItemIdByName("Rosetta_Stone")
quickchaos_item = Isaac.GetItemIdByName("Rank-Up-Magic Quick Chaos")
skipforce_item = Isaac.GetItemIdByName("Rank-Up-Magic Skip Force")
deathdoubleforce_item = Isaac.GetItemIdByName("Rank-Up-Magic Death Double Force")
mono_item = Isaac.GetItemIdByName("Monolelium")
pride_item = Isaac.GetItemIdByName("Eye with Full of Pride")
envy_item = Isaac.GetItemIdByName("Tongue with Envy")
spice_item = Isaac.GetItemIdByName("Spice")
scroll_item = Isaac.GetItemIdByName("Scroll For Chaos")
lol_item = Isaac.GetItemIdByName("League of Legends")
hippo_item = Isaac.GetItemIdByName("The Small Hippo")
raven_item = Isaac.GetItemIdByName("The Small Raven")
toy_item = Isaac.GetItemIdByName("The Small Toy")
ascroll_item = Isaac.GetItemIdByName("Amazing Chaos Scroll")
soulshave_item = Isaac.GetItemIdByName("Rank-Up-Magic Soul Shave Force")
trinity_item = Isaac.GetItemIdByName("Trinity")
no_item = Isaac.GetItemIdByName("No!")
cipher_item = Isaac.GetItemIdByName("Rank-Up-Magic Cipher Ascension")
astral_item = Isaac.GetItemIdByName("Rank-Up-Magic Astral Force")
symbol_item = Isaac.GetItemIdByName("Symbol Of Babylonia")
fars_item = Isaac.GetItemIdByName("Fars's Golden Goblet")
rosetta_item = Isaac.GetItemIdByName("Rosetta Stone")
werry_item = Isaac.GetItemIdByName("Werry: Limit Breaker")
powerbond_item = Isaac.GetItemIdByName("Power Bond")
limiterremoval_item = Isaac.GetItemIdByName("Limiter Removal")
restore_item = Isaac.GetItemIdByName("Restock Machine")
chaos_item = Isaac.GetItemIdByName("Chaos Card")
venus_item = Isaac.GetItemIdByName("Venus's Breath")
scent_item = Isaac.GetItemIdByName("Scent Of Glitter")
memory_item = Isaac.GetItemIdByName("Memory Of Water")
millstone_item = Isaac.GetItemIdByName("Millstone")
cpb_item = Isaac.GetItemIdByName("Apathetic Princess Bracelet")
cpn_item = Isaac.GetItemIdByName("Cold Princess Necklace")
cpr_item = Isaac.GetItemIdByName("Cold Princess Ring")
solfon_item = Isaac.GetItemIdByName("Solium Fons")
tenenu_item = Isaac.GetItemIdByName("Tenebrae Nus")
lumen_item = Isaac.GetItemIdByName("Lumen Basilium")
hots_item = Isaac.GetItemIdByName("Heroes of the Storm")
aguppy_item = Isaac.GetItemIdByName("Absolute Guppy")
agravity_item = Isaac.GetItemIdByName("Absolute Gravity")
cp2_item = Isaac.GetItemIdByName("Chemical Peel 2")
eter_item = Isaac.GetItemIdByName("Ring Of Ethereal Form")
aserap_item = Isaac.GetItemIdByName("Absolute Seraphim")
doveb_item = Isaac.GetItemIdByName("Dove's Book")
stopwatch_item = Isaac.GetItemIdByName("Stop Watch 2")
raptor_item = Isaac.GetItemIdByName("Rank-Up-Magic Raptor's Force")
asulf_item = Isaac.GetItemIdByName("Absolute Sulfer")
spect_item = Isaac.GetItemIdByName("Spectrum Tear")
alevi_item = Isaac.GetItemIdByName("Absolute Leviathan")
clover_item = Isaac.GetItemIdByName("Clover")
cleaner_item = Isaac.GetItemIdByName("Cleaner")
cov_item = Isaac.GetItemIdByName("Crux Of Victoria")
plunger_item = Isaac.GetItemIdByName("Plunger")
rdmsb_item = Isaac.GetItemIdByName("Refined Destructive Magic Stone Bracelet")
rcsn_item = Isaac.GetItemIdByName("Refined Chaos Stone Necklace")
rasr_item = Isaac.GetItemIdByName("Refined Amnesia Stone Ring")
error_item = Isaac.GetItemIdByName("Runtime Error!")
aconjoin_item = Isaac.GetItemIdByName("Absolute Conjoined")
gamble_item = Isaac.GetItemIdByName("Pachinko")
chry_item = Isaac.GetItemIdByName("Cherry")
eyes_item = Isaac.GetItemIdByName("Sharp Eyes")
sonicboom_item = Isaac.GetItemIdByName("Speed Shoes")
v1helmet_item = Isaac.GetItemIdByName("Helmet LV.1")
v2helmet_item = Isaac.GetItemIdByName("Helmet LV.2")
v3helmet_item = Isaac.GetItemIdByName("Helmet LV.3")
galactic_item = Isaac.GetItemIdByName("Galactic Medal Of Valor")
momless_item = Isaac.GetItemIdByName("Bit Coin")
deathdoubleforce_ha_wi_ho_hwan_item = Isaac.GetItemIdByName("LIL Mimic")
yusaspice_item = Isaac.GetItemIdByName("Black Whirl Wind")
succusohwan_item = Isaac.GetItemIdByName("Abyss")
biblethump_item = Isaac.GetItemIdByName("Bible Thump")
bloodtrail_item = Isaac.GetItemIdByName("Blood Trail")
lightning_item = Isaac.GetItemIdByName("Lightning")
enocent_item = Isaac.GetItemIdByName("Innocent Scroll")
tuna_item = Isaac.GetItemIdByName("Absolute Tuna")
se_item = Isaac.GetItemIdByName("Soul Eater")
sr_item = Isaac.GetItemIdByName("Soul Charge")
sn_item = Isaac.GetItemIdByName("Soul Change")
Curse_Foot_item = Isaac.GetItemIdByName("Curse Foot")
artifact_labrys_item = Isaac.GetItemIdByName("Artifact Labrys")
artifact_lancea_item = Isaac.GetItemIdByName("Artifact Lancea")
artifact_moralltach_item = Isaac.GetItemIdByName("Artifact Moralltach")
artifact_beagalltach_item = Isaac.GetItemIdByName("Artifact Beagalltach")
artifact_aegis_item = Isaac.GetItemIdByName("Artifact Aegis")
artifact_achilleshield_item = Isaac.GetItemIdByName("Artifact Achilleshield")
artifact_chakram_item = Isaac.GetItemIdByName("Artifact Chakram")
dduckrack_item = Isaac.GetItemIdByName("Ethereum")
psyfly_item = Isaac.GetItemIdByName("Psy Fly")
spooky_item = Isaac.GetItemIdByName("2Spooky")
fortcookie_item = Isaac.GetItemIdByName("Fortune Cookie")
boospack_item = Isaac.GetItemIdByName("Booster Pack")
bok_E_sibal_shake_it_item = Isaac.GetItemIdByName("Artifact Ignition")
bok_E_gae_ship_shake_it_item = Isaac.GetItemIdByName("Artifact Sanctum")
hey_bok_dont_do_that_item = Isaac.GetItemIdByName("Red Cube")
bok_E_tuk_burumyeon_an_om_item = Isaac.GetItemIdByName("Black Cube")
mweoyo_item = Isaac.GetItemIdByName("Code Geass")
u_ang_jyoo_gum_item = Isaac.GetItemIdByName("Blood Drive")
A_nae_noon_item = Isaac.GetItemIdByName("Mirror")
yusa_guppy_item = Isaac.GetItemIdByName("Hlminth") --눈물 공격 시 100% 자폭 거미 소환
yusa_cleaner_item = Isaac.GetItemIdByName("Empty") --사용 시 항시 클리너 효과, 데미지 50% 증가

garbage_item = Isaac.GetItemIdByName("Artifacts Unleashed") -- 웨폰마스터 기본템
akma_item = Isaac.GetItemIdByName("Rank-Up-Magic The Seventh One") -- 15원 있어야 사용가능, 1분마다 악마방 아이템 소환 (일회용)
angel_item = Isaac.GetItemIdByName("Rank-Up-Magic Limited Barian's Force") -- 15원 있어야 사용가능, 2분마다 천사방 아이템 소환 (일회용)
double_item = Isaac.GetItemIdByName("Rank-Up-Magic Admiration of the Thousands") -- 15원 있어야 사용가능, 2분마다 20/20 아이템 소환 (일회용)
money_genesis_item = Isaac.GetItemIdByName("Artifact Vajra") -- 사용 시 현재 소지한 1코인 = 1% 확률로 제네시스 눈물 효과 적용 (일회용)
money_add_damage_item = Isaac.GetItemIdByName("Artifact Failnaught") -- 사용 시 현재 소지한 1코인 = 1% 추가 데미지 (일회용)
omfg_sagi_item = Isaac.GetItemIdByName("38") -- 사용 시 50% / 현재 코인 수치 2배 증가, 실패 시 모든 코인 삭제 (최대 3회)
alltech_item = Isaac.GetItemIdByName("Absolute Tech") -- 소지 시 테크X, 테크1, 테크2 캐릭터에게 추가되며, 다른 Mom's Knife, Brimstone, Epic Fetus, cleaner_item, enocent_item "배열 제거

hweng_hol_item = Isaac.GetItemIdByName("Sensory Satisfaction") --황홀
samsingi_item = Isaac.GetItemIdByName("Ancient Civilization") --삼신기
jongma_item = Isaac.GetItemIdByName("Refined Otherverse Magic Stone") --정마
gim_luke_item = Isaac.GetItemIdByName("Heblon's Monarch") --루크
er_gong_item = Isaac.GetItemIdByName("Ice Princess Breath") --얼공

jjap_raptor_item = Isaac.GetItemIdByName("A") --유사 랩터즈포스
rainbowdead_item = Isaac.GetItemIdByName("Rainbow Guppy's Dead Cat")
rainbowpaw_item = Isaac.GetItemIdByName("Rainbow Guppy's Paw")
rainbowtail_item = Isaac.GetItemIdByName("Rainbow Guppy's Tail")
ne_item = Isaac.GetItemIdByName("Spirit Circuits")
da_item = Isaac.GetItemIdByName("Flugel")
ssip_item = Isaac.GetItemIdByName("Suniastar")
mangsang_item = Isaac.GetItemIdByName("Delusion")
hondon_item = Isaac.GetItemIdByName("Confusion")
hwangak_item = Isaac.GetItemIdByName("Hallucination")
ac_item = Isaac.GetItemIdByName("Initial Stone")
ti_item = Isaac.GetItemIdByName("Void Genome")
ve_item = Isaac.GetItemIdByName("Flowers of Prayer")
de_item = Isaac.GetItemIdByName("Execution of Justice : Fair")
fen_item = Isaac.GetItemIdByName("Enforcement of Justice: Judgment")
ce_item = Isaac.GetItemIdByName("Enforcement of Justice: Equality")
chaosSt_item = Isaac.GetItemIdByName("A Mouth-eaten Mouth")
chaosNd_item = Isaac.GetItemIdByName("The Hand of Greed")
chaosRd_item = Isaac.GetItemIdByName("A Slothful Foot")
injecA_item = Isaac.GetItemIdByName("Blood Grail")
injecB_item = Isaac.GetItemIdByName("Blood Grail 2")
injecC_item = Isaac.GetItemIdByName("Curse Grail")
godheadA_item = Isaac.GetItemIdByName("Aquamarine")
godheadB_item = Isaac.GetItemIdByName("Peridot")
godheadC_item = Isaac.GetItemIdByName("Lapis Lazuli")
maxoverA_item = Isaac.GetItemIdByName("Werry: Limit Breaker P")
maxoverB_item = Isaac.GetItemIdByName("Power Bond P")
maxoverC_item = Isaac.GetItemIdByName("Limiter Removal P")
moneyA_item = Isaac.GetItemIdByName("Ripple")
moneyB_item = Isaac.GetItemIdByName("Stellar Lumen")
moneyC_item = Isaac.GetItemIdByName("Litecoin")
randomset_item = Isaac.GetItemIdByName("Master Key")

--ranTechX_item = Isaac.GetItemIdByName("1")
exDmgDble_item = Isaac.GetItemIdByName("Holy Symbol")
--actLuck_item = Isaac.GetItemIdByName("3")

yuryoBrim_item = Isaac.GetItemIdByName("Azazel's Eye")
--yuryoKarl_item = Isaac.GetItemIdByName("Azazel's Dick")
--yuryoTech_item = Isaac.GetItemIdByName("Azazel's Ball")

--gungeoncopy_item = Isaac.GetItemIdByName("sinseongmurdoc")
--realChamp_item = Isaac.GetItemIdByName("5")

maxoverDmg_item = Isaac.GetItemIdByName("Intel I7-8700K")
--stopCopyHy_item = Isaac.GetItemIdByName("7")
--soulpower_item = Isaac.GetItemIdByName("8")
--extradamage_item = Isaac.GetItemIdByName("9")
i_cant_understand_item = Isaac.GetItemIdByName("Neutrality")


-- 카드 등록
hermit_stars_card = Isaac.GetCardIdByName("HermitStars")

-- 코스튬 등록
morphine_costume = Isaac.GetCostumeIdByPath("gfx/characters/costumes/morphine.anm2")
tramp_costume = Isaac.GetCostumeIdByPath("gfx/characters/costumes/tramp_of_babylon.anm2")

-- 각종 변수
hasMorphine = false

hasBackpack = false
heldItem = 0
heldItemCharge = 0
storedItem = 0
storedItemCharge = 0
batteryCharge = 0

swapBuffer = 0
debugBuffer = 0

useItemFrame = 0

config = Isaac.GetItemConfig()
storedItemSprite = Sprite()
storedItemSprite:Load("backpack_storeditem.anm2")
storedItemSprite:Play("Idle")
specialSprite1 = Sprite()
specialSprite1:Load("rair_storeditem.anm2")
specialSprite1:Play("Idle")
specialSprite2 = Sprite()
specialSprite2:Load("rair_storeditem.anm2")
specialSprite2:Play("Idle")
specialSprite3 = Sprite()
specialSprite3:Load("rair_storeditem.anm2")
specialSprite3:Play("Idle")
specialSprite4 = Sprite()
specialSprite4:Load("rair_storeditem.anm2")
specialSprite4:Play("Idle")
specialSprite5 = Sprite()
specialSprite5:Load("rair_storeditem.anm2")
specialSprite5:Play("Idle")

setSprite = {};
for i=1, setnumber do
	setSprite[i] = Sprite()
	setSprite[i]:Load("rair_storeditem.anm2")
	setSprite[i]:Play("Idle")
end

werryContinue = 0
powerBondContinue = 0
limiterRemovalContinue = 0
covContinue = 0
quickChaosContinue = 0
megaContinue = 0
stopwatchContinue = 0
cipherContinue = 0
hippoContinue = 0
isWerryTimeOut = true
isPowerBondTimeOut = true
isLimiterRemovalTimeOut = true
isCovTimeOut = true
isQuickChaosTimeOut = true
isMegaBlastTimeOut = true
isWatchTimeOut = true
isHippoTimeOut = true
maxDmg = 0
soulpowerVar = false

errorTeleportStartedFrame = -1
UGTeleportStartedFrame = -1

isforcesuccess = 0
isamplisuccess = 0

shadowremove = false

specialremove = false;

bonusmultiple = 0;

pearlrandom = math.random(0,3)
eterbanji = 0
roomiscleared = 0
roomseedisold = 0
ranscroll = 0
aricooldown = 0

curseroom = {
	symbol_item,
	venus_item,
	scent_item,
	memory_item,
	fars_item,
	cpb_item,
	cpn_item,
	solfon_item,
	tenenu_item,
	lumen_item,
	cpr_item,
	51,
	rosetta_item,
	81,
	133,
	134,
	212,
	rdmsb_item,
	rcsn_item,
	rasr_item,
	411
}
specialitem = {
	powerbond_item,
	18,
	64,
	69,
	aguppy_item,
	157,
	169,
	172,
	182,
	203,
	221,
	223,
	261,
	286,
	310,
	311,
	313,
	331,
	spect_item,
	360,
	389,
	393,
	415,
	419,
	424,
	496,
	500,
	503,
	bok_E_tuk_burumyeon_an_om_item, 
	bok_E_gae_ship_shake_it_item,
	bok_E_sibal_shake_it_item,
	477,
	ascroll_item,
	108,
	301,
	449,
	exDmgDble_item,
	maxoverDmg_item,
	88,
	399
}

specialitemp = {
	18,
	64,
	69,
	aguppy_item,
	157,
	169,
	172,
	182,
	203,
	213,
	223,
	261,
	310,
	311,
	313,
	360,
	389,
	393,
	415,
	424,
	500,
	331,
	496,
	spect_item,
	221,
	494,
	524,
	503,
	108,
	301,
	449,
	exDmgDble_item,
	maxoverDmg_item,
	88,
	399
}

attacktype = {
	68,
	114,
	118,
	168,
	395,
	asulf_item
}

setitem = {
	venus_item,
	scent_item,
	memory_item, --1
	rosettap_item,
	symbolp_item,
	farsp_item, --2
	rcsn_item,
	rasr_item,
	rdmsb_item, --3
	lumen_item,
	tenenu_item,
	solfon_item, --4
	cpb_item,
	cpn_item,
	cpr_item, --5
	rainbowdead_item,
	rainbowtail_item,
	rainbowpaw_item, --6
	ne_item,
	da_item,
	ssip_item, --7
	mangsang_item,
	hondon_item,
	hwangak_item, --8
	ac_item,
	ti_item,
	ve_item, --9
	de_item,
	fen_item,
	ce_item, --10
	chaosSt_item,
	chaosNd_item,
	chaosRd_item, --11
	injecA_item,
	injecB_item,
	injecC_item, --12
	godheadA_item,
	godheadB_item,
	godheadC_item, --13
	maxoverA_item,
	maxoverB_item,
	maxoverC_item, --14
	moneyA_item,
	moneyB_item,
	moneyC_item --15
}

guppyParts={
	81,
	133,
	134,
	145,
	187,
	212
}

spiceused = 0
spicepenalty = 1
spiceuse = false
cipheruse = false
soulshaveuse = false
soulshaveContinue = 0
trinityused = 0
trinityuse = false
skipContinue = 0
skipuse = false
chaoschar = false
EnvyContinue = 0
isEnvyTimeOut = true
PrideUse = false
footrandom = math.random(2,5)
MonoContinue = 0
isMonoTimeOut = true
momlessscroll = 1
deathdoubleforce_ha_wi_ho_hwan_item_var = 0
succusohwan_item_var = 0
artifact_moralltach_item_var = 0
artifact_beagalltach_item_var = 0
dealnurfvar = 1
agravityVar = 0
artifact_aegis_itemVar = 0
artifact_achilleshield_itemVar = 0
FRageVar = true
RevolutionContinue = 0
isRevolutionTimeOut = true
RaidContinue = 0
isRaidTimeOut = true
ArgentContinue = 0
isArgentTimeOut = true
ethereumVar = 0
bok_a_jeong_sin_cha_ri_ja = false
bok_a_mal_jom_dureora = 0
RedCubeVar = 0
BlackCubeVar = 0
omfg_sagiVar = 0;
YusaCleanerVar = false
akmaVar = false
akmaTime = 0
angelVar = false
angelTime = 0
doubleVar = false
doubleTime = 0
JeongMaVar = false
bonVar = 0
juaShadVar = false
voidVar = 0

money_genesis = 0;
money_add_damage = 0;

specialitem1 = 0
specialitem2 = 0
specialitem3 = 0
specialitem4 = 0
specialitem5 = 0

setcheck = {};
for i=1, setnumber do
	setcheck[i] = 0;
end

plusluck = 0
extraDamage = 0
hosVar = 0
wGoldVar = 0

recall = require "recall"

function getFlag(arr, currentFlag) -- 눈물 상태 함수
    number = currentFlag;
   
    for i = 1, #arr do
        number = number | 2^(arr[i] - 1);
    end
   
    return number;
end

function ChaosGreed:Item1(player, cacheFlag) -- items.xml의 cacheFlag를 불러오는 과정
	player = Isaac.GetPlayer(0)

	if (cacheFlag == CacheFlag.CACHE_DAMAGE) then -- 아이템 획득 시 cacheFlag가 데미지면
		if player:HasCollectible(doveb_item) then -- 176 획득했을 시
			player.Damage = player.Damage + 9.99 -- 데미지 +9.99
		end
		if player:HasCollectible(millstone_item) then -- 25를 획득했을 시
			player.Damage = player.Damage + (2 * player:GetCollectibleNum(millstone_item)) -- 2의 데미지를 25를 획득한 수 만큼 증가
		end
		if player:HasCollectible(317) then
			player.Damage = player.Damage + 3
		end
		if player:HasCollectible(90) then
			player.Damage = player.Damage + 5
		end
		player.Damage = player.Damage + (10 * isamplisuccess) + (5 * isforcesuccess) + ranscroll
		if spiceuse == true then
			player.Damage = player.Damage - spiceused
		end
		if trinityuse == true then
			player.Damage = player.Damage - trinityused
		end
		--[[if player:HasCollectible(soulpower_item) then
			player.Damage = player.Damage + (1.5 * player:GetCollectibleNum(381))
		end--]]
		if shadowremove == true then
			player.Damage = player.Damage * 1.5
		end
		if player:HasCollectible(411) then
			if player:HasCollectible(149) and player:HasCollectible(68) == false and player:HasCollectible(114) == false and player:HasCollectible(395) == false then
				player.Damage = ((player.Damage-40)*1.1)+40 -- 40 먼저 빼고 1.3를 곱해서 다시 40 더한다.
			else -- 아니면
				player.Damage = player.Damage * 1.1 -- 그냥 1.3배
			end
		end
		if player:HasCollectible(442) then
			if player:HasCollectible(149) and player:HasCollectible(68) == false and player:HasCollectible(114) == false and player:HasCollectible(395) == false then
				player.Damage = ((player.Damage-40)*1.3)+40 -- 40 먼저 빼고 1.3를 곱해서 다시 40 더한다.
			else -- 아니면
				player.Damage = player.Damage * 1.3 -- 그냥 1.3배
			end
		end
		if player:HasCollectible(213) then
			if player:HasCollectible(149) and player:HasCollectible(68) == false and player:HasCollectible(114) == false and player:HasCollectible(395) == false then
				player.Damage = ((player.Damage-40)*1.3)+40 -- 40 먼저 빼고 1.3를 곱해서 다시 40 더한다.
			else -- 아니면
				player.Damage = player.Damage * 1.1 -- 그냥 1.3배
			end
		end
		if player:HasCollectible(3) then
			if player:HasCollectible(149) and player:HasCollectible(68) == false and player:HasCollectible(114) == false and player:HasCollectible(395) == false then
				player.Damage = ((player.Damage-40)*1.05)+40 -- 40 먼저 빼고 1.3를 곱해서 다시 40 더한다.
			else -- 아니면
				player.Damage = player.Damage * 1.05 -- 그냥 1.3배
			end
		end
		if player:HasCollectible(503) then
			if player:HasCollectible(149) and player:HasCollectible(68) == false and player:HasCollectible(114) == false and player:HasCollectible(395) == false then
				player.Damage = ((player.Damage-40)*1.5)+40 -- 40 먼저 빼고 1.3를 곱해서 다시 40 더한다.
			else -- 아니면
				player.Damage = player.Damage * 1.1 -- 그냥 1.3배
			end
		end
		if PrideUse == true then
			if player:HasCollectible(149) and player:HasCollectible(68) == false and player:HasCollectible(114) == false and player:HasCollectible(395) == false then
				player.Damage = ((player.Damage-40)*0.5)+40 -- 40 먼저 빼고 1.3를 곱해서 다시 40 더한다.
			else -- 아니면
				player.Damage = player.Damage * 0.5 -- 그냥 1.3배
			end
		end
		if player:HasCollectible(eyes_item) and player.Luck >= 0 then
			if player:HasCollectible(149) and player:HasCollectible(68) == false and player:HasCollectible(114) == false and player:HasCollectible(395) == false then
				player.Damage = ((player.Damage-40)*(math.floor(player.Luck)/20+1))+40 -- 40 먼저 빼고 1.3를 곱해서 다시 40 더한다.
			else -- 아니면
				player.Damage = player.Damage * (math.floor(player.Luck)/10+1) -- 그냥 1.3배
			end
		end
		if player:HasCollectible(venus_item) and player:HasCollectible(scent_item) and player:HasCollectible(memory_item) then
			if player:HasCollectible(149) and player:HasCollectible(68) == false and player:HasCollectible(114) == false and player:HasCollectible(395) == false then
				player.Damage = ((player.Damage-40)*1.5)+40 -- 40 먼저 빼고 1.3를 곱해서 다시 40 더한다.
			else -- 아니면
				player.Damage = player.Damage * 1.5 -- 그냥 1.3배
			end
		end
		player.Damage = player.Damage * momlessscroll

		player.Damage = player.Damage * dealnurfvar

		if player:GetPlayerType() == 3 then
			if player:HasCollectible(149) and player:HasCollectible(68) == false and player:HasCollectible(114) == false and player:HasCollectible(395) == false then
				player.Damage = ((player.Damage-40)*1.25)+40 -- 40 먼저 빼고 1.3를 곱해서 다시 40 더한다.
			else -- 아니면
				player.Damage = player.Damage * 1.25 -- 그냥 1.3배
			end
		end
		if player:GetPlayerType() ~= 3 then
			if player.Damage > 200+maxDmg then --데미지 제한
				player.Damage = 200+maxDmg;
			end
		else
			if player.Damage > 300+maxDmg then --데미지 제한
				player.Damage = 300+maxDmg;
			end
		end
		
		if isPowerBondTimeOut == false then
			player.Damage = player.Damage * 4
		end
		if isLimiterRemovalTimeOut == false then
			player.Damage = player.Damage * 2
		end
		if isWerryTimeOut == false then -- 아직 지속 시간이라면
			player.Damage = player.Damage + 30
		end
		if isCovTimeOut == false then
			player.Damage = player.Damage + 20
		end
		if isMegaBlastTimeOut == false then
			player.Damage = player.Damage + 200
		end
		if isHippoTimeOut == false then
			player.Damage = player.Damage + 5000
		end
	end
	if (cacheFlag == CacheFlag.CACHE_RANGE) then -- 아이템 획득 시 cacheFlag가 사거리면
		if player:HasCollectible(237) then
			player.TearHeight = player.TearHeight - 13
		end
		if player:HasCollectible(221) then
			player.TearHeight = player.TearHeight + player.TearHeight
		end
	end
	if (cacheFlag == CacheFlag.CACHE_SPEED) then -- 아이템 획득 시 cacheFlag가 스피드면
		if player:HasCollectible(millstone_item) then -- 25를 획득했을 시
			player.MoveSpeed = player.MoveSpeed + (0.2 * player:GetCollectibleNum(millstone_item)) -- 0.2의 스피드를 25를 획득한 수 만큼 증가
		end
		if player:HasCollectible(66) then 
			player.MoveSpeed = player.MoveSpeed + 2.0 
		end
		if player:HasCollectible(sonicboom_item) then
			player.MoveSpeed = player.MoveSpeed + 10.0
		end
		if isMegaBlastTimeOut == false then
			player.MoveSpeed = player.MoveSpeed + 2.0
		end
		if spiceuse == true then
			player.MoveSpeed = player.MoveSpeed - (spiceused /10)
		end
		if trinityuse == true then
			player.MoveSpeed = player.MoveSpeed - (trinityused/10)
		end
	end
	if (cacheFlag == CacheFlag.CACHE_LUCK) then -- 아이템 획득 시 CacheFlag가 운이면
		player.Luck = player.Luck + plusluck
		if player:HasCollectible(46) then -- 46 획득했을 시
			player.Luck  = player.Luck + footrandom -- 럭 4 증가
		end
		if player:HasCollectible(clover_item) then
			player.Luck  = player.Luck + 7
		end
		if player:HasCollectible(injecA_item) and player:HasCollectible(injecB_item) and player:HasCollectible(injecC_item) then
			player.Luck  = player.Luck + 10
		end
		if player:HasCollectible(355) then
			player.Luck = player.Luck + pearlrandom
		end
		if spiceuse == true then
			player.Luck = player.Luck - spiceused
		end
		if trinityuse == true then
			player.Luck = player.Luck - trinityused
		end
	end
	if (cacheFlag == CacheFlag.CACHE_TEARFLAG) then
		if player:HasCollectible(spect_item) then -- 339 획득
			player.TearFlags = getFlag({38}, player.TearFlags); -- 38번 플래그를 줌
		end
		if player:HasCollectible(401) then -- 401 획득
			player.TearFlags = getFlag({36}, player.TearFlags); -- 36번 플래그를 줌
		end
		if player:HasCollectible(cp2_item) then 
			player.TearFlags = getFlag({48}, player.TearFlags); 
		end
		if player:HasCollectible(428) then 
			player.TearFlags = getFlag({2,3,4,14,15,21}, player.TearFlags); 
		end
		if player:HasCollectible(529) then
			player.TearFlags = getFlag({2}, player.TearFlags);
		end
		if player:HasCollectible(237) then
			player.TearFlags = getFlag({20}, player.TearFlags);
		end
		if player:HasCollectible(34) then
			player.TearFlags = getFlag({2,51}, player.TearFlags);
		end
		if player:HasCollectible(213) then
			player.TearFlags = getFlag({2}, player.TearFlags);
		end
		if player:HasCollectible(3) then
			player.TearFlags = getFlag({2}, player.TearFlags);
		end
		if player:HasCollectible(331) then
			player.TearFlags = getFlag({2}, player.TearFlags);
		end
		if isMegaBlastTimeOut == false then
			player.TearFlags = getFlag({3}, player.TearFlags);
		end
		for i=1,(#setitem)/3 do
			if (player:HasCollectible(setitem[3*i-2]) and player:HasCollectible(setitem[3*i-1])) or
			(player:HasCollectible(setitem[3*i-2]) and player:HasCollectible(setitem[3*i])) or
			(player:HasCollectible(setitem[3*i-1]) and player:HasCollectible(setitem[3*i])) then
				player.TearFlags = getFlag({2}, player.TearFlags);
			end
		end
	end
	if (cacheFlag == CacheFlag.CACHE_SHOTSPEED) then
		if player:HasCollectible(237) then
			player.ShotSpeed = player.ShotSpeed + 3
		end
	end
	if cacheFlag == CacheFlag.CACHE_FIREDELAY then
		if player:HasCollectible(237) then
			player.MaxFireDelay = player.MaxFireDelay + 10
		end
		if player:HasCollectible(galactic_item) then
			player.MaxFireDelay = player.MaxFireDelay - 1
		end
		player.MaxFireDelay = player.MaxFireDelay + ethereumVar
	end
	if (cacheFlag == CacheFlag.CACHE_FLYING) then
		if player:HasCollectible(122) then
			player.CanFly = true
		end
		for i=1,(#setitem)/3 do
			if player:HasCollectible(setitem[3*i-2]) and player:HasCollectible(setitem[3*i-1]) and player:HasCollectible(setitem[3*i]) then
				player.CanFly = true
			end
		end
	end
end

ChaosGreed:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, ChaosGreed.Item1)

function ChaosGreed:PlayerInit(player)
	hasMorphine = false

	if Game():GetFrameCount() < 5 then
		Isaac.SaveModData(ChaosGreed, "0,0,0")
		Isaac.DebugString("New Run");
		heldItem = 0
		heldItemCharge = 0
		storedItem = 0
		storedItemCharge = 0
		swapBuffer = 0
		debugBuffer = 0
		useItemFrame = 0
		werryContinue = 0
		powerBondContinue = 0
		limiterRemovalContinue = 0
		covContinue = 0
		quickChaosContinue = 0
		megaContinue = 0
		isWerryTimeOut = true
		isPowerBondTimeOut = true
		isLimiterRemovalTimeOut = true
		isCovTimeOut = true
		isQuickChaosTimeOut = true
		isMegaBlastTimeOut = true
		isforcesuccess = 0
		isamplisuccess = 0
		shadowremove = false
		spiceused = 0
		spicepenalty = 1
		spiceuse = false
		stopwatchContinue = 0
		isWatchTimeOut = true
		cipherContinue = 0
		cipheruse = false
		pearlrandom = math.random(0,3)
		eterbanji = 0
		errorTeleportStartedFrame = -1
		UGTeleportStartedFrame = -1
		roomiscleared = 0
		roomseedisold = 0
		ranscroll = 0
		soulshaveuse = false
		soulshaveContinue = 0
		hippoContinue = 0
		isHippoTimeOut = true
		trinityused = 0
		trinityuse = false
		isEnvyTimeOut = true
		EnvyContinue = 0
		PrideUse = false
		footrandom = math.random(2,5)
		MonoContinue = 0
		isMonoTimeOut = true
		momlessscroll = 1
		deathdoubleforce_ha_wi_ho_hwan_item_var = 0
		succusohwan_item_var = 0
		artifact_moralltach_item_var = 0
		artifact_beagalltach_item_var = 0
		dealnurfvar = 1
		agravityVar = 0
		artifact_aegis_itemVar = 0
		artifact_achilleshield_itemVar = 0
		FRageVar = true
		RevolutionContinue = 0
		isRevolutionTimeOut = true
		RaidContinue = 0
		isRaidTimeOut = true
		ArgentContinue = 0
		isArgentTimeOut = true
		ethereumVar = 0
		bok_a_jeong_sin_cha_ri_ja = false
		bok_a_mal_jom_dureora = 0
		timer:Init()
		BoosterPackBoolean = false
		RedCubeVar = 0
		BlackCubeVar = 0
		omfg_sagiVar = 0;
		YusaCleanerVar = false
		akmaVar = false
		akmaTime = 0
		angelVar = false
		angelTime = 0
		doubleVar = false
		doubleTime = 0
		JeongMaVar = false
		money_genesis = 0;
		specialitem1 = 0
		specialitem2 = 0
		specialitem3 = 0
		specialitem4 = 0
		specialitem5 = 0
		specialremove = false;
		setcheck = {};
		for i=1, setnumber do
			setcheck[i] = 0;
		end
		bonusmultiple = 0;
		skipuse = false;
		skipContinue = 0;
		aricooldown = 0
		extraDamage = 0
		hosVar = 0
		maxDmg = 0
		wGoldVar = 0
		soulpowerVar = false
		juaShadVar = false
		plusluck = 0;
		voidVar = 0
		if player:GetPlayerType() == 3 then
			player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
		end
	end
	saveData = Isaac.LoadModData(ChaosGreed)
	a, b, c = saveData:match("([^,]+),([^,]+),([^,]+)")
	storedItem = tonumber(a)
	storedItemCharge = tonumber(b)
	batteryCharge = tonumber(c)
	if storedItem ~= 0 then
		storedItemSprite:ReplaceSpritesheet(0, config:GetCollectible(storedItem).GfxFileName)
		storedItemSprite:LoadGraphics()
		Isaac.DebugString("Graphics Loaded");
	end
	Isaac.DebugString("Backpack Loaded");
end

ChaosGreed:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, ChaosGreed.PlayerInit);

function ChaosGreed:Item2(currentPlayer) -- 패시브 설정용 함수

	player = Isaac.GetPlayer(0) -- 플레이어 변수 설정
	entities = Isaac.GetRoomEntities()
	
	if player:HasCollectible(maxoverDmg_item) then
		maxDmg = 100;
	end
	if isWerryTimeOut == false and werryContinue <= Game().TimeCounter then -- 지속 시간이 아니고 아직 처리하지 않았다면
		isWerryTimeOut = true
		player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
		player:EvaluateItems()
	end
	if isPowerBondTimeOut == false and powerBondContinue <= Game().TimeCounter then
		isPowerBondTimeOut = true
		player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
		player:EvaluateItems()
	end
	if isLimiterRemovalTimeOut == false and limiterRemovalContinue <= Game().TimeCounter then
		isLimiterRemovalTimeOut = true
		player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
		player:EvaluateItems()
	end
	if isCovTimeOut == false and covContinue <= Game().TimeCounter then
		isCovTimeOut = true
		player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
		player:EvaluateItems()
	end
	if isQuickChaosTimeOut == false and quickChaosContinue <= Game().TimeCounter then
		isQuickChaosTimeOut = true
		player:RemoveCollectible(402) -- 카오스 삭제
		player:RemoveCollectible(402)
	end
	if isMegaBlastTimeOut == false and megaContinue <= Game().TimeCounter then
		isMegaBlastTimeOut = true
		player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
		player:AddCacheFlags(CacheFlag.CACHE_TEARFLAG)
		player:AddCacheFlags(CacheFlag.CACHE_SPEED)
		player:EvaluateItems()
	end
	if isWatchTimeOut == false and stopwatchContinue <= Game().TimeCounter then
		isWatchTimeOut = true
	end
	if stopwatchContinue == Game().TimeCounter then
		player:AddCollectible(232,0,true)
	end
	if cipheruse == true and cipherContinue <= Game().TimeCounter then
		cipheruse = false
		Isaac.Spawn(5, 100,specialitem[math.random(1,#specialitem)], Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
	end
	if soulshaveuse == true and soulshaveContinue <= Game().TimeCounter then
		soulshaveuse = false
		i = math.random(1,4)
		if i == 1 then
			Isaac.Spawn(5, 100, 64, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		elseif i == 2 then
			Isaac.Spawn(5, 100, 203, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		elseif i == 3 then
			Isaac.Spawn(5, 100, 18, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		else
			Isaac.Spawn(5, 350, 52, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		end
	end
	if isHippoTimeOut == false and hippoContinue <= Game().TimeCounter then
		isHippoTimeOut = true
		player:RemoveCollectible(114)
		player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
		player:EvaluateItems()
	end
	if skipuse == true and skipContinue <= Game().TimeCounter then
		skipuse = false
		player:AnimateTeleport(true)
		UGTeleportStartedFrame = Game():GetFrameCount()
	end
	if isEnvyTimeOut == false and EnvyContinue <= Game().TimeCounter then
		isEnvyTimeOut = true
		player:RemoveCollectible(402)
	end
	if isMonoTimeOut == false and MonoContinue <= Game().TimeCounter then
		isMonoTimeOut = true
		i = math.random(1,3)
		if i == 1 then
			Isaac.Spawn(5, 100, solfon_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		elseif i == 2 then
			Isaac.Spawn(5, 100, tenenu_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		else
			Isaac.Spawn(5, 100, lumen_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		end
	end
	if isRevolutionTimeOut == false and RevolutionContinue <= Game().TimeCounter then
		i = math.random(1,12)
		for j = 1, 2 do
			if i == 1 then
				Isaac.Spawn(5, 100, quickchaos_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			elseif i == 2 then
				Isaac.Spawn(5, 100, skipforce_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			elseif i == 3 then
				Isaac.Spawn(5, 100, deathdoubleforce_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			elseif i == 4 then
				Isaac.Spawn(5, 100, astral_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			elseif i == 5 then
				Isaac.Spawn(5, 100, cipher_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			elseif i == 6 then
				Isaac.Spawn(5, 100, raptor_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			elseif i == 7 then
				Isaac.Spawn(5, 100, Isaac.GetItemIdByName("Rank-Up-Magic Raid Force"), Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			elseif i == 8 then
				Isaac.Spawn(5, 100, Isaac.GetItemIdByName("Rank-Up-Magic Argent Chaos Force"), Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			elseif i == 9 then
				Isaac.Spawn(5, 100, angel_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			elseif i == 10 then
				Isaac.Spawn(5, 100, akma_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			elseif i == 11 then
				Isaac.Spawn(5, 100, double_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			else
				Isaac.Spawn(5, 100, soulshave_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			end
		end
		isRevolutionTimeOut = true
	end
	if isRaidTimeOut == false and RaidContinue <= Game().TimeCounter then
		for i = 1,2 do
			Isaac.Spawn(5, 100, Game():GetItemPool():GetCollectible(ItemPoolType.POOL_GREED_ANGEL, true, player:GetCollectibleRNG(Isaac.GetItemIdByName("Rank-Up-Magic Raid Force")):GetSeed()), Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		end
		isRaidTimeOut = true
	end
	if isArgentTimeOut == false and ArgentContinue <= Game().TimeCounter then
		for i = 1,2 do
			Isaac.Spawn(5, 100, Game():GetItemPool():GetCollectible(ItemPoolType.POOL_GREED_DEVIL, true, player:GetCollectibleRNG(Isaac.GetItemIdByName("Rank-Up-Magic Argent Chaos Force")):GetSeed()), Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		end
		isArgentTimeOut = true
	end
	if Game():GetLevel():GetStage() == 1 then
		Game():GetLevel():RemoveCurses();
	end
	if Game():GetLevel():GetStage() == 7 then
		if player:HasCollectible(175) then
			player:RemoveCollectible(175)
		end
		if player:HasCollectible(78) then
			player:RemoveCollectible(78)
		end
		if player:HasCollectible(hippo_item) then
			player:RemoveCollectible(hippo_item)
		end
	end
	if errorTeleportStartedFrame ~= -1 then
		if errorTeleportStartedFrame + 19 <= Game():GetFrameCount() then
			Game():ChangeRoom(Game():GetLevel():QueryRoomTypeIndex(RoomType.ROOM_ERROR, true, RNG()))
			errorTeleportStartedFrame = -1
			player:AnimateTeleport(false)
		end
	end
	if UGTeleportStartedFrame ~= -1 then
		if UGTeleportStartedFrame + 19 <= Game():GetFrameCount() then
			Isaac.ExecuteCommand("stage 7")
			UGTeleportStartedFrame = -1
			player:AnimateTeleport(false)
		end
	end

	if player:HasCollectible(plunger_item) then
		for i = 1, #entities do
			if entities[i]:IsVulnerableEnemy() then
				if ((player.Position.X - entities[i].Position.X)^2 + (player.Position.Y - entities[i].Position.Y)^2)^0.5 <= 150 then
					entities[i]:AddPoison(EntityRef(player),2,1)
				end
			end
		end
	end

	if player:HasCollectible(solfon_item) and player:HasCollectible(tenenu_item) and player:HasCollectible(lumen_item) then
		for i = 1, #entities do
			if entities[i]:IsVulnerableEnemy() then
				if ((player.Position.X - entities[i].Position.X)^2 + (player.Position.Y - entities[i].Position.Y)^2)^0.5 <= 300 then
					entities[i]:TakeDamage(player.Damage*15/100, 0, EntityRef(player), 1)
				end
			end
		end
	end

	if isWatchTimeOut == false then
		for i = 1, #entities do
			if entities[i]:IsVulnerableEnemy() then
				if ((player.Position.X - entities[i].Position.X)^2 + (player.Position.Y - entities[i].Position.Y)^2)^0.5 <= 300 then
					entities[i]:AddSlowing(EntityRef(player),1,20,Color(0.5, 0.5, 0.5, 1, 0, 0, 0))
				end
			end
		end
	end

	if player:HasCollectible(mweoyo_item) then
		for i = 1, #entities do
			if entities[i]:IsVulnerableEnemy() then
				if ((player.Position.X - entities[i].Position.X)^2 + (player.Position.Y - entities[i].Position.Y)^2)^0.5 <= 300 then
					entities[i]:AddCharmed(1)
				end
			end
		end
	end

	if player:HasCollectible(rdmsb_item) and player:HasCollectible(rcsn_item) and player:HasCollectible(rasr_item) and (Game().TimeCounter % 3600 == 0 or JeongMaVar == false) then
		Isaac.Spawn(5, 100, Game():GetItemPool():GetCollectible(ItemPoolType.POOL_GREED_DEVIL, true, player:GetCollectibleRNG(rdmsb_item):GetSeed()), Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		JeongMaVar = true
	end
	if player:HasCollectible(cpn_item) and player:HasCollectible(cpb_item) and player:HasCollectible(cpr_item) and Game().TimeCounter % 3600 == 0 then
		Isaac.Spawn(5, 10, 3, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
	end
	if player:HasCollectible(venus_item) and player:HasCollectible(memory_item) and player:HasCollectible(scent_item) and Game().TimeCounter % 3600 == 0 then
		plusluck = plusluck + 1
		player:AddCacheFlags(CacheFlag.CACHE_LUCK)
	end

	if player:HasCollectible(chry_item) then
		player:Die()
	end

	-- 타이머 갱신
	timer:Renew()

	for i=1, #entities do
		if entities[i]:IsVulnerableEnemy() and entities[i]:GetData().AquVar == true and Game().TimeCounter % 15 == 0 and entities[i]:ToNPC():IsBoss() then
			splashTear = player:FireTear(entities[i].Position, Vector(player.ShotSpeed*10,0):Rotated(math.random(360)), true,true,false)
			splashTear:ToTear().FallingSpeed = player.TearHeight*.5*(math.random()*.75+.5)
			splashTear:ToTear().FallingAcceleration = 1.3
			splashTear:ToTear().TearFlags = splashTear:ToTear().TearFlags |TearFlags.TEAR_PIERCING
		end
	end

	if bok_a_jeong_sin_cha_ri_ja == true and (Game().TimeCounter - bok_a_mal_jom_dureora) ~= 0 and (Game().TimeCounter - bok_a_mal_jom_dureora) % 1800 == 0 then
		player:AddCollectible(417,0,false)
	end
	if akmaVar == true and (Game().TimeCounter - akmaTime) ~= 0 and (Game().TimeCounter - akmaTime) % 1800 == 0 then
		Isaac.Spawn(5, 100, Game():GetItemPool():GetCollectible(ItemPoolType.POOL_GREED_DEVIL, true, player:GetCollectibleRNG(akma_item):GetSeed()),Isaac.GetFreeNearPosition(player.Position,50), Vector(0, 0), player)
		continueTime = 60 * 30
		timer:Insert(akma_item, continueTime, 1, 0, 0)
	end
	if angelVar == true and (Game().TimeCounter - angelTime) ~= 0 and (Game().TimeCounter - angelTime) % 3600 == 0 then
		Isaac.Spawn(5, 100, Game():GetItemPool():GetCollectible(ItemPoolType.POOL_GREED_ANGEL, true, player:GetCollectibleRNG(angel_item):GetSeed()),Isaac.GetFreeNearPosition(player.Position,50), Vector(0, 0), player)
		continueTime = 120 * 30
		timer:Insert(angel_item, continueTime, 1, 0, 0)
	end
	if doubleVar == true and (Game().TimeCounter - doubleTime) ~= 0 and (Game().TimeCounter - doubleTime) % 5400 == 0 then
		Isaac.Spawn(5, 100, 245, Isaac.GetFreeNearPosition(player.Position,50), Vector(0, 0), player)
		continueTime = 180 * 30
		timer:Insert(double_item, continueTime, 1, 0, 0)
	end
	if astraluse == true and (Game().TimeCounter - astralContinue) ~= 0 and (Game().TimeCounter - astralContinue) % 1800 == 0 then
		Isaac.Spawn(5, 100, Game():GetItemPool():GetCollectible(ItemPoolType.POOL_GREED_TREASURE, true, player:GetCollectibleRNG(akma_item):GetSeed()),Isaac.GetFreeNearPosition(player.Position,50), Vector(0, 0), player)
		continueTime = 60 * 30
		timer:Insert(astral_item, continueTime, 1, 0, 0)
	end
	if player:HasCollectible(yusa_cleaner_item) then
		if player:HasCollectible(52) then -- 닥터 소지 시
			player:RemoveCollectible(52) -- 닥터 제거
		end
		if player:HasCollectible(68) then -- 테크 소지 시
			player:RemoveCollectible(68) -- 테크 제거
		end
		if player:HasCollectible(114) then -- 칼 소지 시
			player:RemoveCollectible(114) -- 칼 제거
		end
		if player:HasCollectible(118) then -- 혈사 소지 시
			player:RemoveCollectible(118) -- 혈사 제거
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
		if player:HasCollectible(asulf_item) then -- 루도비코 소지 시
			player:RemoveCollectible(asulf_item) -- 루도비코 제거
		end
		if player:HasCollectible(329) then -- 루도비코 소지 시
			player:RemoveCollectible(329) -- 루도비코 제거
		end
		if player:HasCollectible(395) then -- 테크엑스 소지 시
			player:RemoveCollectible(395) -- 테크엑스 제거
		end
		if YusaCleanerVar == false then
			momlessscroll = momlessscroll * 1.375
			YusaCleanerVar = true
		end
	end
	
	if player:HasCollectible(alltech_item) then
		if not player:HasCollectible(395) and player:GetCollectibleNum(395)<1 then -- 테크엑스 미소지 시
			player:AddCollectible(395,0,true) -- 테크엑스 추가
		end
		if not player:HasCollectible(68) and player:GetCollectibleNum(68)<1 then
			player:AddCollectible(68,0,true)
		end
		if not player:HasCollectible(152) and player:GetCollectibleNum(152)<1 then
			player:AddCollectible(152,0,true)
		end
		Game():GetItemPool():RemoveCollectible(114);
		Game():GetItemPool():RemoveCollectible(68);
		Game():GetItemPool():RemoveCollectible(168);
		Game():GetItemPool():RemoveCollectible(cleaner_item);
		Game():GetItemPool():RemoveCollectible(enocent_item);
		for j = 1 , #entities do
			if entities[j].Type == 5 and entities[j].Variant == 100 and entities[j].SubType == 114 then
				entities[j]:ToPickup():Morph(5, 100, 0, true)
			end
			if entities[j].Type == 5 and entities[j].Variant == 100 and entities[j].SubType == 68 then
				entities[j]:ToPickup():Morph(5, 100, 0, true)
			end
			if entities[j].Type == 5 and entities[j].Variant == 100 and entities[j].SubType == 168 then
				entities[j]:ToPickup():Morph(5, 100, 0, true)
			end
			if entities[j].Type == 5 and entities[j].Variant == 100 and entities[j].SubType == cleaner_item then
				entities[j]:ToPickup():Morph(5, 100, 0, true)
			end
			if entities[j].Type == 5 and entities[j].Variant == 100 and entities[j].SubType == enocent_item then
				entities[j]:ToPickup():Morph(5, 100, 0, true)
			end
		end
	end
	
	if player:HasCollectible(221) or player:HasCollectible(108) or player:HasCollectible(301) then
		local tmprubber = {};
		
		if player:HasCollectible(221) then
			tmprubber[1] = 108;
			tmprubber[2] = 301;
		elseif player:HasCollectible(108) then
			tmprubber[1] = 221;
			tmprubber[2] = 301;
		elseif player:HasCollectible(301) then
			tmprubber[1] = 108;
			tmprubber[2] = 221;
		end
		
		Game():GetItemPool():RemoveCollectible(tmprubber[1]);
		Game():GetItemPool():RemoveCollectible(tmprubber[2]);
		
		for j = 1 , #entities do
			if entities[j].Type == 5 and entities[j].Variant == 100 and entities[j].SubType == tmprubber[1] then
				entities[j]:ToPickup():Morph(5, 100, 0, true)
			end
			if entities[j].Type == 5 and entities[j].Variant == 100 and entities[j].SubType == tmprubber[2] then
				entities[j]:ToPickup():Morph(5, 100, 0, true)
			end
		end
	end
	
	if player:HasCollectible(hots_item) and hosVar == 0 then
		for i=1,#setitem do
			player:RemoveCollectible(setitem[i])
		end
		for i=1,2 do
			j = ranNum(hots_item,#setitem/3)
			player:AddCollectible(setitem[3*j-2],0,true)
			player:AddCollectible(setitem[3*j-1],0,true)
			player:AddCollectible(setitem[3*j],0,true)
		end
		hosVar = 1
	end
	if player:HasCollectible(hots_item) == false then
		hosVar = 0
	end

	--[[if player:HasCollectible(mangsang_item) and player:HasCollectible(hondon_item) and player:HasCollectible(hwangak_item) and (Game().TimeCounter % 900 == 0) then
		player:UseActiveItem(510, false, true, false, false)
		player:UseActiveItem(510, false, true, false, false)
		player:UseActiveItem(510, false, true, false, false)
	end]]

	if player:HasCollectible(ac_item) and player:HasCollectible(ti_item) and player:HasCollectible(ve_item) and (Game().TimeCounter % 300 == 0) then
		local i = math.random(1,5)
		if i == 1 then
			player:UseActiveItem(39, false, true, false, false)
		elseif i == 2 then
			player:UseActiveItem(58, false, true, false, false)
		elseif i == 3 then
			player:UseActiveItem(160, false, true, false, false)
		elseif i == 4 then
			player:UseActiveItem(291, false, true, false, false)
		else
			player:UseActiveItem(293, false, true, false, false)
		end
	end

	if player:HasCollectible(moneyA_item) and player:HasCollectible(moneyB_item) and player:HasCollectible(moneyC_item) and (Game().TimeCounter % 1800 == 0) then
		for i=1,15 do
			Isaac.Spawn(5, 20, 1, player.Position, Vector(math.random(-1,1), math.random(-1,1)), player)
		end
	end

	for i=1,#entities do
		if entities[i].Type == 17 and entities[i].Variant == 7 then
			if ((player.Position.X - entities[i].Position.X)^2 + (player.Position.Y - entities[i].Position.Y)^2)^0.5 <= 50 then
				if player:GetNumCoins() >= 15 then
					entities[i]:Remove()
					player:AnimateHappy()
					player:AddCoins(-15)
					if (Game():GetLevel():GetAngelRoomChance() < 1) then
						Game():GetLevel():AddAngelRoomChance(1);
					end
				end
			end
		end
	end

	for i=1,#entities do
		if entities[i].Type == EntityType.ENTITY_PROJECTILE and player:HasCollectible(449) then
			if ((player.Position.X - entities[i].Position.X)^2 + (player.Position.Y - entities[i].Position.Y)^2)^0.5 <= 30 and entities[i]:GetData().Refl ~= true then
				entities[i]:GetData().Refl = true
				reflTear = entities[i]:ToProjectile()
				local angle = reflTear.Velocity:GetAngleDegrees() - (player.Position):GetAngleDegrees()
				reflTear.Velocity = reflTear.Velocity:Rotated(180)
				reflTear.Parent = player
				reflTear.SpawnerEntity = player
				reflTear:AddProjectileFlags(ProjectileFlags.CANT_HIT_PLAYER | ProjectileFlags.ANY_HEIGHT_ENTITY_HIT | ProjectileFlags.HIT_ENEMIES)
			end
		end
	end

	--[[if player:HasCollectible(ranTechX_item) and Game():GetFrameCount() % 2 == 0 then
		player:FireTechXLaser(player.Position, Vector(player.ShotSpeed*10,0):Rotated(math.random(360)),10)
	end]]

	if player:HasCollectible(mangsang_item) and player:HasCollectible(hondon_item) and player:HasCollectible(hwangak_item) then
		for i=1,#entities do
			if entities[i].Type == 405 or entities[i].Type == 409 then
				entities[i]:Die()
			end
		end
	end

	if player:HasCollectible(114) then
		if player:HasCollectible(68) then
			player:RemoveCollectible(68)
			player:AddCollectible(114,0,true)
		end
		if player:HasCollectible(395) then
			player:RemoveCollectible(395)
			player:AddCollectible(114,0,true)
		end
	end

	if player:HasCollectible(311) and juaShadVar == false then
		player:AddCard(46)
		juaShadVar = true
	end

	--[[if player:HasCollectible(soulpower_item) and soulpowerVar == false then
		player:AddCollectible(381,0,true)
		soulpowerVar = true
	end--]]


	--[[for i=1,#entities do
		if player:HasCollectible(202) and entities[i].Type == 5 and entities[i].Variant == 20 and entities[i].SubType == 1
		and entities[i]:GetSprite():IsPlaying("Appear") and entities[i]:GetSprite():GetFrame() < 2 and math.random(1,2) <= 1 then
			entities[i]:ToPickup():Morph(5,20,2,true)
		end
	end]]

	local notremove = {};
	local notremoveT = 0; -- 선택 시
	local notremoveTT = 0; -- 완성 시
	local tmpset = 0;

	-- 세트옵션 제거
	for i=1, #setitem/3 do
		if (player:HasCollectible(setitem[3*i-2]) or player:HasCollectible(setitem[3*i-1]) or player:HasCollectible(setitem[3*i])) then
			notremove[i] = true;
			notremoveT = notremoveT + 1
		end
		if (player:HasCollectible(setitem[3*i-2]) and player:HasCollectible(setitem[3*i-1]) and player:HasCollectible(setitem[3*i])) then
			notremove[i] = false;
			notremoveTT = notremoveTT + 1
			
			for j=1, setnumber do
				if setcheck[j] == 0 then
					tmpset = 0;
					for k=1, j do
						 if setcheck[k] == setitem[3*i-2] then
							break
						else
							tmpset = tmpset+1;
						end
					end
					if j == tmpset then
						setcheck[j] = setitem[3*i-2];
					end
				end
			end
		end
	end

	if  notremoveT >= 2 then
		for i = 1, #setitem do
			if ((notremove[1] == true) and (i == 1 or i == 2 or i == 3)) or
			((notremove[2] == true) and (i == 4 or i == 5 or i == 6)) or
			((notremove[3] == true) and (i == 7 or i == 8 or i == 9)) or 
			((notremove[4] == true) and (i == 10 or i == 11 or i == 12)) or 
			((notremove[5] == true) and (i == 13 or i == 14 or i == 15)) or 
			((notremove[6] == true) and (i == 16 or i == 17 or i == 18)) or 
			((notremove[7] == true) and (i == 19 or i == 20 or i == 21)) or 
			((notremove[8] == true) and (i == 22 or i == 23 or i == 24)) or 
			((notremove[9] == true) and (i == 25 or i == 26 or i == 27)) or 
			((notremove[10] == true) and (i == 28 or i == 29 or i == 30)) or 
			((notremove[11] == true) and (i == 31 or i == 32 or i == 33)) or 
			((notremove[12] == true) and (i == 34 or i == 35 or i == 36)) or 
			((notremove[13] == true) and (i == 37 or i == 38 or i == 39)) or 
			((notremove[14] == true) and (i == 40 or i == 41 or i == 42)) or 
			((notremove[15] == true) and (i == 43 or i == 44 or i == 45)) then
			else
				Game():GetItemPool():RemoveCollectible(setitem[i]);
				for j = 1 , #entities do
					if entities[j].Type == 5 and entities[j].Variant == 100 and entities[j].SubType == setitem[i] then
						entities[j]:ToPickup():Morph(5, 100, 0, true)
					end
				end
			end
		end
	end

	if player:HasPlayerForm(PlayerForm.PLAYERFORM_GUPPY) == true then
		for i=1,#guppyParts do
			Game():GetItemPool():RemoveCollectible(guppyParts[i]);
		end
	end

	if player:HasCollectible(alltech_item) then
		for i = 1 , #entities do
			if entities[i].Type == 5 and entities[i].Variant == 100 and entities[i].SubType == yusa_cleaner_item then
				entities[i]:ToPickup():Morph(5, 100, 0, true)
			end
		end
	end

	if player:GetPlayerType() == 7 then
		for i = 1 , #entities do
			if entities[i].Type == 5 and entities[i].Variant == 100 and entities[i].SubType == alltech_item then
				entities[i]:ToPickup():Morph(5, 100, 0, true)
			end
		end
	end
	
	--[[if player:HasCollectible(hweng_hol_item) or player:HasCollectible(samsingi_item) or player:HasCollectible(jongma_item) or player:HasCollectible(gim_luke_item) or player:HasCollectible(er_gong_item) then
		player:RemoveCollectible(hweng_hol_item);
		player:RemoveCollectible(samsingi_item);
		player:RemoveCollectible(jongma_item);
		player:RemoveCollectible(gim_luke_item);
		player:RemoveCollectible(er_gong_item);
	end]]
		

	--[[if player:HasCollectible(8) then
		for i = 1, #entities do
			if entities[i].Type == 2 and entities[i].SpawnerType ~= 1 then
				entities[i]:ToTear().TearFlags = entities[i]:ToTear().TearFlags | TearFlags.TEAR_LIGHT_FROM_HEAVEN
				entities[i]:SetColor(Color(0.4, 0.15, 0.38, 1.0, 55, 5, 95),10000,1,true,true)
			end
		end
	end]]

	--[[if player:HasCollectible(105) then
		if (Game():GetLevel():GetAngelRoomChance() < 0.05) then
			Game():GetLevel():AddAngelRoomChance(0.05)
		end
	end]]

	-- 갓모드 패시브 아이템
	if hasMorphine then
        player:AddHearts(-24)
        player:AddHearts(2)
    end

    if player:HasCollectible(backpack_item) then
		if hasBackpack == false then
			player:AddNullCostume(Isaac.GetCostumeIdByPath("gfx/characters/costumes/backpack_costume.anm2"))
			hasBackpack = true
			Isaac.DebugString("Adding Costume");
		end

		-- Picks up an active item when doesn't currently have one
		if heldItem == 0 and player:GetActiveItem() ~= 0 then
			heldItem = player:GetActiveItem()
			heldItemCharge = player:GetActiveCharge()
		end
		-- Picks up an active item when is currently holding one, no stored item
		if heldItem ~= 0 and heldItem ~= player:GetActiveItem() and storedItem == 0 and Game():GetFrameCount() > useItemFrame then
			-- 들고 있던 아이템이 사라졌다면?
			if player:GetActiveItem() == 0 and Game():GetFrameCount() <= useItemFrame + 20 then
				heldItem = 0
				heldItemCharge = 0
			end
			storedItem = heldItem
			storedItemCharge = heldItemCharge
			if storedItem ~= 0 then
				storedItemSprite:ReplaceSpritesheet(0, config:GetCollectible(storedItem).GfxFileName)
				storedItemSprite:LoadGraphics()
			end
			heldItem = player:GetActiveItem()
			heldItemCharge = player:GetActiveCharge()
			-- Remove pedestal
			for i, entity in pairs(Isaac.GetRoomEntities()) do
				if entity.Type == EntityType.ENTITY_PICKUP and entity.Variant == PickupVariant.PICKUP_COLLECTIBLE then
					if entity.SubType == storedItem then
						entity:Remove()
					end
				end
			end
		end
		-- Picks up an active item when is currently holding two items
		if heldItem ~= 0 and heldItem ~= player:GetActiveItem() and storedItem ~= 0 then
			heldItem = player:GetActiveItem()
			heldItemCharge = player:GetActiveCharge()
			player:DischargeActiveItem()
			player:SetActiveCharge(heldItemCharge + batteryCharge)
			Isaac.DebugString(player:GetActiveSubCharge());
		end
		-- Presses the swap key and has two items
		if (Input.IsButtonPressed(swapItemKey, player.ControllerIndex) or (controllerMode and Input.IsActionTriggered(ButtonAction.ACTION_DROP, player.ControllerIndex))) and storedItem ~= 0 and Game():GetFrameCount() > swapBuffer then
			swapBuffer = Game():GetFrameCount() + 10
			heldItem = player:GetActiveItem()
			heldItemCharge = player:GetActiveCharge()
			-- Update battery data
			if player:GetActiveCharge() ~= 0 then
				if player:GetBatteryCharge() == heldItemCharge then
					if batteryCharge < player:GetBatteryCharge() then
						batteryCharge = player:GetBatteryCharge()
					end
				else
					batteryCharge = player:GetBatteryCharge()
				end
			end
			-- Swap items
			player:AddCollectible(storedItem, 0, false)
			player:RemoveCollectible(heldItem)
			--player:DischargeActiveItem()
			player:SetActiveCharge(storedItemCharge + batteryCharge)
			storedItem = heldItem
			storedItemCharge = heldItemCharge
			if storedItem ~= 0 then
				storedItemSprite:ReplaceSpritesheet(0, config:GetCollectible(storedItem).GfxFileName)
				storedItemSprite:LoadGraphics()
			end
		end
	end

	-- Save data
	saveData = storedItem ..",".. storedItemCharge ..",".. batteryCharge
	Isaac.SaveModData(ChaosGreed, saveData)
end

ChaosGreed:AddCallback(ModCallbacks.MC_POST_UPDATE, ChaosGreed.Item2, EntityType.ENTITY_PLAYER)

function ChaosGreed:OnPostNewLevel()
	--dealnurfvar = dealnurfvar * (0.9)^(1/5)
	
end

ChaosGreed:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, ChaosGreed.OnPostNewLevel)

function ChaosGreed:onTear(tear)
	player = Isaac.GetPlayer(0)
	if player:HasCollectible(lightning_item) and math.random(1,10)<=1 then 
		tear.TearFlags = tear.TearFlags | TearFlags.TEAR_LIGHT_FROM_HEAVEN
	end
	if player:HasCollectible(plunger_item) then
		tear.TearFlags = tear.TearFlags | TearFlags.TEAR_POISON
	end
	if player:HasCollectible(ne_item) and player:HasCollectible(da_item) and player:HasCollectible(ssip_item) and math.random(1,4)<=2 then
		tear.TearFlags = tear.TearFlags | TearFlags.TEAR_LIGHT_FROM_HEAVEN
	end
	if player:HasCollectible(godheadA_item) and player:HasCollectible(godheadB_item) and player:HasCollectible(godheadC_item) and math.random(1,4)<=1 then
		tear.TearFlags = tear.TearFlags | TearFlags.TEAR_GLOW
	end
	if money_genesis>0 and math.random(money_genesis,100)>=100 then 
		tear.TearFlags = tear.TearFlags | TearFlags.TEAR_LIGHT_FROM_HEAVEN
	end
end

ChaosGreed:AddCallback(ModCallbacks.MC_POST_FIRE_TEAR , ChaosGreed.onTear)

function ChaosGreed:useItem(collectible, rng)
	player = Isaac.GetPlayer(0)
	entities = Isaac.GetRoomEntities()
	game = Game()
	level = game:GetLevel()
	room = game:GetRoom()
	
    useItemFrame = Game():GetFrameCount() + 10

	if collectible == werry_item then -- Werry 사용시
		if werryContinue < Game().TimeCounter then -- 지속 시간이 아님
			continueTime = 180 * 30

			werryContinue = Game().TimeCounter + continueTime -- 지속 시간 60초 뒤 (30은 단위 초로 변환)
			isWerryTimeOut = false

			timer:Insert(werry_item, continueTime, 1, 0, 0)

			player:RemoveCollectible(werry_item)
		end
		return true
	elseif collectible == powerbond_item then -- Power Bond 사용시
	if player:GetNumCoins()>1 then
		if powerBondContinue < Game().TimeCounter then -- 지속 시간이 아님
			if player:GetNumCoins()<30 then
				continueTime = 30 * player:GetNumCoins()
				player:AddCoins(player:GetNumCoins() * -1)
			else
				continueTime = 30 * 30
				player:AddCoins(-30)
			end

			powerBondContinue = Game().TimeCounter + continueTime -- 지속 시간 30초 뒤 (30은 단위 초로 변환)
			isPowerBondTimeOut = false

			timer:Insert(powerbond_item, continueTime, 1, 0.005, 0)
		end
		end
		player:RemoveCollectible(powerbond_item)
		return true
	elseif collectible == limiterremoval_item then -- Limiter Removal 사용시
	if player:GetNumCoins()>1 then
		if limiterRemovalContinue < Game().TimeCounter then -- 지속 시간이 아님
			if player:GetNumCoins()<30 then
				continueTime = 30 * player:GetNumCoins()
				player:AddCoins(player:GetNumCoins() * -1)
			else
				continueTime = 30 * 30
				player:AddCoins(-30)
			end

			limiterRemovalContinue = Game().TimeCounter + continueTime -- 지속 시간 30초 뒤 (30은 단위 초로 변환)
			isLimiterRemovalTimeOut = false

			timer:Insert(limiterremoval_item, continueTime, 1, 1, 0)
		end
		end
		player:RemoveCollectible(limiterremoval_item)
		return true
	elseif collectible == restore_item then
		Isaac.Spawn(6, 10, 0, player.Position + Vector(-50, -50), Vector(0, 0), player) -- 리스톡 소환
		Isaac.Spawn(6, 10, 0, player.Position + Vector(50, -50), Vector(0, 0), player)
		player:RemoveCollectible(restore_item)
		return true
	elseif collectible == chaos_item then
		player:AnimateCollectible(collectible, "UseItem", "Idle")
		player:AddCard(Card.CARD_CHAOS)
		player:RemoveCollectible(chaos_item)
		return true
	elseif collectible == error_item then
		player:RemoveCollectible(error_item)
		player:AnimateTeleport(true)
		errorTeleportStartedFrame = Game():GetFrameCount()
		return false
	elseif collectible == cov_item then
		player:AnimateCollectible(collectible, "UseItem", "Idle")
		if (Game():GetLevel():GetAngelRoomChance() < 1) then
			Game():GetLevel():AddAngelRoomChance(1);
		end
		player:AddCard(Card.CARD_JOKER)
		if covContinue < Game().TimeCounter then -- 지속 시간이 아님
			continueTime = 30 * 30

			covContinue = Game().TimeCounter + continueTime -- 지속 시간 30초 뒤 (30은 단위 초로 변환)
			isCovTimeOut = false

			timer:Insert(cov_item, continueTime, 0.005, 1, 0)
		end
		player:RemoveCollectible(cov_item)
		return true
	elseif collectible == gamble_item then
		rangamble = math.random(1,100)
		if rangamble <= 80 then
			player:AddCoins(30)
		elseif rangamble <= 95 then
			player:Die()
		else
			player:AddCoins(99)
		end
		player:RemoveCollectible(gamble_item)
		return true
	elseif collectible == stopwatch_item then
		player:AnimateCollectible(collectible, "UseItem", "Idle")
		if stopwatchContinue < Game().TimeCounter then
			continueTime = 300 * 30

			stopwatchContinue = Game().TimeCounter + continueTime
			isWatchTimeOut = false

			timer:Insert(stopwatch_item, continueTime, 0, 1, 1)
		end
		player:RemoveCollectible(stopwatch_item)
		return true
	elseif collectible == symbol_item then
		ransymbol = math.random(1,1000)
		if player.Luck<0 then
			if ransymbol <= 10 then
				player:RemoveCollectible(symbol_item)
				player:AddCollectible(symbolp_item,0,true)
			end
		else
			if ransymbol <= 10 + 10 * (math.floor(player.Luck)) then
				player:RemoveCollectible(symbol_item)
				player:AddCollectible(symbolp_item,0,true)
			end
		end
		return true
	elseif collectible == fars_item then
		ranfars = math.random(1,1000)
		if player.Luck<0 then
			if ranfars <= 10 then
				player:RemoveCollectible(fars_item)
				player:AddCollectible(farsp_item,0,true)
			end
		else
			if ranfars <= 10 + 10 * (math.floor(player.Luck)) then
				player:RemoveCollectible(fars_item)
				player:AddCollectible(farsp_item,0,true)
			end
		end
		return true
	elseif collectible == rosetta_item then
		ranrosetta = math.random(1,1000)
		if player.Luck<0 then
			if ranrosetta <= 10 then
				player:RemoveCollectible(rosetta_item)
				player:AddCollectible(rosettap_item,0,true)
			end
		else
			if ranrosetta <= 10 + 10 * (math.floor(player.Luck)) then
				player:RemoveCollectible(rosetta_item)
				player:AddCollectible(rosettap_item,0,true)
			end
		end
		return true
	--[[elseif collectible == infestedhead_item then
		player:AnimateCollectible(collectible, "UseItem", "Idle")
		for i=1,math.random(6,10) do
			Isaac.Spawn(EntityType.ENTITY_FAMILIAR, FamiliarVariant.BLUE_FLY, 2, player.Position, Vector(0, 0), player)
		end
		return true]]
	elseif collectible == quickchaos_item then
		if quickChaosContinue < Game().TimeCounter then -- 지속 시간이 아님
			continueTime = 10 * 30

			quickChaosContinue = Game().TimeCounter + continueTime -- 지속 시간 30초 뒤 (30은 단위 초로 변환)
			isQuickChaosTimeOut = false

			timer:Insert(quickchaos_item, continueTime, 0, 1, 0)

			for i=1,5 do
				Isaac.Spawn(5, 20, 3, Isaac.GetFreeNearPosition(player.Position, 0), Vector(0,0), player)
			end
			player:RemoveCollectible(quickchaos_item)
			player:AddCollectible(402,0,true)
		end
		return true
	elseif collectible == skipforce_item then
		if Game():GetLevel():GetStage() >= 5 then
			player:RemoveCollectible(skipforce_item)

			continueTime = 120 * 30

			skipContinue = Game().TimeCounter + continueTime
			skipuse = true

			timer:Insert(skipforce_item, continueTime, 0.005, 0.005, 1)
			return true
		end
	elseif collectible == deathdoubleforce_item then
		player:RemoveCollectible(deathdoubleforce_item)
		Game():AddDevilRoomDeal()
		Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, Card.CARD_JOKER, player.Position, Vector(math.random(-5,5),math.random(-5,5)), player)
		for i=1,8 do
			Isaac.Spawn(5, 360, 0, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0,0), player)
		end
		return true
	elseif collectible == 441 then
		if megaContinue < Game().TimeCounter then
			continueTime = 15 * 30

			megaContinue = Game().TimeCounter + continueTime
			isMegaBlastTimeOut = false

			timer:Insert(441, continueTime, 0, 1, 0.005)
		end
		player:RemoveCollectible(441)
		return true
	elseif collectible == spice_item then
		player:AnimateCollectible(collectible, "UseItem", "Idle")
		player:RemoveCollectible(spice_item)
		Isaac.Spawn(5, 100, Game():GetItemPool():GetCollectible(ItemPoolType.POOL_GREED_CURSE, true, player:GetCollectibleRNG(spice_item):GetSeed()),Isaac.GetFreeNearPosition(player.Position,50), Vector(0, 0), player)
		spiceused = spiceused + spicepenalty
		spicepenalty = spicepenalty + 1
		spiceuse = true
		player:AddCoins(-5*spiceused)
		player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
		player:AddCacheFlags(CacheFlag.CACHE_SPEED)
		player:AddCacheFlags(CacheFlag.CACHE_LUCK)
		player:EvaluateItems()
	elseif collectible == cipher_item then
		player:AnimateCollectible(collectible, "UseItem", "Idle")
		player:RemoveCollectible(cipher_item)

		continueTime = 60 * 30

		cipherContinue = Game().TimeCounter + continueTime
		cipheruse = true

		timer:Insert(cipher_item, continueTime, 0, 0.005, 1)
	elseif collectible == raptor_item then
		player:RemoveCollectible(raptor_item)
		i = math.random(1,12)
		if i == 1 then
			Isaac.Spawn(5, 100, quickchaos_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		elseif i == 2 then
			Isaac.Spawn(5, 100, skipforce_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		elseif i == 3 then
			Isaac.Spawn(5, 100, deathdoubleforce_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		elseif i == 4 then
			Isaac.Spawn(5, 100, astral_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		elseif i == 5 then
			Isaac.Spawn(5, 100, cipher_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		elseif i == 6 then
			Isaac.Spawn(5, 100, Isaac.GetItemIdByName("Rank-Up-Magic Revolution Force"), Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		elseif i == 7 then
			Isaac.Spawn(5, 100, Isaac.GetItemIdByName("Rank-Up-Magic Raid Force"), Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		elseif i == 8 then
			Isaac.Spawn(5, 100, Isaac.GetItemIdByName("Rank-Up-Magic Argent Chaos Force"), Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		elseif i == 9 then
			Isaac.Spawn(5, 100, akma_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		elseif i == 10 then
			Isaac.Spawn(5, 100, angel_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		elseif i == 11 then
			Isaac.Spawn(5, 100, double_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		else
			Isaac.Spawn(5, 100, soulshave_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		end
	elseif collectible == eter_item then
		player:AnimateCollectible(collectible, "UseItem", "Idle")
		player:RemoveCollectible(eter_item)
		eterbanji = eterbanji + 2
		Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, Card.CARD_CREDIT, player.Position, Vector(math.random(-5,5),math.random(-5,5)), player)
		return true
	elseif collectible == mono_item then
		if player:GetNumCoins() >= 15 then
			player:RemoveCollectible(mono_item)
			player:AddCollectible(lumen_item,0,true)
			player:AddCollectible(solfon_item,0,true)
			player:AddCollectible(tenenu_item,0,true)
			player:AddCoins(-15)
		end
		return true
	elseif collectible == scroll_item then
		player:AnimateCollectible(collectible, "UseItem", "Idle")
		player:RemoveCollectible(scroll_item)
		ranscroll = ranscroll + math.random(0,20)
		player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
		player:EvaluateItems()
		return true
	elseif collectible == ascroll_item then
		player:AnimateCollectible(collectible, "UseItem", "Idle")
		player:RemoveCollectible(ascroll_item)
		momlessscroll = momlessscroll * math.random(10,20) / 10
		player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
		player:EvaluateItems()
		return true
	elseif collectible == soulshave_item then
		player:AnimateCollectible(collectible, "UseItem", "Idle")
		player:RemoveCollectible(soulshave_item)
		continueTime = 60 * 30
		soulshaveContinue = Game().TimeCounter + continueTime
		soulshaveuse = true
		timer:Insert(soulshave_item, continueTime, 0, 0, 1)
	elseif collectible == hippo_item then
		if hippoContinue < Game().TimeCounter then
			continueTime = 5 * 30

			hippoContinue = Game().TimeCounter + continueTime
			isHippoTimeOut = false

			timer:Insert(hippo_item, continueTime, 0.005, 0, 1)
		end
		player:RemoveCollectible(hippo_item)
		player:AddCollectible(114,0,true)
		return true
	elseif collectible == raven_item then
		player:AnimateCollectible(collectible, "UseItem", "Idle")
		player:RemoveCollectible(raven_item)
		for i = 1, math.random(2,3) do
			Isaac.Spawn(3, 14, 0, Isaac.GetFreeNearPosition(player.Position, 1), Vector(0, 0), player)
		end
		Isaac.Spawn(50, 0, 0, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
	elseif collectible == toy_item then
		player:AnimateCollectible(collectible, "UseItem", "Idle")
		player:RemoveCollectible(toy_item)
		Isaac.Spawn(5, 100, attacktype[math.random(1,#attacktype)], Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
	elseif collectible == 83 then
		player:AnimateCollectible(collectible, "UseItem", "Idle")
		player:RemoveCollectible(83)
		player:AddSoulHearts(24)
	elseif collectible == trinity_item then
		player:AnimateCollectible(collectible, "UseItem", "Idle")
		if (Game():GetLevel():GetAngelRoomChance() < 1) then
			Game():GetLevel():AddAngelRoomChance(1);
		end
		player:AddCard(Card.CARD_JOKER)
		trinityused = trinityused * 2 + 1
		trinityuse = true
		player:AddCoins(-5*trinityused)
		player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
		player:AddCacheFlags(CacheFlag.CACHE_SPEED)
		player:AddCacheFlags(CacheFlag.CACHE_LUCK)
		player:EvaluateItems()
	elseif collectible == envy_item then
		if EnvyContinue < Game().TimeCounter then -- 지속 시간이 아님
			continueTime = 20 * 30
			coin = player:GetNumCoins()

			EnvyContinue = Game().TimeCounter + continueTime -- 지속 시간 30초 뒤 (30은 단위 초로 변환)
			isEnvyTimeOut = false

			timer:Insert(envy_item, continueTime, 0.005, 0.005, 0.005)

			player:RemoveCollectible(envy_item)
			player:AddCollectible(402,0,true)
			player:AddCoins(coin)
			player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
		end
		return true
	elseif collectible == pride_item then
		PrideUse = true
		Isaac.Spawn(5, 100, 402, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
		player:RemoveCollectible(pride_item)
		return true
	elseif collectible == no_item then
		player:RemoveCollectible(no_item)
		Isaac.Spawn(5, 350, 88, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		return true
	elseif collectible == v1helmet_item then
		roomiscleared = 1
		player:RemoveCollectible(v1helmet_item)
		return true
	elseif collectible == v2helmet_item then
		eterbanji = eterbanji + 1
		player:RemoveCollectible(v2helmet_item)
		return true
	elseif collectible == v3helmet_item then
		eterbanji = eterbanji + 2
		player:RemoveCollectible(v3helmet_item)
		return true
	elseif collectible == momless_item then
		i = math.random(1,2)
		if i == 1 then
			momlessscroll = momlessscroll * 1.1
		else
			momlessscroll = momlessscroll / 1.1
		end
		return true
	elseif collectible == deathdoubleforce_ha_wi_ho_hwan_item then
		deathdoubleforce_ha_wi_ho_hwan_item_var = deathdoubleforce_ha_wi_ho_hwan_item_var + 1
		Isaac.Spawn(5, 360, 0, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0,0), player)
		if deathdoubleforce_ha_wi_ho_hwan_item_var >= 6 then
			player:RemoveCollectible(deathdoubleforce_ha_wi_ho_hwan_item)
		end
		return true
	elseif collectible == yusaspice_item then
		i = math.random(1,10)
		if i <= 1 + player.Luck then
			Isaac.Spawn(5, 100, Game():GetItemPool():GetCollectible(ItemPoolType.POOL_GREED_CURSE, true, player:GetCollectibleRNG(yusaspice_item):GetSeed()),Isaac.GetFreeNearPosition(player.Position,50), Vector(0, 0), player)
		else
			Isaac.Spawn(5, 100, yusaspice_item,Isaac.GetFreeNearPosition(player.Position,50), Vector(0, 0), player)
		end
		player:RemoveCollectible(yusaspice_item)
		return true
	elseif collectible == succusohwan_item then
		succusohwan_item_var = succusohwan_item_var + 1
		player:AddCollectible(417,0,true)
		if succusohwan_item_var >= 2 then
			player:RemoveCollectible(succusohwan_item)
		end
		return true
	elseif collectible == enocent_item then
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
		player:RemoveCollectible(enocent_item)
		return true
	elseif collectible == se_item then
		momlessscroll = momlessscroll * 0.7
		Isaac.Spawn(5, 100, 381,Isaac.GetFreeNearPosition(player.Position,50), Vector(0, 0), player)
		Isaac.Spawn(5, 100, 381,Isaac.GetFreeNearPosition(player.Position,50), Vector(0, 0), player)
		Isaac.Spawn(5, 100, 381,Isaac.GetFreeNearPosition(player.Position,50), Vector(0, 0), player)
		player:RemoveCollectible(se_item)
		return true
	elseif collectible == sr_item then
		if player:HasCollectible(381) then
			for i=1,50 do
				player:RemoveCollectible(381)
			end
			Isaac.Spawn(5, 100, 490,Isaac.GetFreeNearPosition(player.Position,50), Vector(0, 0), player)
			player:RemoveCollectible(sr_item)
		end
		return true
	elseif collectible == sn_item then
		for i=1,50 do
			if player:HasCollectible(381) then
				player:RemoveCollectible(381)
				momlessscroll = momlessscroll * 115 / 100
			end
		end
		player:RemoveCollectible(sn_item)
		return true
	elseif collectible == Curse_Foot_item then
		Isaac.Spawn(5, 360, 0, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0,0), player)
		Isaac.Spawn(5, 360, 0, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0,0), player)
		Isaac.Spawn(5, 360, 0, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0,0), player)
		player:RemoveCollectible(Curse_Foot_item)
		return true
	elseif collectible == artifact_chakram_item then
		if player:GetNumCoins() >= 15 then
			player:AddCoins(-15)
			if (Game():GetLevel():GetAngelRoomChance() < 1) then
				Game():GetLevel():AddAngelRoomChance(1);
			end
			player:AddCard(Card.CARD_JOKER)
			return true
		end
	elseif collectible == artifact_labrys_item then
		if player:GetNumCoins() >= 5 then
			player:AddCoins(-5)
			ranscroll = ranscroll + 5
			player:RemoveCollectible(artifact_labrys_item)
			return true
		end
	elseif collectible == artifact_lancea_item then
		if player:GetNumCoins() >= 10 then
			player:AddCoins(-10)
			ranscroll = ranscroll + 10
			player:RemoveCollectible(artifact_lancea_item)
			return true
		end
	elseif collectible == artifact_moralltach_item then
		if player:GetNumCoins() >= 15 then
			player:AddCoins(-15)
			Isaac.Spawn(5, 100, attacktype[math.random(1,#attacktype)], Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			artifact_moralltach_item_var = artifact_moralltach_item_var + 1
			if artifact_moralltach_item_var >= 3 then
				player:RemoveCollectible(artifact_moralltach_item)
			end
			return true
		end
	elseif collectible == artifact_aegis_item then
		if artifact_aegis_itemVar >= 2 then
			player:RemoveCollectible(artifact_aegis_item)
			return false
		end
		if player:GetNumCoins() >= 7 then
			player:AddCoins(-7)
			eterbanji = eterbanji + 1
			artifact_aegis_itemVar = artifact_aegis_itemVar + 1
			if artifact_aegis_itemVar >= 2 then
				player:RemoveCollectible(artifact_aegis_item)
			end
			return true
		end
	elseif collectible == artifact_beagalltach_item then
		if player:GetNumCoins() >= 30 then
			player:AddCoins(-30)
			Isaac.Spawn(5, 100, attacktype[math.random(1,#attacktype)], Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			Isaac.Spawn(5, 100, attacktype[math.random(1,#attacktype)], Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			artifact_beagalltach_item_var = artifact_beagalltach_item_var + 1
			if artifact_beagalltach_item_var >= 3 then
				player:RemoveCollectible(artifact_beagalltach_item)
			end
			return true
		end
	elseif collectible == artifact_achilleshield_item then
		if artifact_achilleshield_itemVar >= 3 then
			player:RemoveCollectible(artifact_achilleshield_item)
			return false
		end
		if player:GetNumCoins() >= 5 then
			player:AddCoins(-5)
			Isaac.Spawn(5, 10, 3, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			artifact_achilleshield_itemVar = artifact_achilleshield_itemVar + 1
			if artifact_achilleshield_itemVar >= 3 then
				player:RemoveCollectible(artifact_achilleshield_item)
			end
			return true
		end
	elseif collectible == Isaac.GetItemIdByName("Rank-Up-Magic Revolution Force") then
		if RevolutionContinue < Game().TimeCounter then -- 지속 시간이 아님
			continueTime = 60 * 30

			RevolutionContinue = Game().TimeCounter + continueTime -- 지속 시간 30초 뒤 (30은 단위 초로 변환)
			isRevolutionTimeOut = false

			timer:Insert(Isaac.GetItemIdByName("Rank-Up-Magic Revolution Force"), continueTime, 0.005, 0.005, 0.005)

			player:RemoveCollectible(Isaac.GetItemIdByName("Rank-Up-Magic Revolution Force"))
		end
		return true
	elseif collectible == Isaac.GetItemIdByName("Rank-Up-Magic Raid Force") then
		if RaidContinue < Game().TimeCounter then -- 지속 시간이 아님
			continueTime = 120 * 30

			RaidContinue = Game().TimeCounter + continueTime -- 지속 시간 30초 뒤 (30은 단위 초로 변환)
			isRaidTimeOut = false

			timer:Insert(Isaac.GetItemIdByName("Rank-Up-Magic Raid Force"), continueTime, 0.005, 0.005, 0.005)

			player:RemoveCollectible(Isaac.GetItemIdByName("Rank-Up-Magic Raid Force"))
		end
		return true
	elseif collectible == Isaac.GetItemIdByName("Rank-Up-Magic Argent Chaos Force") then
		if ArgentContinue < Game().TimeCounter then -- 지속 시간이 아님
			continueTime = 120 * 30

			ArgentContinue = Game().TimeCounter + continueTime -- 지속 시간 30초 뒤 (30은 단위 초로 변환)
			isArgentTimeOut = false

			timer:Insert(Isaac.GetItemIdByName("Rank-Up-Magic Argent Chaos Force"), continueTime, 0.005, 0.005, 0.005)

			player:RemoveCollectible(Isaac.GetItemIdByName("Rank-Up-Magic Argent Chaos Force"))
		end
		return true
	elseif collectible == dduckrack_item then
		i = math.random(1,2)
		if i == 1 then
			ethereumVar = ethereumVar - 1
		else
			ethereumVar = ethereumVar + 1
		end
	elseif collectible == fortcookie_item then
		i = math.random(1,2)
		if i == 1 then
			Isaac.Spawn(5, 10, 8, Isaac.GetFreeNearPosition(player.Position,50), Vector(0,0), player)
		else
			Isaac.Spawn(5, 300, 0, Isaac.GetFreeNearPosition(player.Position,50), Vector(0,0), player)
		end
		return true
	elseif collectible == bok_E_sibal_shake_it_item then
		if player:GetNumCoins() >= 15 then
			i = math.random(1,15)
			player:AddCollectible(setitem[3*i-2],0,true)
			player:AddCollectible(setitem[3*i-1],0,true)
			player:AddCollectible(setitem[3*i],0,true)
			player:AddCoins(-15)
			player:RemoveCollectible(bok_E_sibal_shake_it_item)
		end
	elseif collectible == bok_E_gae_ship_shake_it_item then
		if player:GetNumCoins() >= 15 then
			bok_a_jeong_sin_cha_ri_ja = true
			bok_a_mal_jom_dureora = Game().TimeCounter
			player:AddCollectible(417,0,false)
			player:AddCoins(-15)
			player:RemoveCollectible(bok_E_gae_ship_shake_it_item)
		end
	elseif collectible == hey_bok_dont_do_that_item then
		if player:GetNumCoins() >= 5 then
			player:AddCoins(-5)
			RedCubeVar = RedCubeVar + 1
			player:UseActiveItem(105, false, true, false, false)
			if RedCubeVar >= 3 then
				player:RemoveCollectible(hey_bok_dont_do_that_item)
				RedCubeVar = 0
			end
			return true
		end
	elseif collectible == omfg_sagi_item then
			omfg_sagiVar = omfg_sagiVar + 1
			local tmpsagi = player:GetCardRNG(hermit_stars_card):RandomInt(100)+1
			if tmpsagi > 50 then
				player:AddCoins(player:GetNumCoins())
			else
				player:AddCoins(-99);
				player:RemoveCollectible(omfg_sagi_item)
			end
			if omfg_sagiVar >= 3 then
				player:RemoveCollectible(omfg_sagi_item)
				omfg_sagiVar = 0
			end
			return true
	elseif collectible == bok_E_tuk_burumyeon_an_om_item then
		if player:GetNumCoins() >= 10 then
			player:AddCoins(-10)
			BlackCubeVar = BlackCubeVar + 1
			player:UseActiveItem(105, false, true, false, false)
			Isaac.Spawn(5, 100, 0,Isaac.GetFreeNearPosition(player.Position,50), Vector(0, 0), player)
			if BlackCubeVar >= 3 then
				player:RemoveCollectible(bok_E_tuk_burumyeon_an_om_item)
				BlackCubeVar = 0
			end
			return true
		end
	elseif collectible == u_ang_jyoo_gum_item then
		if player:GetNumCoins() >= 15 then	
			i = ranNum(u_ang_jyoo_gum_item,2)
			if i == 1 then
				j = ranNum(u_ang_jyoo_gum_item,#setitem/3)
				player:AddCollectible(setitem[3*j-2],0,true)
				player:AddCollectible(setitem[3*j-1],0,true)
				player:AddCollectible(setitem[3*j],0,true)
			end
			player:AddCoins(-15)
			player:RemoveCollectible(u_ang_jyoo_gum_item)
		end
		return true
	elseif collectible == A_nae_noon_item then
		level:AddCurse(1,false)
		Isaac.Spawn(5, 100, Game():GetItemPool():GetCollectible(ItemPoolType.POOL_GREED_CURSE, true, player:GetCollectibleRNG(A_nae_noon_item):GetSeed()),Isaac.GetFreeNearPosition(player.Position,50), Vector(0, 0), player)
		player:RemoveCollectible(A_nae_noon_item)
		return true
	elseif collectible == garbage_item then
		if player:HasCollectible(52) then -- 닥터 소지 시
			player:RemoveCollectible(52) -- 닥터 제거
		end
		if player:HasCollectible(68) then -- 테크 소지 시
			player:RemoveCollectible(68) -- 테크 제거
		end
		if player:HasCollectible(114) then -- 칼 소지 시
			player:RemoveCollectible(114) -- 칼 제거
		end
		if player:HasCollectible(118) then -- 혈사 소지 시
			player:RemoveCollectible(118) -- 혈사 제거
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
		if player:HasCollectible(asulf_item) then -- 루도비코 소지 시
			player:RemoveCollectible(asulf_item) -- 루도비코 제거
		end
		if player:HasCollectible(329) then -- 루도비코 소지 시
			player:RemoveCollectible(329) -- 루도비코 제거
		end
		if player:HasCollectible(395) then -- 테크엑스 소지 시
			player:RemoveCollectible(395) -- 테크엑스 제거
		end
		if player:HasCollectible(533) then -- 라샷 소지 시
			player:RemoveCollectible(533) -- 라샷 제거
		end
		local i = math.random(1,8)
		if i == 1 then
			player:AddCollectible(68,0,false)
		elseif i == 2 then
			player:AddCollectible(114,0,false)
		elseif i == 3 then
			player:AddCollectible(118,0,false)
		elseif i == 4 then
			player:AddCollectible(168,0,false)
		elseif i == 5 then
			player:AddCollectible(asulf_item,0,false)
		elseif i == 6 then
			player:AddCollectible(329,0,false)
		elseif i == 7 then
			player:AddCollectible(533,0,false)
		else
			player:AddCollectible(395,0,false)
		end
		return true
	elseif collectible == akma_item then
		if player:GetNumCoins() >= 15 then
			akmaVar = true
			akmaTime = Game().TimeCounter
			player:AddCoins(-15)
			continueTime = 60 * 30
			timer:Insert(akma_item, continueTime, 1, 0, 0)
			player:RemoveCollectible(akma_item)
		end
		return true
	elseif collectible == angel_item then
		if player:GetNumCoins() >= 15 then
			angelVar = true
			angelTime = Game().TimeCounter
			player:AddCoins(-15)
			continueTime = 120 * 30
			timer:Insert(angel_item, continueTime, 1, 0, 0)
			player:RemoveCollectible(angel_item)
		end
		return true
	elseif collectible == double_item then
		if player:GetNumCoins() >= 15 then
			doubleVar = true
			doubleTime = Game().TimeCounter
			player:AddCoins(-15)
			continueTime = 180 * 30
			timer:Insert(double_item, continueTime, 1, 0, 0)
			player:RemoveCollectible(double_item)
		end
		return true
	elseif collectible == astral_item then
		if player:GetNumCoins() >= 15 then
			astraluse = true
			astralContinue = Game().TimeCounter
			player:AddCoins(-15)
			continueTime = 60 * 30
			timer:Insert(astral_item, continueTime, 1, 0, 0)
			player:RemoveCollectible(astral_item)
		end
		return true
	elseif collectible == money_genesis_item then
		if player:GetNumCoins() >= 1 then
			money_genesis = money_genesis + player:GetNumCoins()
			player:AddCoins(player:GetNumCoins()*-1)
		end
		player:RemoveCollectible(money_genesis_item)
		return true
		
	elseif collectible == money_add_damage_item then
		if player:GetNumCoins() >= 1 then
			money_add_damage = money_add_damage + player:GetNumCoins()
			player:AddCoins(player:GetNumCoins()*-1)
		end
		player:RemoveCollectible(money_add_damage_item)
		return true
	
	elseif collectible == hweng_hol_item then
		if player:GetNumCoins() >= 5 then
			local i = math.random(1,3)
			if i == 1 then
				player:AddCollectible(venus_item,0,false)
			elseif i == 2 then
				player:AddCollectible(scent_item,0,false)
			else
				player:AddCollectible(memory_item,0,false)
			end
			player:AddCoins(-20)
		end
		return true
	elseif collectible == samsingi_item then
		if player:GetNumCoins() >= 5 then
			local i = math.random(1,3)
			if i == 1 then
				player:AddCollectible(rosettap_item,0,false)
			elseif i == 2 then
				player:AddCollectible(symbolp_item,0,false)
			else
				player:AddCollectible(farsp_item,0,false)
			end
			player:AddCoins(-5)
		end
		return true
	elseif collectible == jongma_item then
		if player:GetNumCoins() >= 5 then
			local i = math.random(1,3) 
			if i == 1 then
				player:AddCollectible(rcsn_item,0,false)
			elseif i == 2 then
				player:AddCollectible(rasr_item,0,false)
			else
				player:AddCollectible(rdmsb_item,0,false)
			end
			player:AddCoins(-5)
		end
		return true
	elseif collectible == gim_luke_item then
		if player:GetNumCoins() >= 5 then
			local i = math.random(1,3)
			if i == 1 then
				player:AddCollectible(lumen_item,0,false)
			elseif i == 2 then
				player:AddCollectible(tenenu_item,0,false)
			else
				player:AddCollectible(solfon_item,0,false)
			end
			player:AddCoins(-5)
		end
		return true
	elseif collectible == er_gong_item then
		if player:GetNumCoins() >= 5 then
			local i = math.random(1,3)
			if i == 1 then
				player:AddCollectible(cpb_item,0,false)
			elseif i == 2 then
				player:AddCollectible(cpn_item,0,false)
			else
				player:AddCollectible(cpr_item,0,false)
			end
			player:AddCoins(-5)
		end
		return true
	elseif collectible == jjap_raptor_item then
		if player:GetNumCoins() >= 15 then
			player:AddCoins(-15)
			player:RemoveCollectible(jjap_raptor_item)
			i = math.random(1,10)
			if i == 1 then
				Isaac.Spawn(5, 100, quickchaos_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			elseif i == 2 then
				Isaac.Spawn(5, 100, skipforce_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			elseif i == 3 then
				Isaac.Spawn(5, 100, deathdoubleforce_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			elseif i == 4 then
				Isaac.Spawn(5, 100, astral_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			elseif i == 5 then
				Isaac.Spawn(5, 100, cipher_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			elseif i == 6 then
				Isaac.Spawn(5, 100, Isaac.GetItemIdByName("Rank-Up-Magic Revolution Force"), Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			elseif i == 7 then
				Isaac.Spawn(5, 100, Isaac.GetItemIdByName("Rank-Up-Magic Raid Force"), Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			elseif i == 8 then
				Isaac.Spawn(5, 100, Isaac.GetItemIdByName("Rank-Up-Magic Argent Chaos Force"), Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			elseif i == 9 then
				Isaac.Spawn(5, 100, raptor_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			else
				Isaac.Spawn(5, 100, soulshave_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			end
		end
		return true
	elseif collectible == 475 then
		for i = 1 , #entities do
			if entities[i]:IsVulnerableEnemy() then
				entities[i]:TakeDamage(9000000, 0, EntityRef(player), 1)
			end
		end
	elseif collectible == randomset_item then
		Isaac.Spawn(5, 100, setitem[player:GetCollectibleRNG(randomset_item):RandomInt(#setitem)+1], Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		player:RemoveCollectible(randomset_item)
		return true
	elseif collectible == actLuck_item then
		if player:GetNumCoins() >= 5 then
			plusluck = plusluck + 1
			player:AddCacheFlags(CacheFlag.CACHE_LUCK)
			player:AddCoins(-5)
		end
		return true
	elseif collectible == yuryoBrim_item then
		if player:GetNumCoins() >= 30 then
			player:AddCollectible(118,0,true)
			player:AddCoins(-30)
		end
		return true
	elseif collectible == yuryoKarl_item then
		if player:GetNumCoins() >= 15 then
			player:AddCollectible(114,0,true)
			RemAttack(114)
			player:AddCoins(-15)
		end
		return true
	elseif collectible == yuryoTech_item then
		if player:GetNumCoins() >= 15 then
			player:AddCollectible(68,0,true)
			RemAttack(68)
			player:AddCoins(-15)
		end
		return true
	elseif collectible == gungeoncopy_item then
		local chm = player:GetCollectibleNum(208)
		for i=0,chm do
			player:RemoveCollectible(208)
			player:AddCollectible(381,0,true)
		end
		return true
	elseif collectible == i_cant_understand_item then
		if (Game():GetLevel():GetAngelRoomChance() < 1) then
			Game():GetLevel():AddAngelRoomChance(1);
		elseif (Game():GetLevel():GetAngelRoomChance() > 0) then
			Game():GetLevel():AddAngelRoomChance(-1);
		end
		return true
	elseif collectible == 477 and player:GetPlayerType() ~= 15 then
		voidVar = voidVar + 1
		if voidVar >= 3 then
			player:RemoveCollectible(477)
		end
	end
end

ChaosGreed:AddCallback(ModCallbacks.MC_USE_ITEM, ChaosGreed.useItem)

function ChaosGreed:useCard(card) 
	player = Isaac.GetPlayer(0) -- 초반 시작 카드

		if card == hermit_stars_card then 
		player:AddCard(Card.CARD_HERMIT)
		player:AddCard(Card.CARD_STARS)
		Isaac.Spawn(5, 100, setitem[player:GetCardRNG(hermit_stars_card):RandomInt(#setitem)+1], Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		if player:GetPlayerType() == 1 then
			Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, Card.CARD_JOKER, player.Position, Vector(math.random(-5,5),math.random(-5,5)), player)
			Isaac.Spawn(5, 100, i_cant_understand_item, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
		end
		if player:GetPlayerType() == 7 then
			player:AddCollectible(yuryoBrim_item,0,true)
		end
		return true 
	end 
end 

ChaosGreed:AddCallback(ModCallbacks.MC_USE_CARD, ChaosGreed.useCard)

function ChaosGreed:npcHit(dmg_target , dmg_amount, dmg_source, dmg_dealer)
    player = Isaac.GetPlayer(0)
    entities = Isaac.GetRoomEntities()
	flag = false
	if dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) then
			bonusmultiple = 0;
		end
	end

    if player:HasCollectible(chiggers_item) and dmg_target:IsVulnerableEnemy() then
        if dmg_dealer.Type == EntityType.ENTITY_TEAR and player.Luck >= 10 then
			spd = 5.0 + math.random()
			ang = math.rad(math.random() * 360)
			s = Game():Spawn(3, 802, dmg_target.Position+Vector(math.cos(ang)*spd,math.sin(ang)*spd), Vector(math.cos(ang)*spd,math.sin(ang)*spd), player, 0, player.InitSeed)
			s.CollisionDamage = dmg_amount * 2
		else
			if dmg_dealer.Type == EntityType.ENTITY_TEAR and math.random(1,11-player.Luck)<=1 then
				spd = 5.0 + math.random()
				ang = math.rad(math.random() * 360)
				s = Game():Spawn(3, 802, dmg_target.Position+Vector(math.cos(ang)*spd,math.sin(ang)*spd), Vector(math.cos(ang)*spd,math.sin(ang)*spd), player, 0, player.InitSeed)
				s.CollisionDamage = dmg_amount * 2
			end
		end
    end
    --[[if player:HasCollectible(stopCopyHy_item) and dmg_target:IsVulnerableEnemy() and wGoldVar<300 then
    	if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) then
    		wGoldVar = wGoldVar + 1
    	end
    end--]]

	if player:HasCollectible(rainbowdead_item) and player:HasCollectible(rainbowpaw_item) and player:HasCollectible(rainbowtail_item) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) then
			Isaac.Spawn(3, 43, math.random(2,5), player.Position, Vector(0,0), player)
		end
	end

    if player:HasCollectible(yusa_guppy_item) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) then
			Isaac.Spawn(3, 73, 0, player.Position, Vector(0,0), player)
		end
	end

	if player:HasCollectible(cpb_item) and player:HasCollectible(cpn_item) and player:HasCollectible(cpr_item) and dmg_target:IsVulnerableEnemy() then
		if dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE then
			dmg_target:GetData().AquVar = true
		end
	end

	if player:HasCollectible(325) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount*0.25, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 25;
		end
	end

	if player:HasCollectible(lol_item) and dmg_target.Type == 306 and math.random(1,10)<=3 then
		dmg_target:Kill()
	end

	if player:HasCollectible(galactic_item) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount*0.3, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 30;
		end
	end
	if player:HasCollectible(68) and dmg_target:IsVulnerableEnemy() and not player:HasCollectible(114) then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount*4.0, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 400;
		end
	end
	if player:HasCollectible(118) and dmg_target:IsVulnerableEnemy() and not player:HasCollectible(114) then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount*2.0, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 200;
		end
	end
	if player:HasCollectible(asulf_item) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount*2, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 200;
		end
	end
	if player:HasCollectible(114) and dmg_target:IsVulnerableEnemy() then
		if dmg_dealer.Type == EntityType.ENTITY_KNIFE and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount*2, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 200;
		end
	end
	if player:HasCollectible(tuna_item) and ((dmg_target.Type == 102 and dmg_target.Variant == 2) or dmg_target.Type == 407) then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount*0.5, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 50;
		end
	end
	if player:HasCollectible(psyfly_item) and dmg_target:IsVulnerableEnemy() then
		if dmg_dealer.Type == EntityType.ENTITY_TEAR and math.random(1,6) <= 1 then
			Isaac.Spawn(EntityType.ENTITY_FAMILIAR, FamiliarVariant.BLUE_FLY, math.random(1,5), player.Position, Vector(0, 0), player)
		end
	end
	if player:HasCollectible(533) then -- 22 23 24를 모두 획득 시
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 100;
		end
	end
	if player:HasCollectible(venus_item) and player:HasCollectible(scent_item) and player:HasCollectible(memory_item) and dmg_target:IsVulnerableEnemy() then -- 22 23 24를 모두 획득 시
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount * 1, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 100;
		end
	end
	if player:HasCollectible(farsp_item) and player:HasCollectible(rosettap_item) and player:HasCollectible(symbolp_item) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount * 1, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 100;
		end
	end 
	if player:HasCollectible(lumen_item) and player:HasCollectible(tenenu_item) and player:HasCollectible(solfon_item) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount * 1, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 100;
		end
	end
	if player:HasCollectible(cpr_item) and player:HasCollectible(cpb_item) and player:HasCollectible(cpn_item) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount * 1, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 100;
		end
	end
	if player:HasCollectible(rcsn_item) and player:HasCollectible(rasr_item) and player:HasCollectible(rdmsb_item) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount * 1, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 100;
		end
	end
	if player:HasCollectible(rainbowpaw_item) and player:HasCollectible(rainbowdead_item) and player:HasCollectible(rainbowtail_item) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount * 1, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 100;
		end
	end
	if player:HasCollectible(ne_item) and player:HasCollectible(da_item) and player:HasCollectible(ssip_item) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount * 1, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 100;
		end
	end
	if player:HasCollectible(mangsang_item) and player:HasCollectible(hondon_item) and player:HasCollectible(hwangak_item) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount * 1, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 100;
		end
	end
	if player:HasCollectible(ac_item) and player:HasCollectible(ti_item) and player:HasCollectible(ve_item) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount * 1, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 100;
		end
	end
	if player:HasCollectible(de_item) and player:HasCollectible(fen_item) and player:HasCollectible(ce_item) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount * 1, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 100;
		end
	end
	if player:HasCollectible(chaosSt_item) and player:HasCollectible(chaosNd_item) and player:HasCollectible(chaosRd_item) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount * 1, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 100;
		end
	end
	if player:HasCollectible(injecA_item) and player:HasCollectible(injecB_item) and player:HasCollectible(injecC_item) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount * 1, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 100;
		end
	end
	if player:HasCollectible(godheadA_item) and player:HasCollectible(godheadB_item) and player:HasCollectible(godheadC_item) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount * 1, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 100;
		end
	end
	if player:HasCollectible(maxoverA_item) and player:HasCollectible(maxoverB_item) and player:HasCollectible(maxoverC_item) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount * 1, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 100;
		end
	end
	if player:HasCollectible(moneyA_item) and player:HasCollectible(moneyB_item) and player:HasCollectible(moneyC_item) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount * 1, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 100;
		end
	end
	if player:HasCollectible(moneyA_item) and player:HasCollectible(moneyB_item) and player:HasCollectible(moneyC_item) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target.Type == 406 then
			dmg_target:TakeDamage(dmg_amount * 1, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 100;
		end
	end
	if player:HasCollectible(mangsang_item) and player:HasCollectible(hondon_item) and player:HasCollectible(hwangak_item) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target.Type == 412 then
			dmg_target:TakeDamage(dmg_amount * 1, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 100;
		end
	end
	if player:HasCollectible(farsp_item) and player:HasCollectible(rosettap_item) and player:HasCollectible(symbolp_item) and dmg_target:IsVulnerableEnemy() and dmg_target:ToNPC():IsBoss() == false then
		if dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE then
			for i = 1 , #entities do
				if entities[i]:IsVulnerableEnemy() and entities[i]:ToNPC():IsBoss() == false then
					entities[i]:TakeDamage(dmg_amount, 0, EntityRef(player), 1)
				end
			end
		end
	end
	if player:HasCollectible(maxoverA_item) and player:HasCollectible(maxoverB_item) and player:HasCollectible(maxoverC_item) then
		if dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE then
			dmg_target:TakeDamage(dmg_amount*1.5, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 150;
		end
	end
	
	if player:HasCollectible(exDmgDble_item) and dmg_target:IsVulnerableEnemy() and (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) then
		dmg_target:TakeDamage(dmg_amount * 2, 0, EntityRef(player), 1)
		bonusmultiple = bonusmultiple + 200;
	end

	if player:HasCollectible(395) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount * 3, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 300;
		end
	end
	--[[if player:HasCollectible(extradamage_item) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount * 3, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 300;
		end
	end--]]
	if player:HasPlayerForm(PlayerForm.PLAYERFORM_GUPPY) == true and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount * 1, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 100;
		end
	end
	if money_add_damage >0 and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) then
			dmg_target:TakeDamage(dmg_amount * (money_add_damage/100), 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + money_add_damage;
		end
	end
	if extraDamage > 0 and dmg_target:IsVulnerableEnemy() and (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) then
		dmg_target:TakeDamage((dmg_amount * extraDamage) , 0, EntityRef(player), 1)
		bonusmultiple = bonusmultiple + (extraDamage*100);
	end
	if dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount * wGoldVar/100, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + wGoldVar;
		end
	end

	--[[if player:HasCollectible(realChamp_item) and (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) then
		if dmg_target:ToNPC():IsChampion() and dmg_target:IsVulnerableEnemy() and dmg_target:HasMortalDamage() then
			Isaac.Spawn(5, 0, 0, Isaac.GetFreeNearPosition(player.Position, 50), Vector(0,0), player)
		end
	end]]
	--[[if player:HasCollectible(63) and dmg_target:IsVulnerableEnemy() then
		if dmg_dealer.Type == EntityType.ENTITY_TEAR and math.random(1,4)==1 then
			player:SetActiveCharge(player:GetActiveCharge() + 1)
		end
	end]]

    if dmg_source == 0 then
        lvl = Game():GetLevel()
        amt = dmg_amount
        l = lvl:GetAbsoluteStage()

        fin_amt = 1.0 - (l / 12) * 0.4
        --Isaac.DebugString("Original Damage:"..amt..", Reduced Damage:"..(dmg_amount * fin_amt))
        ref = dmg_target
        --for i=1,#ref do
        --    if Isaac.GetRoomEntities()[i].Index == dmg_target.Index then ref = Isaac.GetRoomEntities()[i] end
        --end

        d = 1.0

        if player:HasCollectible(chiggers_item) and ref:IsVulnerableEnemy() then
            d = 0.5
        end

        if ref.Type == EntityType.ENTITY_HUSH then
        	fin_amt = 1.5
        end

        if ref.Index ~= nil then
        	if ref:IsVulnerableEnemy() then
            	ref.HitPoints = ref.HitPoints + (dmg_amount * d) * (1.0-fin_amt)
            end
        end
    end
end

ChaosGreed:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, ChaosGreed.npcHit)

function ChaosGreed:onDamage(entity, damage, damageFlag, damageSource, DamageCountdownFrames)
	player = Isaac.GetPlayer(0)

	if player:GetPlayerType() == 14 then
		if damageFlag == DamageFlag.DAMAGE_CURSED_DOOR then
			return false
		end
	end
	if player:HasCollectible(de_item) and player:HasCollectible(fen_item) and player:HasCollectible(ce_item) then
		if damageFlag == DamageFlag.DAMAGE_CURSED_DOOR then
			return false
		end
	end
	if player:HasCollectible(de_item) and player:HasCollectible(fen_item) and player:HasCollectible(ce_item) then
		if aricooldown <= Game():GetFrameCount() then
			aricooldown = Game():GetFrameCount() + (30 * 30)
			player:UseActiveItem(58, false, true, false, false)
			return false
		end
	end
	if player:HasCollectible(173) and math.random(1,10) <= 3 then
		Isaac.Spawn(5,10,3,Isaac.GetFreeNearPosition(player.Position,50), Vector(0,0), player)
	end
end

ChaosGreed:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, ChaosGreed.onDamage, EntityType.ENTITY_PLAYER)

function ChaosGreed:eterbanjireset()
	game = Game();
	entities = Isaac.GetRoomEntities()
	room = game:GetRoom();
	player = Isaac.GetPlayer(0);
	
	if player:HasCollectible(313)==false then
		if eterbanji == 0 and roomiscleared == 1 then
			if not player:GetEffects():GetCollectibleEffect(313) then	
				roomiscleared = 0
				if eterbanji ~= 0 and roomiscleared ~=0 then
					player:GetEffects():AddCollectibleEffect(313,true)
				end
				if roomseedisold ~= room:GetDecorationSeed() then
					roomiscleared = 1
					roomseedisold = room:GetDecorationSeed()
					player:GetEffects():AddCollectibleEffect(313,true)
				end
			end
		end

		if roomseedisold ~= room:GetDecorationSeed() then
			roomiscleared = 0 
			roomseedisold = room:GetDecorationSeed()
		end

		if eterbanji ~= 0 and roomiscleared == 0 then
			eterbanji = eterbanji + 1
			roomiscleared = 1
		end

		if eterbanji > 0 then
			if not player:GetEffects():GetCollectibleEffect(313) then	
				player:GetEffects():AddCollectibleEffect(313,true)
				eterbanji = eterbanji - 1
			end
		end
	elseif player:HasCollectible(313) then
		if eterbanji > 0 then
			if not player:GetEffects():GetCollectibleEffect(313) then	
				player:GetEffects():AddCollectibleEffect(313,true)
				eterbanji = eterbanji - 1
				roomiscleared = 0
			end
		end
	end

	for i = 1, #entities do
		if entities[i]:IsVulnerableEnemy() and player:HasCollectible(spooky_item) then
			if ((player.Position.X - entities[i].Position.X)^2 + (player.Position.Y - entities[i].Position.Y)^2)^0.5 <= 150 then
				entities[i]:AddFear(EntityRef(player),1)
			end
		end
	end
	if player:HasCollectible(boospack_item) and BoosterPackBoolean == false then
		for i=1,3 do
			Isaac.Spawn(5, 300, 0, Isaac.GetFreeNearPosition(player.Position,50), Vector(0,0), player)
		end
		BoosterPackBoolean = true
	end
end

ChaosGreed:AddCallback(ModCallbacks.MC_POST_UPDATE, ChaosGreed.eterbanjireset);

function ChaosGreed:specialcheck()
	local player = Isaac.GetPlayer(0)
	local specialnum = 0
	
	for i = 1, #specialitemp do
		if player:HasCollectible(specialitemp[i]) then
			specialnum = specialnum + player:GetCollectibleNum(specialitemp[i])
			if specialitem1 == 0 then
				specialitem1 = specialitemp[i]
			elseif specialitem1 ~= specialitemp[i] and specialitem2 == 0 then
				specialitem2 = specialitemp[i]
			elseif specialitem1 ~= specialitemp[i] and specialitem2 ~= specialitemp[i] and specialitem3 == 0 then
				specialitem3 = specialitemp[i]
			elseif specialitem1 ~= specialitemp[i] and specialitem2 ~= specialitemp[i] and specialitem3 ~= specialitemp[i] and specialitem4 == 0 then
				specialitem4 = specialitemp[i]
			elseif specialitem1 ~= specialitemp[i] and specialitem2 ~= specialitemp[i] and specialitem3 ~= specialitemp[i] and specialitem4 ~= specialitemp[i] and specialitem5 == 0 then
				specialitem5 = specialitemp[i]
			end
		else
			if specialitem1 == specialitemp[i] then
				specialitem1 = 0
			end
			if specialitem2 == specialitemp[i] then
				specialitem2 = 0
			end
			if specialitem3 == specialitemp[i] then
				specialitem3 = 0
			end
			if specialitem4 == specialitemp[i] then
				specialitem4 = 0
			end
			if specialitem5 == specialitemp[i] then
				specialitem5 = 0
			end
		end
	end
	if specialnum >= 5 then
		for i = 1, #specialitemp do
			if specialitemp[i] ~= specialitem1 and specialitemp[i] ~= specialitem2 and specialitemp[i] ~= specialitem3 and specialitemp[i] ~= specialitem4 and specialitemp[i] ~= specialitem5 and player:HasCollectible(specialitemp[i]) then
				player:RemoveCollectible(specialitemp[i])
			end
			for j = 1 , #entities do
				if entities[j].Type == 5 and entities[j].Variant == 100 and entities[j].SubType == specialitemp[i] then
					entities[j]:ToPickup():Morph(5, 100, 0, true)
				end
			end
			if specialremove == false then
				Game():GetItemPool():RemoveCollectible(specialitemp[i]);
			end
		end
		specialremove = true;
	end
	specialnum = 0
end

ChaosGreed:AddCallback(ModCallbacks.MC_POST_UPDATE, ChaosGreed.specialcheck);

function ChaosGreed:judasAzaCharEffect()
	player = Isaac.GetPlayer(0)
	if player:GetPlayerType() == 3 then
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
		if player:HasCollectible(533) then -- 테크엑스 소지 시
			player:RemoveCollectible(533) -- 테크엑스 제거
		end
	end
	if player:GetPlayerType() == 7 then
		if player:HasCollectible(52) then -- 닥터 소지 시
			player:RemoveCollectible(52) -- 닥터 제거
			Isaac.Spawn(5, 100, 118,Isaac.GetFreeNearPosition(player.Position,50), Vector(0, 0), player)
		end
		if player:HasCollectible(68) then -- 테크 소지 시
			player:RemoveCollectible(68) -- 테크 제거
			player:RemoveCollectible(68)
			Isaac.Spawn(5, 100, 118,Isaac.GetFreeNearPosition(player.Position,50), Vector(0, 0), player)
		end
		if player:HasCollectible(104) then -- 테크 소지 시
			player:RemoveCollectible(104) -- 테크 제거
			Isaac.Spawn(5, 100, 118,Isaac.GetFreeNearPosition(player.Position,50), Vector(0, 0), player)
		end
		if player:HasCollectible(114) then -- 칼 소지 시
			player:RemoveCollectible(114) -- 칼 제거
			Isaac.Spawn(5, 100, 118,Isaac.GetFreeNearPosition(player.Position,50), Vector(0, 0), player)
		end
		if player:HasCollectible(agravity_item) then -- 그혈 소지 시
			player:RemoveCollectible(agravity_item) -- 그혈 제거
		end
		if player:HasCollectible(149) then -- 구토 소지 시
			player:RemoveCollectible(149) -- 구토 제거
			Isaac.Spawn(5, 100, 118,Isaac.GetFreeNearPosition(player.Position,50), Vector(0, 0), player)
		end
		if player:HasCollectible(152) then -- 테크2 소지 시
			player:RemoveCollectible(152) -- 테크2 제거
			Isaac.Spawn(5, 100, 118,Isaac.GetFreeNearPosition(player.Position,50), Vector(0, 0), player)
		end
		if player:HasCollectible(168) then -- 에픽 소지 시
			player:RemoveCollectible(168) -- 에픽 제거
			Isaac.Spawn(5, 100, 118,Isaac.GetFreeNearPosition(player.Position,50), Vector(0, 0), player)
		end
		if player:HasCollectible(229) then -- 플래닛 소지 시
			player:RemoveCollectible(229) -- 플래닛 제거
		end
		if player:HasCollectible(asulf_item) then -- 루도비코 소지 시
			player:RemoveCollectible(asulf_item) -- 루도비코 제거
		end
		if player:HasCollectible(329) then -- 루도비코 소지 시
			player:RemoveCollectible(329) -- 루도비코 제거
			Isaac.Spawn(5, 100, 118,Isaac.GetFreeNearPosition(player.Position,50), Vector(0, 0), player)
		end
		if player:HasCollectible(395) then -- 테크엑스 소지 시
			player:RemoveCollectible(395) -- 테크엑스 제거
			Isaac.Spawn(5, 100, 118,Isaac.GetFreeNearPosition(player.Position,50), Vector(0, 0), player)
		end
	end
end

ChaosGreed:AddCallback(ModCallbacks.MC_POST_UPDATE, ChaosGreed.judasAzaCharEffect)

function ChaosGreed:familiarUpdate(ent)
	fam = ent:ToFamiliar()
    player = Isaac.GetPlayer(0)

    if fam.Variant == 802 then
        if fam.FrameCount % 20 == 2 then
            ents = Isaac.GetRoomEntities()
            for i=1,#ents do
                if ents[i]:IsVulnerableEnemy() then
                    if fam.Target == nil or ents[i].HitPoints > fam.Target.HitPoints then if ents[i].Size > 3 then
                        fam.Target = ents[i]
                    end end
                end
            end
        end
        if fam.FrameCount > 80 then fam:Kill() end
        if fam.Target ~= nil and fam.FrameCount % 2 == 1 or fam.FramCount == 1 then
            fam.Velocity = fam.Velocity + ((fam.Target.Position - fam.Position):Resized(2.65+math.abs(math.cos(fam.FrameCount / 2) * 0.5)))
            fam.Velocity = fam.Velocity * 0.8
        end

        if fam.Target == nil and fam.FrameCount > 30 then fam:Kill() end

        if fam.Velocity:Length() > 8 then fam.Velocity:Resize(8) end

        if fam.FrameCount % 3 == fam.Index % 3 then
            ents = Isaac.GetRoomEntities()
            for i=1,#ents do
                off = ents[i].Position - ent.Position
                if ents[i]:IsVulnerableEnemy() and math.abs(off.X) + math.abs(off.Y) < ent.Size+32 and fam.FrameCount > 40 then
                    ent:Kill()
                end
            end
        end
	end
end

ChaosGreed:AddCallback(ModCallbacks.MC_FAMILIAR_UPDATE, ChaosGreed.familiarUpdate)

function RemAttack(except)
	player = Isaac.GetPlayer(0)
	if player:HasCollectible(52) and except~=52 then -- 닥터 소지 시
		player:RemoveCollectible(52) -- 닥터 제거
	end
	if player:HasCollectible(68) and except~=68 then -- 테크 소지 시
		player:RemoveCollectible(68) -- 테크 제거
		player:RemoveCollectible(68)
	end
	if player:HasCollectible(104) and except~=104 then -- 테크 소지 시
		player:RemoveCollectible(104) -- 테크 제거
	end
	if player:HasCollectible(114) and except~=114 then -- 칼 소지 시
		player:RemoveCollectible(114) -- 칼 제거
	end
	if player:HasCollectible(118) and except~=118 then -- 혈사 소지 시
		player:RemoveCollectible(118) -- 혈사 제거
		player:RemoveCollectible(118)
	end
	if player:HasCollectible(agravity_item) and except~=agravity_item then -- 그혈 소지 시
		player:RemoveCollectible(agravity_item) -- 그혈 제거
	end
	if player:HasCollectible(149) and except~=149 then -- 구토 소지 시
		player:RemoveCollectible(149) -- 구토 제거
	end
	if player:HasCollectible(152) and except~=152 then -- 테크2 소지 시
		player:RemoveCollectible(152) -- 테크2 제거
	end
	if player:HasCollectible(168) and except~=168 then -- 에픽 소지 시
		player:RemoveCollectible(168) -- 에픽 제거
	end
	if player:HasCollectible(asulf_item) and except~=asulf_item then -- 루도비코 소지 시
		player:RemoveCollectible(asulf_item) -- 루도비코 제거
	end
	if player:HasCollectible(329) and except~=329 then -- 루도비코 소지 시
		player:RemoveCollectible(329) -- 루도비코 제거
	end
	if player:HasCollectible(395) and except~=395 then -- 테크엑스 소지 시
		player:RemoveCollectible(395) -- 테크엑스 제거
	end
end

function ranNum(item, num)
	randomnum = ((player:GetCollectibleRNG(item):RandomInt((num)))+1)
	return randomnum
end

function ChaosGreed:Render()
	player = Isaac.GetPlayer(0)
	if player:HasCollectible(backpack_item) and storedItem ~= 0 then
		storedItemSprite:Render(Vector(0,0), Vector(0,0), Vector(0,0))
	end
	
	if specialitem1 ~= 0 then
		specialSprite1:ReplaceSpritesheet(0, config:GetCollectible(specialitem1).GfxFileName)
		specialSprite1:LoadGraphics()
		specialSprite1:Render(Vector(10,220), Vector(0,0), Vector(0,0))
	end
	if specialitem2 ~= 0 then
		specialSprite2:ReplaceSpritesheet(0, config:GetCollectible(specialitem2).GfxFileName)
		specialSprite2:LoadGraphics()
		specialSprite2:Render(Vector(30,220), Vector(0,0), Vector(0,0))
	end
	if specialitem3 ~= 0 then
		specialSprite3:ReplaceSpritesheet(0, config:GetCollectible(specialitem3).GfxFileName)
		specialSprite3:LoadGraphics()
		specialSprite3:Render(Vector(50,220), Vector(0,0), Vector(0,0))
	end
	if specialitem4 ~= 0 then
		specialSprite4:ReplaceSpritesheet(0, config:GetCollectible(specialitem4).GfxFileName)
		specialSprite4:LoadGraphics()
		specialSprite4:Render(Vector(70,220), Vector(0,0), Vector(0,0))
	end
	if specialitem5 ~= 0 then
		specialSprite5:ReplaceSpritesheet(0, config:GetCollectible(specialitem5).GfxFileName)
		specialSprite5:LoadGraphics()
		specialSprite5:Render(Vector(90,220), Vector(0,0), Vector(0,0))
	end
	Isaac.RenderText(bonusmultiple .. "%",10,260,255/255,90/255,90/255,2)
	
	for i=1, setnumber do
		if setcheck[i] ~= 0 then
			setSprite[i]:ReplaceSpritesheet(0, config:GetCollectible(setcheck[i]).GfxFileName)
			setSprite[i]:LoadGraphics()
			setSprite[i]:Render(Vector(10+((i-1)*20),280), Vector(0,0), Vector(0,0))
		end
	end

	-- 타이머 랜더
	timer:Rander()
end

ChaosGreed:AddCallback(ModCallbacks.MC_POST_RENDER, ChaosGreed.Render);