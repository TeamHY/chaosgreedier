-- Lua 모듈 불러오기
timer = require "timer"

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
sloth_item = Isaac.GetItemIdByName("A Slothful Foot")
greed_item = Isaac.GetItemIdByName("The Hand of Greed")
gluttony_item = Isaac.GetItemIdByName("A Mouth-eaten Mouth")
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
akma_item = Isaac.GetItemIdByName("2") -- 15원 있어야 사용가능, 1분마다 악마방 아이템 소환

hweng_hol_item = Isaac.GetItemIdByName("Sensory Satisfaction") --황홀
samsingi_item = Isaac.GetItemIdByName("Ancient Civilization") --삼신기
jongma_item = Isaac.GetItemIdByName("Refined Otherverse Magic Stone") --정마
gim_luke_item = Isaac.GetItemIdByName("Heblon's Monarch") --루크
er_gong_item = Isaac.GetItemIdByName("Ice Princess Breath") --얼공

jjap_raptor_item = Isaac.GetItemIdByName("1") --유사 랩터즈포스

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

errorTeleportStartedFrame = -1
UGTeleportStartedFrame = -1

isforcesuccess = 0
isamplisuccess = 0

shadowremove = false
haslumen = false

specialremove = false;

bonusmultiple = 0;

pearlrandom = math.random(0,3)
eterbanji = 0
roomiscleared = 0
roomseedisold = 0
ranscroll = 0

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
	lumen_item,
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
	alevi_item,
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
	bok_E_sibal_shake_it_item
}

specialitemp = {
	18,
	lumen_item,
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
	alevi_item,
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
	503
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
	hweng_hol_item,
	samsingi_item,
	jongma_item,
	gim_luke_item,
	er_gong_item,
	venus_item,
	scent_item,
	memory_item,
	rosettap_item,
	symbolp_item,
	farsp_item,
	rcsn_item,
	rasr_item,
	rdmsb_item,
	lumen_item,
	tenenu_item,
	solfon_item,
	cpb_item,
	cpn_item,
	cpr_item
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
EnvyUse = false
GluttonyContinue = 0
isGluttonyTimeOut = true
GluttonyUse = false
GreedContinue = 0
isGreedTimeOut = true
GreedUse = false
PrideUse = false
SlothContinue = 0
isSlothTimeOut = true
SlothUse = false
footrandom = math.random(2,5)
MonoContinue = 0
isMonoTimeOut = true
momlessscroll = 1
deathdoubleforce_ha_wi_ho_hwan_item_var = 0
succusohwan_item_var = 0
artifact_moralltach_item_var = 0
artifact_beagalltach_item_var = 0
dealnurfvar = 1
solfonVar = 0
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
YusaCleanerVar = false
akmaVar = false
akmaTime = 0
JeongMaVar = false
bonVar = 0
limterVar = 0
specialnum = 0
specialitem1 = 0
specialitem2 = 0
specialitem3 = 0
specialitem4 = 0
ranluck1 = math.random(1,4)
ranluck2 = math.random(1,4)
ranluck3 = math.random(1,4)
plusluck = 0

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
		if player:HasCollectible(rdmsb_item) then -- 241를 획득했을 시
			player.Damage = player.Damage + 4 -- 데미지 +4
		end
		if player:HasCollectible(rcsn_item) then -- 249 획득했을 시
			player.Damage = player.Damage + 4 -- 데미지 +4
		end
		if player:HasCollectible(rasr_item) then -- 255 획득했을 시
			player.Damage = player.Damage + 4 -- 데미지 +4
		end
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
		if player:HasCollectible(cpb_item) then
			player.Damage = player.Damage + 5
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
		player.Damage = player.Damage + (10 * isamplisuccess) + (5 * isforcesuccess) + ranscroll
		if spiceuse == true then
			player.Damage = player.Damage - spiceused
		end
		if trinityuse == true then
			player.Damage = player.Damage - trinityused
		end
		if player:HasCollectible(symbolp_item) then
			if player:HasCollectible(149) and player:HasCollectible(68) == false and player:HasCollectible(114) == false and player:HasCollectible(395) == false then
				player.Damage = ((player.Damage-40)*1.2)+40 -- 40 먼저 빼고 1.3를 곱해서 다시 40 더한다.
			else -- 아니면
				player.Damage = player.Damage * 1.2 -- 그냥 1.3배
			end
		end
		if player:HasCollectible(farsp_item) then
			if player:HasCollectible(149) and player:HasCollectible(68) == false and player:HasCollectible(114) == false and player:HasCollectible(395) == false then
				player.Damage = ((player.Damage-40)*1.2)+40 -- 40 먼저 빼고 1.3를 곱해서 다시 40 더한다.
			else -- 아니면
				player.Damage = player.Damage * 1.2 -- 그냥 1.3배
			end
		end
		if player:HasCollectible(rosettap_item) then
			if player:HasCollectible(149) and player:HasCollectible(68) == false and player:HasCollectible(114) == false and player:HasCollectible(395) == false then
				player.Damage = ((player.Damage-40)*1.2)+40 -- 40 먼저 빼고 1.3를 곱해서 다시 40 더한다.
			else -- 아니면
				player.Damage = player.Damage * 1.2 -- 그냥 1.3배
			end
		end
		if isPowerBondTimeOut == false then
			player.Damage = player.Damage * 4
		end
		if isLimiterRemovalTimeOut == false then
			player.Damage = player.Damage * 2
		end
		if shadowremove == true then
			player.Damage = player.Damage * 1.5
		end
		if player:HasCollectible(solfon_item) then
			if player:HasCollectible(149) and player:HasCollectible(68) == false and player:HasCollectible(114) == false and player:HasCollectible(395) == false then
				player.Damage = ((player.Damage-40)*1.1)+40
			else -- 아니면
				player.Damage = player.Damage * 1.1
			end
		end
		if player:HasCollectible(tenenu_item) then
			if player:HasCollectible(149) and player:HasCollectible(68) == false and player:HasCollectible(114) == false and player:HasCollectible(395) == false then
				player.Damage = ((player.Damage-40)*1.1)+40
			else -- 아니면
				player.Damage = player.Damage * 1.1
			end
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
		if player:HasCollectible(168) and player:HasCollectible(229) then
			player.Damage = player.Damage / 10 * 6
		end
		if player:HasCollectible(213) then
			if player:HasCollectible(149) and player:HasCollectible(68) == false and player:HasCollectible(114) == false and player:HasCollectible(395) == false then
				player.Damage = ((player.Damage-40)*1.3)+40 -- 40 먼저 빼고 1.3를 곱해서 다시 40 더한다.
			else -- 아니면
				player.Damage = player.Damage * 1.3 -- 그냥 1.3배
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
				player.Damage = player.Damage * 1.5 -- 그냥 1.3배
			end
		end
		if PrideUse == true then
			if player:HasCollectible(149) and player:HasCollectible(68) == false and player:HasCollectible(114) == false and player:HasCollectible(395) == false then
				player.Damage = ((player.Damage-40)*0.5)+40 -- 40 먼저 빼고 1.3를 곱해서 다시 40 더한다.
			else -- 아니면
				player.Damage = player.Damage * 0.5 -- 그냥 1.3배
			end
		end
		if GluttonyUse == true then
			if player:HasCollectible(149) and player:HasCollectible(68) == false and player:HasCollectible(114) == false and player:HasCollectible(395) == false then
				player.Damage = ((player.Damage-40)*0.85)+40 -- 40 먼저 빼고 1.3를 곱해서 다시 40 더한다.
			else -- 아니면
				player.Damage = player.Damage * 0.75 -- 그냥 1.3배
			end
		end
		if GreedUse == true then
			if player:HasCollectible(149) and player:HasCollectible(68) == false and player:HasCollectible(114) == false and player:HasCollectible(395) == false then
				player.Damage = ((player.Damage-40)*0.75)+40 -- 40 먼저 빼고 1.3를 곱해서 다시 40 더한다.
			else -- 아니면
				player.Damage = player.Damage * 0.75 -- 그냥 1.3배
			end
		end
		if SlothUse == true then
			if player:HasCollectible(149) and player:HasCollectible(68) == false and player:HasCollectible(114) == false and player:HasCollectible(395) == false then
				player.Damage = ((player.Damage-40)*0.75)+40 -- 40 먼저 빼고 1.3를 곱해서 다시 40 더한다.
			else -- 아니면
				player.Damage = player.Damage * 0.75 -- 그냥 1.3배
			end
		end
		if EnvyUse == true then
			if player:HasCollectible(149) and player:HasCollectible(68) == false and player:HasCollectible(114) == false and player:HasCollectible(395) == false then
				player.Damage = ((player.Damage-40)*0.75)+40 -- 40 먼저 빼고 1.3를 곱해서 다시 40 더한다.
			else -- 아니면
				player.Damage = player.Damage * 0.75 -- 그냥 1.3배
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
	end
	if (cacheFlag == CacheFlag.CACHE_RANGE) then -- 아이템 획득 시 cacheFlag가 사거리면
		if player:HasCollectible(237) then
			player.TearHeight = player.TearHeight - 13
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
		if player:HasCollectible(venus_item) then
			player.Luck  = player.Luck + ranluck1
		end
		if player:HasCollectible(scent_item) then -- 23 획득했을 시
			player.Luck  = player.Luck + ranluck2 -- 럭 3 증가
		end
		if player:HasCollectible(memory_item) then
			player.Luck  = player.Luck + ranluck3
		end
		if player:HasCollectible(46) then -- 46 획득했을 시
			player.Luck  = player.Luck + footrandom -- 럭 4 증가
		end
		if player:HasCollectible(clover_item) then
			player.Luck  = player.Luck + 9
		end
		if player:HasCollectible(374) then
			player.Luck  = player.Luck - 3
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
		if haslumen == true then 
			player.TearFlags = getFlag({2}, player.TearFlags); -- 2번 플래그를 줌
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
		if isMegaBlastTimeOut == false then
			player.TearFlags = getFlag({3}, player.TearFlags);
		end
		if player:HasCollectible(farsp_item) or player:HasCollectible(rosettap_item) or player:HasCollectible(symbolp_item) then
			player.TearFlags = getFlag({2}, player.TearFlags);
		end
		if (player:HasCollectible(farsp_item) and player:HasCollectible(rosettap_item)) or (player:HasCollectible(symbolp_item) and player:HasCollectible(rosettap_item)) or (player:HasCollectible(farsp_item) and player:HasCollectible(symbolp_item)) then
			player.TearFlags = getFlag({3}, player.TearFlags);
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
		if player:HasCollectible(cpn_item) then
			player.MaxFireDelay = player.MaxFireDelay - 1
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
		if (player:HasCollectible(venus_item) and player:HasCollectible(memory_item) and player:HasCollectible(scent_item)) or
		(player:HasCollectible(farsp_item) and player:HasCollectible(symbolp_item) and player:HasCollectible(rosettap_item)) or
		(player:HasCollectible(rcsn_item) and player:HasCollectible(rasr_item) and player:HasCollectible(rdmsb_item)) or
		(player:HasCollectible(solfon_item) and player:HasCollectible(tenenu_item) and haslumen == true) or
		(player:HasCollectible(cpn_item) and player:HasCollectible(cpb_item) and player:HasCollectible(cpr_item)) then
			player.CanFly = true
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
		haslumen = false
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
		EnvyUse = false
		GluttonyContinue = 0
		isGluttonyTimeOut = true
		GluttonyUse = false
		GreedContinue = 0
		isGreedTimeOut = true
		PrideUse = false
		SlothContinue = 0
		isSlothTimeOut = true
		SlothUse = false
		GreedUse = false
		footrandom = math.random(2,5)
		MonoContinue = 0
		isMonoTimeOut = true
		momlessscroll = 1
		deathdoubleforce_ha_wi_ho_hwan_item_var = 0
		succusohwan_item_var = 0
		artifact_moralltach_item_var = 0
		artifact_beagalltach_item_var = 0
		dealnurfvar = 1
		solfonVar = 0
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
		YusaCleanerVar = false
		akmaVar = false
		akmaTime = 0
		JeongMaVar = false
		specialnum = 0
		specialitem1 = 0
		specialitem2 = 0
		specialitem3 = 0
		specialitem4 = 0
		specialremove = false;
		bonusmultiple = 0;
		skipuse = false;
		skipContinue = 0;
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
	
	if player:HasCollectible(280)==true and player:GetCollectibleNum(280)<3 then -- 280을 획득했고 3개 이하면(씨씨)
		player:AddCollectible(280,0,true) -- 3개를 얻을 때까지 반복해서 280 획득
	end
	if player:HasCollectible(511)==true and player:GetCollectibleNum(511)<3 then -- 511을 획득했고 3개 이하면(앵그리플라이)
		player:AddCollectible(511,0,true) -- 3개를 얻을 때까지 반복해서 511 획득
	end
	if player:HasCollectible(197)==true and player:GetCollectibleNum(197)<6 then -- 197을 획득했고 3개 이하면(쥬스)
		player:AddCollectible(197,0,true) -- 3개를 얻을 때까지 반복해서 197 획득
	end
	if player:HasCollectible(193)==true and player:GetCollectibleNum(193)<10 then -- 193을 획득했고 5개 이하면(미트)
		player:AddCollectible(193,0,true) -- 5개를 얻을 때까지 반복해서 193 획득
	end
	if player:HasCollectible(138)==true and player:GetCollectibleNum(138)<20 then -- 138을 획득했고 20개 이하면(스티그마)
		player:AddCollectible(138,0,true) -- 20개를 얻을 때까지 반복해서 138 획득
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
	if player:HasCollectible(201)==true and player:GetCollectibleNum(201)<20 then -- 201을 획득했고 5개 이하면(철괴)
		player:AddCollectible(201,0,true) -- 5개를 얻을 때까지 반복해서 201 획득
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
	if player:HasCollectible(solfon_item)==true and solfonVar == 0 then 
		player:AddCollectible(381,0,true)
		player:AddCollectible(381,0,true)
		solfonVar = 1
	end
	if player:HasCollectible(tenenu_item)==true and player:HasCollectible(387)==false then 
		player:AddCollectible(387,0,true) 
	end
	if player:HasCollectible(170)==true and player:GetCollectibleNum(170)<2 then 
		player:AddCollectible(170,0,true) 
	end
	if player:HasCollectible(318)==true and player:GetCollectibleNum(318)<2 then 
		player:AddCollectible(318,0,true)
	end
	if player:HasCollectible(165)==true and player:GetCollectibleNum(165)<5 then 
		player:AddCollectible(165,0,true)
	end
	if player:HasCollectible(275)==true and player:GetCollectibleNum(275)<3 then 
		player:AddCollectible(275,0,true)
	end
	if player:HasCollectible(508)==true and player:GetCollectibleNum(508)<3 then 
		player:AddCollectible(508,0,true)
	end
	if player:HasCollectible(50)==true and player:GetCollectibleNum(50)<2 then 
		player:AddCollectible(50,0,true)
	end
	if player:HasCollectible(7)==true and player:HasCollectible(462)==false then 
		player:AddCollectible(462,0,true) 
	end
	if player:HasCollectible(79)==true and player:GetCollectibleNum(79)<10 then 
		player:AddCollectible(79,0,true)
	end
	if player:HasCollectible(80)==true and player:GetCollectibleNum(80)<10 then 
		player:AddCollectible(80,0,true)
	end
	if player:HasCollectible(399)==true and player:GetCollectibleNum(399)<15 then 
		player:AddCollectible(399,0,true)
	end
	if player:HasCollectible(463)==true and player:GetCollectibleNum(463)<15 then 
		player:AddCollectible(463,0,true)
	end
	if player:HasCollectible(345)==true and player:GetCollectibleNum(345)<5 then 
		player:AddCollectible(345,0,true)
	end
	if player:HasCollectible(279)==true and player:GetCollectibleNum(279)<3 then 
		player:AddCollectible(279,0,true)
	end
	if player:HasCollectible(359)==true and player:GetCollectibleNum(359)<4 then 
		player:AddCollectible(359,0,true)
	end
	if player:HasCollectible(51)==true and player:GetCollectibleNum(51)<6 then 
		player:AddCollectible(51,0,true)
	end
	if player:HasCollectible(411) and player:HasCollectible(51) and FRageVar == true then
		player:AddCollectible(157,0,true)
		FRageVar = false
	end
	if player:HasCollectible(528)==true and player:GetCollectibleNum(528)<15 then 
		player:AddCollectible(528,0,true)
	end
	if player:HasCollectible(526)==true and player:GetCollectibleNum(526)<2 then 
		player:AddCollectible(526,0,true)
	end
	if player:HasCollectible(rdmsb_item)==true and player:HasCollectible(245)==false then
		player:AddCollectible(245,0,true)
	end
	if player:HasCollectible(445)==true and player:GetCollectibleNum(445)<20 then 
		player:AddCollectible(445,0,true)
	end
	if player:HasCollectible(lumen_item)==true then
		haslumen = true
		player:AddCacheFlags(CacheFlag.CACHE_TEARFLAG)
		player:EvaluateItems()
		if math.random(1,2)==1 then
			player:AddCollectible(415,0,true)
		else
			player:AddCollectible(442,0,true)
		end
		player:RemoveCollectible(lumen_item)
	end
	if player:HasCollectible(172)==true and player:GetCollectibleNum(172)<6 then 
		player:AddCollectible(172,0,true)
	end
	if player:HasCollectible(259)==true and player:GetCollectibleNum(259)<10 then 
		player:AddCollectible(259,0,true)
	end
	if player:HasCollectible(rcsn_item)==true and player:GetCollectibleNum(76)<1 then 
		player:AddCollectible(76,0,true)
	end
	if player:HasCollectible(biblethump_item)==true and player:GetCollectibleNum(281)<4 then 
		player:AddCollectible(281,0,true)
	end
	if player:HasCollectible(bloodtrail_item)==true and player:GetCollectibleNum(73)<16 then 
		player:AddCollectible(73,0,true)
	end
	if player:HasCollectible(solfon_item) and player:HasCollectible(tenenu_item) and haslumen == true and player:GetCollectibleNum(232)<1 then
		player:AddCollectible(232,0,true)
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
	if player:HasCollectible(rasr_item)==true then -- 정마반
		if player:HasCollectible(260)==false then
			player:AddCollectible(260,0,true)
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
	if player:HasCollectible(hots_item) then -- 만약 히오스 소지 시
		if player:HasCollectible(venus_item) then -- 샛별 소지 시
			player:RemoveCollectible(venus_item) -- 샛별 제거
		end
		if player:HasCollectible(scent_item) then -- 향기 소지 시
			player:RemoveCollectible(scent_item) -- 향기 제거
		end
		if player:HasCollectible(memory_item) then -- 물소리 소지 시
			player:RemoveCollectible(memory_item) -- 물소리 제거
		end
		if player:HasCollectible(symbol_item) then -- 삼신기 소지 시
			player:RemoveCollectible(symbol_item) -- 삼신기 제거
		end
		if player:HasCollectible(fars_item) then -- 삼신기 소지 시
			player:RemoveCollectible(fars_item) -- 삼신기 제거
		end
		if player:HasCollectible(rosetta_item) then -- 삼신기 소지 시
			player:RemoveCollectible(rosetta_item) -- 삼신기 제거
		end
		if player:HasCollectible(81) then -- 구피 소지 시
			player:RemoveCollectible(81) -- 구피 제거
		end
		if player:HasCollectible(133) then -- 구피 소지 시
			player:RemoveCollectible(133) -- 구피 제거
		end
		if player:HasCollectible(134) then -- 구피 소지 시
			player:RemoveCollectible(134) -- 구피 제거
		end
		if player:HasCollectible(212) then -- 구피 소지 시
			player:RemoveCollectible(212) -- 구피 제거
		end
		if player:HasCollectible(solfon_item) then -- 솔리움 폰스 소지 시
			player:RemoveCollectible(solfon_item) --솔리움 폰스 제거
		end
		if player:HasCollectible(tenenu_item) then -- 테네브레 루스 소지 시
			player:RemoveCollectible(tenenu_item) -- 테네브레 루스 제거
		end
		if player:HasCollectible(lumen_item) then -- 루멘 바실리움 소지 시
			player:RemoveCollectible(lumen_item) -- 루멘 바실리움 제거
		end
		if player:HasCollectible(rdmsb_item) then -- 정마팔 소지 시
			player:RemoveCollectible(rdmsb_item) -- 정마팔 제거
		end
		if player:HasCollectible(rcsn_item) then -- 정마목 소지 시
			player:RemoveCollectible(rcsn_item) -- 정마목 제거
		end
		if player:HasCollectible(rasr_item) then -- 정마반 소지 시
			player:RemoveCollectible(rasr_item) -- 정마반 제거
		end
		if player:HasCollectible(238) then -- 키피스 소지 시
			player:RemoveCollectible(238) -- 키피스 제거
		end
		if player:HasCollectible(239) then -- 키피스 소지 시
			player:RemoveCollectible(239) -- 키피스 제거
		end
		if player:HasCollectible(51) then -- 펜타 소지 시
			player:RemoveCollectible(51) -- 펜타 제거
			player:RemoveCollectible(51) -- 펜타 제거
			player:RemoveCollectible(51) -- 펜타 제거
			player:RemoveCollectible(51) -- 펜타 제거
			player:RemoveCollectible(51) -- 펜타 제거
			player:RemoveCollectible(51) -- 펜타 제거
		end
		if player:HasCollectible(411) then -- 구레이저 소지 시
			player:RemoveCollectible(411) -- 구레이저 제거
		end
		if player:HasCollectible(cpb_item) then -- 얼공 소지 시
			player:RemoveCollectible(cpb_item) -- 얼공 제거
		end
		if player:HasCollectible(cpn_item) then -- 얼공 소지 시
			player:RemoveCollectible(cpn_item) -- 얼공 제거
		end
		if player:HasCollectible(cpr_item) then -- 얼공 소지 시
			player:RemoveCollectible(cpr_item) -- 얼공 제거
		end
		if player:HasCollectible(farsp_item) then 
			player:RemoveCollectible(farsp_item) 
		end
		if player:HasCollectible(rosettap_item) then 
			player:RemoveCollectible(rosettap_item) 
		end
		if player:HasCollectible(symbolp_item) then 
			player:RemoveCollectible(symbolp_item) 
		end
		if player:HasCollectible(venus_item) == false and player:HasCollectible(scent_item) == false and player:HasCollectible(memory_item) == false and player:HasCollectible(symbol_item) == false and player:HasCollectible(fars_item) == false and player:HasCollectible(rosetta_item) == false and player:HasCollectible(81) == false and player:HasCollectible(133) == false and player:HasCollectible(134) == false and player:HasCollectible(212) == false and player:HasCollectible(solfon_item) == false and player:HasCollectible(tenenu_item) == false and player:HasCollectible(lumen_item) == false and player:HasCollectible(rdmsb_item) == false and player:HasCollectible(rcsn_item) == false and player:HasCollectible(rasr_item) == false and player:HasCollectible(238) == false and player:HasCollectible(239) == false and player:HasCollectible(51) == false and player:HasCollectible(411) == false then
			player:RemoveCollectible(hots_item) -- 히오스 제거
		end
	end
	if player:GetPlayerType() == 5 and player:HasCollectible(126) then --만약 플레이어가 이브(5)이고 만약 126(면도) 소지 시라면
		player:AddCollectible(485,24,true)
	end
	if player:GetPlayerType() == 14 and player:HasCollectible(349) then 
		player:AddCollectible(521,30,true)
	end
	if player:GetPlayerType() == 6 and player:HasCollectible(scroll_item) then
		player:RemoveCollectible(scroll_item)
	end
	if player:GetPlayerType() == 6 and player:HasCollectible(ascroll_item) then
		player:RemoveCollectible(ascroll_item)
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
	if player:GetTrinket(51) then -- 동일
		player:TryRemoveTrinket(51)
	end
	if player:GetTrinket(50) then
		player:TryRemoveTrinket(50)
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
	if astraluse == true and astralContinue <= Game().TimeCounter then
		astraluse = false
		j = math.random(1,100)
		if j <= 80 then
			for i=1,2 do
				Isaac.Spawn(5, 100,curseroom[math.random(1,#curseroom)], Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			end
		elseif j <= 95 then
			for i=1,3 do
				Isaac.Spawn(5, 100,curseroom[math.random(1,#curseroom)], Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			end
		else 
			for i=1,4 do
				Isaac.Spawn(5, 100,curseroom[math.random(1,#curseroom)], Isaac.GetFreeNearPosition(player.Position, 50), Vector(0, 0), player)
			end
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
	if isGluttonyTimeOut == false and GluttonyContinue <= Game().TimeCounter then
		isGluttonyTimeOut = true
		player:RemoveCollectible(402)
	end
	if isGreedTimeOut == false and GreedContinue <= Game().TimeCounter then
		isGreedTimeOut = true
		player:RemoveCollectible(402)
	end
	if isSlothTimeOut == false and SlothContinue <= Game().TimeCounter then
		isSlothTimeOut = true
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
		i = math.random(1,9)
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

	if player:HasCollectible(tenenu_item) then
		for i = 1, #entities do
			if entities[i]:IsVulnerableEnemy() then
				if ((player.Position.X - entities[i].Position.X)^2 + (player.Position.Y - entities[i].Position.Y)^2)^0.5 <= 150 then
					entities[i]:AddSlowing(EntityRef(player),1,20,Color(0.5, 0.5, 0.5, 1, 0, 0, 0))
				end
			end
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

	if player:HasCollectible(solfon_item) and player:HasCollectible(tenenu_item) and haslumen == true then
		for i = 1, #entities do
			if entities[i]:IsVulnerableEnemy() then
				if ((player.Position.X - entities[i].Position.X)^2 + (player.Position.Y - entities[i].Position.Y)^2)^0.5 <= 300 and entities[i]:ToNPC():IsBoss() then
					entities[i]:TakeDamage(player.Damage*1/10, 0, EntityRef(player), 1)
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

	if player.Damage > 100 then --데미지 제한
		player.Damage = 100;
	end

	-- 타이머 갱신
	timer:Renew()

	for i=1, #entities do
		if entities[i]:IsVulnerableEnemy() and entities[i]:GetData().AquVar == true and Game().TimeCounter % 2 == 0 and entities[i]:ToNPC():IsBoss() then
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

	if player:HasCollectible(farsp_item) and player:HasCollectible(rosettap_item) and player:HasCollectible(symbolp_item) then
		for i = 1 , #entities do
			if entities[i].Type == 306 or entities[i].Type == 212 then
				entities[i]:Die()
			end
		end
	end

	local notremove = {0,0,0,0,0,0}

	-- 세트옵션 제거
	if (player:HasCollectible(setitem[6]) or player:HasCollectible(setitem[7]) or player:HasCollectible(setitem[8])) then
		notremove[1] = true;
	end
	if (player:HasCollectible(setitem[9]) or player:HasCollectible(setitem[10]) or player:HasCollectible(setitem[11])) then
		notremove[2] = true;
	end
	if (player:HasCollectible(setitem[12]) or player:HasCollectible(setitem[13]) or player:HasCollectible(setitem[14])) then
		notremove[3] = true;
	end
	if (player:HasCollectible(setitem[15]) or player:HasCollectible(setitem[16]) or player:HasCollectible(setitem[17])) then
		notremove[4] = true;
	end
	if (player:HasCollectible(setitem[18]) or player:HasCollectible(setitem[19]) or player:HasCollectible(setitem[20])) then
		notremove[5] = true;
	end
	
	if (player:HasCollectible(venus_item) and player:HasCollectible(memory_item) and player:HasCollectible(scent_item)) or
	(player:HasCollectible(farsp_item) and player:HasCollectible(symbolp_item) and player:HasCollectible(rosettap_item)) or
	(player:HasCollectible(rcsn_item) and player:HasCollectible(rasr_item) and player:HasCollectible(rdmsb_item)) or
	(player:HasCollectible(solfon_item) and player:HasCollectible(tenenu_item) and haslumen == true) or
	(player:HasCollectible(cpn_item) and player:HasCollectible(cpb_item) and player:HasCollectible(cpr_item)) then
		notremove = {false,false,false,false,false,true}
	end

	if (notremove[1] == true or notremove[2] == true or notremove[3] == true or notremove[4] == true or notremove[5] == true or notremove[6] == true) then
		for i = 1, #setitem do
			if ((notremove[1] == true) and (i == 1 or i == 6 or i == 7 or i == 8)) or
			((notremove[2] == true) and (i == 2 or i == 9 or i == 10 or i == 11)) or
			((notremove[3] == true) and (i == 3 or i == 12 or i == 13 or i == 14)) or 
			((notremove[4] == true) and (i == 4 or i == 15 or i == 16 or i == 17)) or 
			((notremove[5] == true) and (i == 5 or i == 18 or i == 19 or i == 20)) then
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
			storedItemSprite:ReplaceSpritesheet(0, config:GetCollectible(storedItem).GfxFileName)
			storedItemSprite:LoadGraphics()
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
		if powerBondContinue < Game().TimeCounter then -- 지속 시간이 아님
			continueTime = 30 * 30

			powerBondContinue = Game().TimeCounter + continueTime -- 지속 시간 30초 뒤 (30은 단위 초로 변환)
			isPowerBondTimeOut = false

			timer:Insert(powerbond_item, continueTime, 1, 0.005, 0)
		end
		return true
	elseif collectible == limiterremoval_item then -- Limiter Removal 사용시
		if limiterRemovalContinue < Game().TimeCounter then -- 지속 시간이 아님
			continueTime = 30 * 30

			limiterRemovalContinue = Game().TimeCounter + continueTime -- 지속 시간 30초 뒤 (30은 단위 초로 변환)
			isLimiterRemovalTimeOut = false

			timer:Insert(limiterremoval_item, continueTime, 1, 1, 0)

			limterVar = limterVar + 1

			if limterVar >= 2 then
				limterVar = 0
				player:RemoveCollectible(limiterremoval_item)
			end
		end
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
			continueTime = 60 * 30

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
	elseif collectible == astral_item then
		player:AnimateCollectible(collectible, "UseItem", "Idle")
		player:RemoveCollectible(astral_item)

		continueTime = 60 * 30

		astralContinue = Game().TimeCounter + continueTime
		astraluse = true

		timer:Insert(astral_item, continueTime, 0, 0.005, 0)
		return true
	elseif collectible == raptor_item then
		player:RemoveCollectible(raptor_item)
		i = math.random(1,9)
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
		player:AnimateCollectible(collectible, "UseItem", "Idle")
		player:RemoveCollectible(mono_item)

		continueTime = 60 * 30

		MonoContinue = Game().TimeCounter + continueTime
		isMonoTimeOut = false

		timer:Insert(mono_item, continueTime, 0.006, 0, 1)
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
		ranscroll = ranscroll + math.random(0,40)
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
			EnvyUse = true

			timer:Insert(envy_item, continueTime, 0.005, 0.005, 0.005)

			player:RemoveCollectible(envy_item)
			player:AddCollectible(402,0,true)
			player:AddCoins(coin)
			player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
		end
		return true
	elseif collectible == gluttony_item then
		if GluttonyContinue < Game().TimeCounter then -- 지속 시간이 아님
			continueTime = 20 * 30
			coin = player:GetNumCoins()

			GluttonyContinue = Game().TimeCounter + continueTime -- 지속 시간 30초 뒤 (30은 단위 초로 변환)
			isGluttonyTimeOut = false
			GluttonyUse = true

			timer:Insert(gluttony_item, continueTime, 0.005, 0.005, 0.005)

			player:RemoveCollectible(gluttony_item)

			player:AddCollectible(402,0,true)
			player:AddCoins(coin)
			player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
		end
		return true
	elseif collectible == greed_item then
		if GreedContinue < Game().TimeCounter then -- 지속 시간이 아님
			continueTime = 20 * 30
			coin = player:GetNumCoins()

			GreedContinue = Game().TimeCounter + continueTime -- 지속 시간 30초 뒤 (30은 단위 초로 변환)
			isGreedTimeOut = false
			GreedUse = true

			timer:Insert(greed_item, continueTime, 0.005, 0.005, 0.005)

			player:RemoveCollectible(greed_item)
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
	elseif collectible == sloth_item then
		if SlothContinue < Game().TimeCounter then -- 지속 시간이 아님
			continueTime = 20 * 30
			coin = player:GetNumCoins()

			SlothContinue = Game().TimeCounter + continueTime -- 지속 시간 30초 뒤 (30은 단위 초로 변환)
			isSlothTimeOut = false
			SlothUse = true

			timer:Insert(sloth_item, continueTime, 0.005, 0.005, 0.005)

			player:RemoveCollectible(sloth_item)
			player:AddCollectible(402,0,true)
			player:AddCoins(coin)
			player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
		end
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
		if player:GetNumCoins() >= 5 then
			player:AddCoins(-5)
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
			i = math.random(1,5)
			if i == 1 then
				Isaac.Spawn(5, 100, venus_item, Isaac.GetFreeNearPosition(player.Position,50), Vector(0,0), player)
				Isaac.Spawn(5, 100, scent_item, Isaac.GetFreeNearPosition(player.Position,50), Vector(0,0), player)
				Isaac.Spawn(5, 100, memory_item, Isaac.GetFreeNearPosition(player.Position,50), Vector(0,0), player)
			elseif i == 2 then
				Isaac.Spawn(5, 100, rasr_item, Isaac.GetFreeNearPosition(player.Position,50), Vector(0,0), player)
				Isaac.Spawn(5, 100, rcsn_item, Isaac.GetFreeNearPosition(player.Position,50), Vector(0,0), player)
				Isaac.Spawn(5, 100, rdmsb_item, Isaac.GetFreeNearPosition(player.Position,50), Vector(0,0), player)
			elseif i == 3 then
				Isaac.Spawn(5, 100, cpb_item, Isaac.GetFreeNearPosition(player.Position,50), Vector(0,0), player)
				Isaac.Spawn(5, 100, cpn_item, Isaac.GetFreeNearPosition(player.Position,50), Vector(0,0), player)
				Isaac.Spawn(5, 100, cpr_item, Isaac.GetFreeNearPosition(player.Position,50), Vector(0,0), player)
			elseif i == 4 then
				Isaac.Spawn(5, 100, farsp_item, Isaac.GetFreeNearPosition(player.Position,50), Vector(0,0), player)
				Isaac.Spawn(5, 100, rosettap_item, Isaac.GetFreeNearPosition(player.Position,50), Vector(0,0), player)
				Isaac.Spawn(5, 100, symbolp_item, Isaac.GetFreeNearPosition(player.Position,50), Vector(0,0), player)
			else
				Isaac.Spawn(5, 100, solfon_item, Isaac.GetFreeNearPosition(player.Position,50), Vector(0,0), player)
				Isaac.Spawn(5, 100, lumen_item, Isaac.GetFreeNearPosition(player.Position,50), Vector(0,0), player)
				Isaac.Spawn(5, 100, tenenu_item, Isaac.GetFreeNearPosition(player.Position,50), Vector(0,0), player)
			end
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
		i = math.random(1,2)
		if i == 1 then
			player:AddCollectible(chry_item,0,false)
		else
			for i=1 , 3 do
				Isaac.Spawn(5, 100, Game():GetItemPool():GetCollectible(ItemPoolType.POOL_GREED_CURSE, true, player:GetCollectibleRNG(u_ang_jyoo_gum_item):GetSeed()),Isaac.GetFreeNearPosition(player.Position,50), Vector(0, 0), player)
			end
		end
		player:RemoveCollectible(u_ang_jyoo_gum_item)
		return true
	elseif collectible == A_nae_noon_item then
		level:AddCurse(7,true)
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
		local i = math.random(1,7)
		if i == 1 then
			player:AddCollectible(68,0,false)
		elseif i == 1 then
			player:AddCollectible(114,0,false)
		elseif i == 2 then
			player:AddCollectible(118,0,false)
		elseif i == 3 then
			player:AddCollectible(168,0,false)
		elseif i == 4 then
			player:AddCollectible(asulf_item,0,false)
		elseif i == 5 then
			player:AddCollectible(329,0,false)
		elseif i == 6 then
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
		end
		player:RemoveCollectible(akma_item)
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
	end
end

ChaosGreed:AddCallback(ModCallbacks.MC_USE_ITEM, ChaosGreed.useItem)

function ChaosGreed:useCard(card) 
  player = Isaac.GetPlayer(0) -- 초반 시작 카드
 
  if card == hermit_stars_card then 
	player:AddCard(Card.CARD_HERMIT)
	player:AddCard(Card.CARD_STARS)
	return true 
  end 
end 

ChaosGreed:AddCallback(ModCallbacks.MC_USE_CARD, ChaosGreed.useCard)

function ChaosGreed:npcHit(dmg_target , dmg_amount, dmg_source, dmg_dealer)
    player = Isaac.GetPlayer(0)
    entities = Isaac.GetRoomEntities()
	flag = false
	if dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
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
			dmg_target:TakeDamage(dmg_amount*1.1, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 100;
		end
	end
	if player:HasCollectible(118) and dmg_target:IsVulnerableEnemy() and not player:HasCollectible(114) then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and dmg_target:ToNPC():IsBoss() then
			dmg_target:TakeDamage(dmg_amount*1.1, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 100;
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
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and (dmg_target.Type == 406 or dmg_target.Type == 412) then
			dmg_target:TakeDamage(dmg_amount * 4.1, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 410;
		end
	end
	if player:HasCollectible(farsp_item) and player:HasCollectible(rosettap_item) and player:HasCollectible(symbolp_item) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and (dmg_target.Type == 406 or dmg_target.Type == 412) then
			dmg_target:TakeDamage(dmg_amount * 4.1, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 410;
		end
	end 
	if haslumen==true and player:HasCollectible(tenenu_item) and player:HasCollectible(solfon_item) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and (dmg_target.Type == 406 or dmg_target.Type == 412) then
			dmg_target:TakeDamage(dmg_amount * 4.1, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 410;
		end
	end
	if player:HasCollectible(cpr_item) and player:HasCollectible(cpb_item) and player:HasCollectible(cpn_item) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and (dmg_target.Type == 406 or dmg_target.Type == 412) then
			dmg_target:TakeDamage(dmg_amount * 4.1, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 410;
		end
	end
	if player:HasCollectible(rcsn_item) and player:HasCollectible(rasr_item) and player:HasCollectible(rdmsb_item) and dmg_target:IsVulnerableEnemy() then
		if (dmg_dealer.Type == EntityType.ENTITY_TEAR or dmg_source & DamageFlag.DAMAGE_LASER == DamageFlag.DAMAGE_LASER or dmg_dealer.Type == EntityType.ENTITY_KNIFE) and (dmg_target.Type == 406 or dmg_target.Type == 412) then
			dmg_target:TakeDamage(dmg_amount * 4.1, 0, EntityRef(player), 1)
			bonusmultiple = bonusmultiple + 410;
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

        if ref.Type == EntityType.ENTITY_HUSH then fin_amt = 1.5 end

        if ref.Index ~= nil then if ref:IsVulnerableEnemy() then
            ref.HitPoints = ref.HitPoints + (dmg_amount * d) * (1.0-fin_amt)
        end end
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
	player = Isaac.GetPlayer(0)
	
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
		end
	end
	if specialnum >= 4 then
		for i = 1, #specialitemp do
			if specialitemp[i] ~= specialitem1 and specialitemp[i] ~= specialitem2 and specialitemp[i] ~= specialitem3 and specialitemp[i] ~= specialitem4 and player:HasCollectible(specialitemp[i]) then
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
		end
		if player:HasCollectible(168) then -- 에픽 소지 시
			player:RemoveCollectible(168) -- 에픽 제거
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

function ChaosGreed:Render()
	player = Isaac.GetPlayer(0)
	if player:HasCollectible(backpack_item) and storedItem ~= 0 then
		storedItemSprite:Render(Vector(0,0), Vector(0,0), Vector(0,0))
	end

	Isaac.RenderText(specialitem1,10,210,207/255,255/255,36/255,2)
	Isaac.RenderText(specialitem2,10,220,207/255,255/255,36/255,2)
	Isaac.RenderText(specialitem3,10,230,207/255,255/255,36/255,2)
	Isaac.RenderText(specialitem4,10,240,207/255,255/255,36/255,2)
	Isaac.RenderText(bonusmultiple .. "%",10,250,255/255,90/255,90/255,2)

	-- 타이머 랜더
	timer:Rander()
end

ChaosGreed:AddCallback(ModCallbacks.MC_POST_RENDER, ChaosGreed.Render);