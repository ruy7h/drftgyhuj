local function games(msg)
local text = msg.content_.text_
if text == 'الالعاب' and database:get(bot_id..'Lock:Games'..msg.chat_id_) then
Text_Games = [[
*❏︙اوامر الالعاب كتالي* 
*ٴ𓍹======𝘙𝘈𝘞𝘈𝘕======𓍻*
 *❏︙تفعيل الالعاب • لتفعيل العبه °* 
 *❏︙تعطيل الالعاب • لتعطيل العبه °*
*ٴ𓍹======𝘙𝘈𝘞𝘈𝘕======𓍻*
 *❏︙الالعاب الخاصه بسورس*
*ٴ𓍹======𝘙𝘈𝘞𝘈𝘕======𓍻*
 *❏︙لعبه البات ↞ لعبة المحيبس* 
 *❏︙لعبه التخمين ↞ لعبة البحث*
 *❏︙لعبه الاسرع ↞ لعبة اسرع شخص*
 *❏︙لعبه السمايلات ↞ لعبة المطابقه* 
 *❏︙لعبه المختلف ↞ لعبة الذكاء*
 *❏︙لعبه الرياضيات ↞ لعبة الارقام*
 *❏︙لعبه الانكليزي ↞ لعبة ترجمه*
 *❏︙لعبه الامثله ↞ لعبة تصحيح* 
 *❏︙لعبه العكس ↞ لعبة عكس الكلمات*
 *❏︙لعبه الحزوره ↞لعبة التفكير*
 *❏︙لعبه المعاني ↞ العبه الشهيره* 
 *❏︙لعبه روليت ↞ العبه الحض* 
 *❏︙اساله كت تويت ↞ ارسل كت* 
 *❏︙لعبه الصراحه ↞ ارسل صراحه*
*ٴ𓍹======𝘙𝘈𝘞𝘈𝘕======𓍻*
[𝙎𝙤𝙪𝙧𝘾𝙚 𝘙𝘈𝘞𝘈𝘕](t.me/CARLOSTEAMM)
]]
send(msg.chat_id_, msg.id_,Text_Games) 
end

if text == 'السمايلات' or text == 'السمايل' then
if database:get(bot_id..'Lock:Games'..msg.chat_id_) then
database:del(bot_id..'Set:Sma'..msg.chat_id_)
Random = {'🍏','🍎','🍐','🍊','??','🍉','🍇','🍓','🍈','🍒','🍑','🍍','??','🥝','🍅','🍆','🥑','🥦','🥒','🌶','🌽','🥕','🥔','🥖','🥐','🍞','🥨','🍟','🧀','🥚','🍳','🥓','🥩','🍗','🍖','🌭','🍔','🍠','🍕','🥪','🥙','☕️','🍵','🥤','🍶','🍺','🍻','🏀','⚽️','🏈','⚾️','🎾','🏐','🏉','🎱','🏓','🏸','🥅','🎰','🎮','🎳','🎯','🎲','🎻','🎸','🎺','🥁','🎹','🎼','🎧','🎤','🎬','🎨','🎭','🎪','🎟','🎫','🎗','🏵','🎖','🏆','🥌','🛷','🚗','🚌','🏎','🚓','🚑','🚚','🚛','🚜','🇮🇶','⚔','🛡','🔮','🌡','💣','📌','📍','📓','📗','📂','📅','📪','📫','📬','📭','⏰','📺','🎚','☎️','📡'}
SM = Random[math.random(#Random)]
database:set(bot_id..'Random:Sm'..msg.chat_id_,SM)
send(msg.chat_id_, msg.id_,' *❏︙اسرع واحد يدز هاذا السمايل ?* » {`'..SM..'`}')
return false
end
end
if text == ''..(database:get(bot_id..'Random:Sm'..msg.chat_id_) or '')..'' and not database:get(bot_id..'Set:Sma'..msg.chat_id_) then
if not database:get(bot_id..'Set:Sma'..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,' *❏︙الف مبروك لقد فزت* \n *❏︙للعب مره اخره ارسل »{ سمايل , سمايلات }*')
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id..'Set:Sma'..msg.chat_id_,true)
return false
end 
if text == 'اسرع' or text == 'الاسرع' or text == 'ترتيب' then
if database:get(bot_id..'Lock:Games'..msg.chat_id_) then
database:del(bot_id..'Speed:Tr'..msg.chat_id_)
KlamSpeed = {'سحور','سياره','استقبال','قنفه','ايفون','بزونه','مطبخ','كرستيانو','دجاجه','مدرسه','الوان','غرفه','ثلاجه','كهوه','سفينه','العراق','محطه','طياره','رادار','منزل','مستشفى','كهرباء','تفاحه','اخطبوط','سلمون','فرنسا','برتقاله','تفاح','مطرقه','بتيته','لهانه','شباك','باص','سمكه','ذباب','تلفاز','حاسوب','انترنيت','ساحه','جسر'};
name = KlamSpeed[math.random(#KlamSpeed)]
database:set(bot_id..'Klam:Speed'..msg.chat_id_,name)
name = string.gsub(name,'سحور','س ر و ح')
name = string.gsub(name,'سياره','ه ر س ي ا')
name = string.gsub(name,'استقبال','ل ب ا ت ق س ا')
name = string.gsub(name,'قنفه','ه ق ن ف')
name = string.gsub(name,'ايفون','و ن ف ا')
name = string.gsub(name,'بزونه','ز و ه ن')
name = string.gsub(name,'مطبخ','خ ب ط م')
name = string.gsub(name,'كرستيانو','س ت ا ن و ك ر ي')
name = string.gsub(name,'دجاجه','ج ج ا د ه')
name = string.gsub(name,'مدرسه','ه م د ر س')
name = string.gsub(name,'الوان','ن ا و ا ل')
name = string.gsub(name,'غرفه','غ ه ر ف')
name = string.gsub(name,'ثلاجه','ج ه ت ل ا')
name = string.gsub(name,'كهوه','ه ك ه و')
name = string.gsub(name,'سفينه','ه ن ف ي س')
name = string.gsub(name,'العراق','ق ع ا ل ر ا')
name = string.gsub(name,'محطه','ه ط م ح')
name = string.gsub(name,'طياره','ر ا ط ي ه')
name = string.gsub(name,'رادار','ر ا ر ا د')
name = string.gsub(name,'منزل','ن ز م ل')
name = string.gsub(name,'مستشفى','ى ش س ف ت م')
name = string.gsub(name,'كهرباء','ر ب ك ه ا ء')
name = string.gsub(name,'تفاحه','ح ه ا ت ف')
name = string.gsub(name,'اخطبوط','ط ب و ا خ ط')
name = string.gsub(name,'سلمون','ن م و ل س')
name = string.gsub(name,'فرنسا','ن ف ر س ا')
name = string.gsub(name,'برتقاله','ر ت ق ب ا ه ل')
name = string.gsub(name,'تفاح','ح ف ا ت')
name = string.gsub(name,'مطرقه','ه ط م ر ق')
name = string.gsub(name,'بتيته','ب ت ت ي ه')
name = string.gsub(name,'لهانه','ه ن ل ه ل')
name = string.gsub(name,'شباك','ب ش ا ك')
name = string.gsub(name,'باص','ص ا ب')
name = string.gsub(name,'سمكه','ك س م ه')
name = string.gsub(name,'ذباب','ب ا ب ذ')
name = string.gsub(name,'تلفاز','ت ف ل ز ا')
name = string.gsub(name,'حاسوب','س ا ح و ب')
name = string.gsub(name,'انترنيت','ا ت ن ر ن ي ت')
name = string.gsub(name,'ساحه','ح ا ه س')
name = string.gsub(name,'جسر','ر ج س')
send(msg.chat_id_, msg.id_,' *❏︙اسرع واحد يرتبها* » {'..name..'}')
return false
end
end
------------------------------------------------------------------------
if text == ''..(database:get(bot_id..'Klam:Speed'..msg.chat_id_) or '')..'' and not database:get(bot_id..'Speed:Tr'..msg.chat_id_) then
if not database:get(bot_id..'Speed:Tr'..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,' *❏︙الف مبروك لقد فزت* \n *❏︙للعب مره اخره ارسل »{ الاسرع , ترتيب }*')
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id..'Speed:Tr'..msg.chat_id_,true)
end 

if text and text:match('^(@[%a%d_]+)$') and database:get(bot_id..":Number_Add:"..msg.chat_id_..msg.sender_user_id_) then
if database:sismember(bot_id..':List_Rolet:'..msg.chat_id_,text) then
send(msg.chat_id_,msg.id_,"*◈︙المعرف ["..text.." ] موجود اساساً*")
return false
end 
database:sadd(bot_id..':List_Rolet:'..msg.chat_id_,text)
local CountAdd = database:get(bot_id..":Number_Add:"..msg.chat_id_..msg.sender_user_id_)
local CountAll = database:scard(bot_id..':List_Rolet:'..msg.chat_id_)
local CountUser = CountAdd - CountAll
if tonumber(CountAll) == tonumber(CountAdd) then 
database:del(bot_id..":Number_Add:"..msg.chat_id_..msg.sender_user_id_) 
database:setex(bot_id..":Witting_StartGame:"..msg.chat_id_..msg.sender_user_id_,1400,true)  
send(msg.chat_id_,msg.id_,"*❏︙تم حفظ المعرف* (["..text.."])\n*❏︙تم اكمال العدد الكلي*\n*❏︙ارسل (نعم) للبدء*")
return false
end  
send(msg.chat_id_,msg.id_,"*❏︙تم حفظ المعرف* (["..text.."])\n*❏︙تبقى "..CountUser.." لاعبين ليكتمل العدد*\n*❏︙ارسل المعرف التالي*")
return false
end 
if text and text:match("^(%d+)$") and database:get(bot_id..":Start_Rolet:"..msg.chat_id_..msg.sender_user_id_) then
if text == "1" then
send(msg.chat_id_, msg.id_," *❏︙لا استطيع بدء اللعبه بلاعب واحد فقط*")
elseif text ~= "1" then
database:set(bot_id..":Number_Add:"..msg.chat_id_..msg.sender_user_id_,text)  
database:del(bot_id..":Start_Rolet:"..msg.chat_id_..msg.sender_user_id_)  
send(msg.chat_id_, msg.id_,"*❏︙قم  بأرسال معرفات اللاعبين الان*")
return false
end
end 
if text == 'روليت' then
database:del(bot_id..":Number_Add:"..msg.chat_id_..msg.sender_user_id_) 
database:del(bot_id..':List_Rolet:'..msg.chat_id_)  
database:setex(bot_id..":Start_Rolet:"..msg.chat_id_..msg.sender_user_id_,3600,true)  
send(msg.chat_id_, msg.id_, '*❏︙ارسل عدد اللاعبين للروليت*')
end
if text == 'نعم' and database:get(bot_id..":Witting_StartGame:"..msg.chat_id_..msg.sender_user_id_) then
local list = database:smembers(bot_id..':List_Rolet:'..msg.chat_id_) 
if #list == 1 then 
send(msg.chat_id_, msg.id_,  "*❏︙لم يكتمل العدد الكلي للاعبين*" )
elseif #list == 0 then 
send(msg.chat_id_, msg.id_, "*❏︙عذرا لم تقوم باضافه اي لاعب*" )
return false
end 
local UserName = list[math.random(#list)]
database:del(bot_id..':List_Rolet:'..msg.chat_id_) 
database:del(bot_id..":Witting_StartGame:"..msg.chat_id_..msg.sender_user_id_)
send(msg.chat_id_, msg.id_, '*❏︙الفائز هوه* ['..UserName..']')
return false
end 
if text == 'الاعبين' then
local list = database:smembers(bot_id..':List_Rolet:'..msg.chat_id_) 
local Text = '\n*ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*\n' 
if #list == 0 then 
send(msg.chat_id_, msg.id_,'*❏︙لا يوجد لاعبين هنا*')
end 
for k, v in pairs(list) do 
Text = Text..k.."•  » [" ..v.."] »\n"  
end 
send(msg.chat_id_, msg.id_, Text)
end
if text == "صراحه" or text == "الصراحه" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
if not database:get(bot_id..'Cick:vvvzvv'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":vvvzvv_Bots"..msg.chat_id_,"sendvvvzvve")
local TeLaNd_Msg = {
"صراحه  |  صوتك حلوة؟",
"صراحه  |  التقيت الناس مع وجوهين؟",
"صراحه  |  شيء وكنت تحقق اللسان؟",
"صراحه  |  أنا شخص ضعيف عندما؟",
"صراحه  |  هل ترغب في إظهار حبك ومرفق لشخص أو رؤية هذا الضعف؟",
"صراحه  |  يدل على أن الكذب مرات تكون ضرورية شي؟",
"صراحه  |  أشعر بالوحدة على الرغم من أنني تحيط بك كثيرا؟",
"صراحه  |  كيفية الكشف عن من يكمن عليك؟",
"صراحه  |  إذا حاول شخص ما أن يكرهه أن يقترب منك ويهتم بك تعطيه فرصة؟",
"صراحه  |  أشجع شيء حلو في حياتك؟",
"صراحه  |  طريقة جيدة يقنع حتى لو كانت الفكرة خاطئة توافق؟",
"صراحه  |  كيف تتصرف مع من يسيئون فهمك ويأخذ على ذهنه ثم ينتظر أن يرفض؟",
"صراحه  |  التغيير العادي عندما يكون الشخص الذي يحبه؟",
"صراحه  |  المواقف الصعبة تضعف لك ولا ترفع؟",
"صراحه  |  نظرة و يفسد الصداقة؟",
"صراحه  |  ‏‏إذا أحد قالك كلام سيء بالغالب وش تكون ردة فعلك؟",
"صراحه  |  شخص معك بالحلوه والمُره؟",
"صراحه  |  ‏هل تحب إظهار حبك وتعلقك بالشخص أم ترى ذلك ضعف؟",
"صراحه  |  تأخذ بكلام اللي ينصحك ولا تسوي اللي تبي؟",
"صراحه  |  وش تتمنى الناس تعرف عليك؟",
"صراحه  |  ابيع المجرة عشان؟",
"صراحه  |  أحيانا احس ان الناس ، كمل؟",
"صراحه  |  مع مين ودك تنام اليوم؟",
"صراحه  |  صدفة العمر الحلوة هي اني؟",
"صراحه  |  الكُره العظيم دايم يجي بعد حُب قوي تتفق؟",
"صراحه  |  صفة تحبها في نفسك؟",
"صراحه  |  ‏الفقر فقر العقول ليس الجيوب  ، تتفق؟",
"صراحه  |  تصلي صلواتك الخمس كلها؟",
"صراحه  |  ‏تجامل أحد على راحتك؟",
"صراحه  |  اشجع شيء سويتة بحياتك؟",
"صراحه  |  وش ناوي تسوي اليوم؟",
"صراحه  |  وش شعورك لما تشوف المطر؟",
"صراحه  |  غيرتك هاديه ولا تسوي مشاكل؟",
"صراحه  |  ما اكثر شي ندمن عليه؟",
"صراحه  |  اي الدول تتمنى ان تزورها؟",
"صراحه  |  متى اخر مره بكيت؟",
"صراحه  |  تقيم حظك ؟ من عشره؟",
"صراحه  |  هل تعتقد ان حظك سيئ؟",
"صراحه  |  شـخــص تتمنــي الإنتقــام منـــه؟",
"صراحه  |  كلمة تود سماعها كل يوم؟",
"صراحه  |  **هل تُتقن عملك أم تشعر بالممل؟",
"صراحه  |  هل قمت بانتحال أحد الشخصيات لتكذب على من حولك؟",
"صراحه  |  متى آخر مرة قمت بعمل مُشكلة كبيرة وتسببت في خسائر؟",
"صراحه  |  ما هو اسوأ خبر سمعته بحياتك؟",
"‏صراحه  | هل جرحت شخص تحبه من قبل ؟",
"صراحه  |  ما هي العادة التي تُحب أن تبتعد عنها؟",
"‏صراحه  | هل تحب عائلتك ام تكرههم؟",
"‏صراحه  |  من هو الشخص الذي يأتي في قلبك بعد الله – سبحانه وتعالى- ورسوله الكريم – صلى الله عليه وسلم؟",
"‏صراحه  |  هل خجلت من نفسك من قبل؟",
"‏صراحه  |  ما هو ا الحلم  الذي لم تستطيع ان تحققه؟",
"‏صراحه  |  ما هو الشخص الذي تحلم به كل ليلة؟",
"‏صراحه  |  هل تعرضت إلى موقف مُحرج جعلك تكره صاحبهُ؟",
"‏صراحه  |  هل قمت بالبكاء أمام من تُحب؟",
"‏صراحه  |  ماذا تختار حبيبك أم صديقك؟",
"‏صراحه  | هل حياتك سعيدة أم حزينة؟",
"صراحه  |  ما هي أجمل سنة عشتها بحياتك؟",
"‏صراحه  |  ما هو عمرك الحقيقي؟",
"‏صراحه  |  ما اكثر شي ندمن عليه؟",
"صراحه  |  ما هي أمنياتك المُستقبلية؟‏",
"صراحه  | هل قبلت فتاه؟"
}
send(msg.chat_id_, msg.id_,'['..TeLaNd_Msg[math.random(#TeLaNd_Msg)]..']') 
return false
end
end
if text == 'الحزوره' or text == 'حزوره' then
if database:get(bot_id..'Lock:Games'..msg.chat_id_) then
database:del(bot_id..'Set:Hzora'..msg.chat_id_)
Hzora = {'الجرس','عقرب الساعه','السمك','المطر','5','الكتاب','البسمار','7','الكعبه','بيت الشعر','لهانه','انا','امي','الابره','الساعه','22','غلط','كم الساعه','البيتنجان','البيض','المرايه','الضوء','الهواء','الضل','العمر','القلم','المشط','الحفره','البحر','الثلج','الاسفنج','الصوت','بلم'};
name = Hzora[math.random(#Hzora)]
database:set(bot_id..'Klam:Hzor'..msg.chat_id_,name)
name = string.gsub(name,'الجرس','شيئ اذا لمسته صرخ ما هوه ؟')
name = string.gsub(name,'عقرب الساعه','اخوان لا يستطيعان تمضيه اكثر من دقيقه معا فما هما ؟')
name = string.gsub(name,'السمك','ما هو الحيوان الذي لم يصعد الى سفينة نوح عليه السلام ؟')
name = string.gsub(name,'المطر','شيئ يسقط على رأسك من الاعلى ولا يجرحك فما هو ؟')
name = string.gsub(name,'5','ما العدد الذي اذا ضربته بنفسه واضفت عليه 5 يصبح ثلاثين ')
name = string.gsub(name,'الكتاب','ما الشيئ الذي له اوراق وليس له جذور ؟')
name = string.gsub(name,'البسمار','ما هو الشيئ الذي لا يمشي الا بالضرب ؟')
name = string.gsub(name,'7','عائله مؤلفه من 6 بنات واخ لكل منهن .فكم عدد افراد العائله ')
name = string.gsub(name,'الكعبه','ما هو الشيئ الموجود وسط مكة ؟')
name = string.gsub(name,'بيت الشعر','ما هو البيت الذي ليس فيه ابواب ولا نوافذ ؟ ')
name = string.gsub(name,'لهانه','وحده حلوه ومغروره تلبس مية تنوره .من هيه ؟ ')
name = string.gsub(name,'انا','ابن امك وابن ابيك وليس باختك ولا باخيك فمن يكون ؟')
name = string.gsub(name,'امي','اخت خالك وليست خالتك من تكون ؟ ')
name = string.gsub(name,'الابره','ما هو الشيئ الذي كلما خطا خطوه فقد شيئا من ذيله ؟ ')
name = string.gsub(name,'الساعه','ما هو الشيئ الذي يقول الصدق ولكنه اذا جاع كذب ؟')
name = string.gsub(name,'22','كم مره ينطبق عقربا الساعه على بعضهما في اليوم الواحد ')
name = string.gsub(name,'غلط','ما هي الكلمه الوحيده التي تلفض غلط دائما ؟ ')
name = string.gsub(name,'كم الساعه','ما هو السؤال الذي تختلف اجابته دائما ؟')
name = string.gsub(name,'البيتنجان','جسم اسود وقلب ابيض وراس اخظر فما هو ؟')
name = string.gsub(name,'البيض','ماهو الشيئ الذي اسمه على لونه ؟')
name = string.gsub(name,'المرايه','ارى كل شيئ من دون عيون من اكون ؟ ')
name = string.gsub(name,'الضوء','ما هو الشيئ الذي يخترق الزجاج ولا يكسره ؟')
name = string.gsub(name,'الهواء','ما هو الشيئ الذي يسير امامك ولا تراه ؟')
name = string.gsub(name,'الضل','ما هو الشيئ الذي يلاحقك اينما تذهب ؟ ')
name = string.gsub(name,'العمر','ما هو الشيء الذي كلما طال قصر ؟ ')
name = string.gsub(name,'القلم','ما هو الشيئ الذي يكتب ولا يقرأ ؟')
name = string.gsub(name,'المشط','له أسنان ولا يعض ما هو ؟ ')
name = string.gsub(name,'الحفره','ما هو الشيئ اذا أخذنا منه ازداد وكبر ؟')
name = string.gsub(name,'البحر','ما هو الشيئ الذي يرفع اثقال ولا يقدر يرفع مسمار ؟')
name = string.gsub(name,'الثلج','انا ابن الماء فان تركوني في الماء مت فمن انا ؟')
name = string.gsub(name,'الاسفنج','كلي ثقوب ومع ذالك احفض الماء فمن اكون ؟')
name = string.gsub(name,'الصوت','اسير بلا رجلين ولا ادخل الا بالاذنين فمن انا ؟')
name = string.gsub(name,'بلم','حامل ومحمول نصف ناشف ونصف مبلول فمن اكون ؟ ')
send(msg.chat_id_, msg.id_,' *❏︙اسرع واحد يحل الحزوره* ↓\n {'..name..'}')
return false
end
end
------------------------------------------------------------------------
if text == ''..(database:get(bot_id..'Klam:Hzor'..msg.chat_id_) or '')..'' and not database:get(bot_id..'Set:Hzora'..msg.chat_id_) then
if not database:get(bot_id..'Set:Hzora'..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,' *❏︙الف مبروك لقد فزت* \n *❏︙للعب مره اخره ارسل »{ حزوره }*')
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id..'Set:Hzora'..msg.chat_id_,true)
end 
if text == "كت تويت" or text == "كت" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"آخر مرة زرت مدينة الملاهي؟","آخر مرة أكلت أكلتك المفضّلة؟","الوضع الحالي؟\n‏1. سهران\n‏2. ضايج\n‏3. أتأمل","آخر شيء ضاع منك؟","كلمة أخيرة لشاغل البال؟","طريقتك المعتادة في التخلّص من الطاقة السلبية؟","شهر من أشهر العام له ذكرى جميلة معك؟","كلمة غريبة من لهجتك ومعناها؟🤓","‏- شيء سمعته عالق في ذهنك هاليومين؟","متى تكره الشخص الذي أمامك حتى لو كنت مِن أشد معجبينه؟","‏- أبرز صفة حسنة في صديقك المقرب؟","هل تشعر أن هنالك مَن يُحبك؟","اذا اكتشفت أن أعز أصدقائك يضمر لك السوء، موقفك الصريح؟","أجمل شيء حصل معك خلال هاليوم؟","صِف شعورك وأنت تُحب شخص يُحب غيرك؟👀💔","كلمة لشخص غالي اشتقت إليه؟💕","آخر خبر سعيد، متى وصلك؟","أنا آسف على ....؟","أوصف نفسك بكلمة؟","صريح، مشتاق؟","‏- صريح، هل سبق وخذلت أحدهم ولو عن غير قصد؟","‏- ماذا ستختار من الكلمات لتعبر لنا عن حياتك التي عشتها الى الآن؟💭","‏- فنان/ة تود لو يدعوكَ على مائدة عشاء؟😁❤","‏- تخيّل شيء قد يحدث في المستقبل؟","‏- للشباب | آخر مرة وصلك غزل من فتاة؟🌚","شخص أو صاحب عوضك ونساك مُر الحياة ما اسمه ؟","اذا شفت حد واعجبك وعندك الجرأه انك تروح وتتعرف عليه ، مقدمة الحديث شو راح تكون ؟."," فنانك المُفضل؟","لو خيروك تصاحب الناس الاذكياء او الناس المرحين","اسم معلم ترك اثراً جميل عليك رغم قسوتة.؟","وش الحب بنظرك؟","لو خيروك جاي او قهوه","لو فزعت/ي لصديق/ه وقالك مالك دخل وش بتسوي/ين؟","شاركنا أقوى بيت شِعر من تأليفك؟","نصيحه تبدا ب -لا- ؟","كل شيء يهون الا ؟","عندك الشخص الي مستعد يوقف ضد العالم عشانك.؟","العلاقة السرية دائماً تكون حلوة؟","منشن شخص واعترف له بشي","منشن لصديقك المُقرب؟.","اخر خيانه؟.","أول حرف من اسم الحب؟","تشارك كل شي لاهلك ولا فيه أشياء ما تتشارك؟","أكثر شيء تغيّر في أسلوب حياتك بعد كورونا ؟","هات شعورك بسطر اغُنيه؟","شيء مهما حطيت فيه مصاري بتكون مبسوط؟","اغرب شي سويته ؟","كيف تشوف الجيل هذا؟","اخر همك في الحياة ؟","انت من الناس الكتومة ولا تفضفض؟","اكثر مكان تروحه لحالك ؟","قوة الصداقة بشو بتتكون؟","تطبيق تبي تحذفه من جهازك بس مضطر تستخدمه ؟","كم أعلى مبلغ جمعته؟","اخر شي شريته ؟","كلمة للشخص اللي يسب ويسكر؟","لعبة بجوالك تلعبها دايم ؟","مر عليك موقف محرج؟","علمنا عن تجربه خلت شخصيتك اقوى ؟","يوم من أيام الأسبوع روتينه ممل عندك ؟","عندك شخص تسميه ثالث والديك؟","شو هو طعامك المفضل؟","اخر همك في الحياة ؟","شو حابب تقول للاشخاص اللي بتدخل حياتك؟","عبر عن حبك او كرهك لشخص ما تقدر توصل له مشاعرك","موهبتك المكبوتة ؟","انت من الناس اللي تتغزل بالكل ولا بالشخص اللي تحبه بس؟","عبر عن حبك او كرهك لشخص ما تقدر توصل له مشاعرك","ماذا يعني لك حرف A","ماذا يعني لك حرحرM","نسبة رضاك عن نفسك من 10 ؟","عندكم شخص بالبيت بصلح اي شي بيخرب؟","تحس نفسك هطف ؟","تدوس على قلبك او كرامتك؟","  تحس حياتك فاشله ولا ناجحه؟","لو الشخص اللي تحبه قال بدخل حساباتك بتعطيه ولا بترفض؟","ميزة وعيب فيك ؟","وش ينادونك في البيت ؟", }  
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == 'المعاني' or text == 'معاني' then
if database:get(bot_id..'Lock:Games'..msg.chat_id_) then
database:del(bot_id..'Set:Maany'..msg.chat_id_)
Maany_Rand = {'قرد','دجاجه','بطريق','ضفدع','بومه','نحله','ديك','جمل','بقره','دولفين','تمساح','قرش','نمر','اخطبوط','سمكه','خفاش','اسد','فأر','ذئب','فراشه','عقرب','زرافه','قنفذ','تفاحه','باذنجان'}
name = Maany_Rand[math.random(#Maany_Rand)]
database:set(bot_id..'Maany'..msg.chat_id_,name)
name = string.gsub(name,'قرد','🐒')
name = string.gsub(name,'دجاجه','🐔')
name = string.gsub(name,'بطريق','🐧')
name = string.gsub(name,'ضفدع','🐸')
name = string.gsub(name,'بومه','🦉')
name = string.gsub(name,'نحله','🐝')
name = string.gsub(name,'ديك','🐓')
name = string.gsub(name,'جمل','🐫')
name = string.gsub(name,'بقره','🐄')
name = string.gsub(name,'دولفين','??')
name = string.gsub(name,'تمساح','🐊')
name = string.gsub(name,'قرش','🦈')
name = string.gsub(name,'نمر','🐅')
name = string.gsub(name,'اخطبوط','🐙')
name = string.gsub(name,'سمكه','🐟')
name = string.gsub(name,'خفاش','🦇')
name = string.gsub(name,'اسد','🦁')
name = string.gsub(name,'فأر','🐭')
name = string.gsub(name,'ذئب','🐺')
name = string.gsub(name,'فراشه','🦋')
name = string.gsub(name,'عقرب','🦂')
name = string.gsub(name,'زرافه','🦒')
name = string.gsub(name,'قنفذ','🦔')
name = string.gsub(name,'تفاحه','🍎')
name = string.gsub(name,'باذنجان','🍆')
send(msg.chat_id_, msg.id_,' *❏︙اسرع واحد يدز معنى السمايل* » {'..name..'}')
return false
end
end
------------------------------------------------------------------------
if text == ''..(database:get(bot_id..'Maany'..msg.chat_id_) or '')..'' and not database:get(bot_id..'Set:Maany'..msg.chat_id_) then
if not database:get(bot_id..'Set:Maany'..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,' *❏︙الف مبروك لقد فزت* \n *❏︙للعب مره اخره ارسل »{ معاني }*')
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id..'Set:Maany'..msg.chat_id_,true)
end 
if text == 'العكس' or text == 'عكس' then
if database:get(bot_id..'Lock:Games'..msg.chat_id_) then
database:del(bot_id..'Set:Aks'..msg.chat_id_)
katu = {'باي','فهمت','موزين','اسمعك','احبك','موحلو','نضيف','حاره','ناصي','جوه','سريع','ونسه','طويل','سمين','ضعيف','شريف','شجاع','رحت','عدل','نشيط','شبعان','موعطشان','خوش ولد','اني','هادئ'}
name = katu[math.random(#katu)]
database:set(bot_id..'Set:Aks:Game'..msg.chat_id_,name)
name = string.gsub(name,'باي','هلو')
name = string.gsub(name,'فهمت','مافهمت')
name = string.gsub(name,'موزين','زين')
name = string.gsub(name,'اسمعك','ماسمعك')
name = string.gsub(name,'احبك','ماحبك')
name = string.gsub(name,'موحلو','حلو')
name = string.gsub(name,'نضيف','وصخ')
name = string.gsub(name,'حاره','بارده')
name = string.gsub(name,'ناصي','عالي')
name = string.gsub(name,'جوه','فوك')
name = string.gsub(name,'سريع','بطيء')
name = string.gsub(name,'ونسه','ضوجه')
name = string.gsub(name,'طويل','قزم')
name = string.gsub(name,'سمين','ضعيف')
name = string.gsub(name,'ضعيف','قوي')
name = string.gsub(name,'شريف','كواد')
name = string.gsub(name,'شجاع','جبان')
name = string.gsub(name,'رحت','اجيت')
name = string.gsub(name,'عدل','ميت')
name = string.gsub(name,'نشيط','كسول')
name = string.gsub(name,'شبعان','جوعان')
name = string.gsub(name,'موعطشان','عطشان')
name = string.gsub(name,'خوش ولد','موخوش ولد')
name = string.gsub(name,'اني','مطي')
name = string.gsub(name,'هادئ','عصبي')
send(msg.chat_id_, msg.id_,' *❏︙اسرع واحد يدز العكس* » {'..name..'}')
return false
end
end
------------------------------------------------------------------------
if text == ''..(database:get(bot_id..'Set:Aks:Game'..msg.chat_id_) or '')..'' and not database:get(bot_id..'Set:Aks'..msg.chat_id_) then
if not database:get(bot_id..'Set:Aks'..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,' *❏︙الف مبروك لقد فزت* \n *❏︙للعب مره اخره ارسل »{ العكس }*')
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id..'Set:Aks'..msg.chat_id_,true)
end 

if database:get(bot_id.."GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 20 then
send(msg.chat_id_, msg.id_," ◈︙عذرآ لا يمكنك تخمين عدد اكبر من ال { 20 } خمن رقم ما بين ال{ 1 و 20 }\n")
return false  end 
local GETNUM = database:get(bot_id.."GAMES:NUM"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
database:del(bot_id..'SADD:NUM'..msg.chat_id_..msg.sender_user_id_)
database:del(bot_id.."GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_,5)  
send(msg.chat_id_, msg.id_,' *❏︙مبروك فزت ويانه وخمنت الرقم الصحيح*\n *❏︙تم اضافة { 5 } من النقاط* \n')
elseif tonumber(NUM) ~= tonumber(GETNUM) then
database:incrby(bot_id..'SADD:NUM'..msg.chat_id_..msg.sender_user_id_,1)
if tonumber(database:get(bot_id..'SADD:NUM'..msg.chat_id_..msg.sender_user_id_)) >= 3 then
database:del(bot_id..'SADD:NUM'..msg.chat_id_..msg.sender_user_id_)
database:del(bot_id.."GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
send(msg.chat_id_, msg.id_,' *❏︙اوبس لقد خسرت في اللعبه* \n *❏︙حظآ اوفر في المره القادمه* \n *❏︙كان الرقم الذي تم تخمينه { '..GETNUM..' }*')
else
send(msg.chat_id_, msg.id_,' *◈︙اوبس تخمينك غلط* \n *◈︙ارسل رقم تخمنه مره اخرى* ')
end
end
end
end
if text == 'خمن' or text == 'التخمين' then   
if database:get(bot_id..'Lock:Games'..msg.chat_id_) then
Num = math.random(1,20)
database:set(bot_id.."GAMES:NUM"..msg.chat_id_,Num) 
send(msg.chat_id_, msg.id_,'\n ❏︙اهلا بك عزيزي في لعبة التخمين :\nٴ━━━━━━━━━━\n'..' ❏︙ملاحظه لديك { 3 } محاولات فقط فكر قبل ارسال تخمينك \n\n'..' ❏︙سيتم تخمين عدد ما بين ال {1 و 20} اذا تعتقد انك تستطيع الفوز جرب واللعب الان ؟ ')
database:setex(bot_id.."GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end
end

if database:get(bot_id.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 6 then
send(msg.chat_id_, msg.id_," ❏︙عذرا لا يوجد سواء { 6 } اختيارات فقط ارسل اختيارك مره اخرى\n")
return false  end 
local GETNUM = database:get(bot_id.."Games:Bat"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
database:del(bot_id.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
send(msg.chat_id_, msg.id_,' *❏︙مبروك فزت وطلعت المحيبس بل ايد رقم* { '..NUM..' }\n *❏︙لقد حصلت على { 3 }من نقاط يمكنك استبدالهن برسائل* ')
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_,3)  
elseif tonumber(NUM) ~= tonumber(GETNUM) then
database:del(bot_id.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
send(msg.chat_id_, msg.id_,' *❏︙للاسف لقد خسرت* \n *❏︙المحيبس بل ايد رقم* { '..GETNUM..' }\n *❏︙حاول مره اخرى للعثور على المحيبس*')
end
end
end

if text == 'محيبس' or text == 'البات' then
if database:get(bot_id..'Lock:Games'..msg.chat_id_) then   
Num = math.random(1,6)
database:set(bot_id.."Games:Bat"..msg.chat_id_,Num) 
TEST = [[
*➀       ➁     ➂      ➃      ➄     ➅
↓      ↓     ↓      ↓     ↓     ↓   
👊 ‹•› 👊 ‹•› 👊 ‹•› 👊 ‹•› 👊 ‹•› 👊
◈︙اختر لأستخراج المحيبس الايد التي تحمل المحيبس 
 ◈︙الفائز يحصل على { 3 } من النقاط *
]]
send(msg.chat_id_, msg.id_,TEST)
database:setex(bot_id.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end
end

------------------------------------------------------------------------
if text == 'المختلف' or text == 'مختلف' then
if database:get(bot_id..'Lock:Games'..msg.chat_id_) then
mktlf = {'😸','☠','🐼','🐇','??','🌚','⭐️','✨','⛈','🌥','⛄️','👨‍🔬','👨‍💻','👨‍🔧','👩‍🍳','🧚‍♀','??‍♂','??‍♂','🙍‍♂','🧖‍♂','👬','👨‍👨‍👧','🕒','🕤','⌛️','📅',};
name = mktlf[math.random(#mktlf)]
database:del(bot_id..'Set:Moktlf:Bot'..msg.chat_id_)
database:set(bot_id..':Set:Moktlf'..msg.chat_id_,name)
name = string.gsub(name,'😸','😹😹😹😹😹😹😹😹😸😹😹😹😹')
name = string.gsub(name,'☠','💀💀💀💀💀💀💀☠💀💀💀💀💀')
name = string.gsub(name,'🐼','👻👻👻🐼👻👻👻👻👻👻👻')
name = string.gsub(name,'🐇','🕊🕊🕊🕊🕊🐇🕊🕊🕊🕊')
name = string.gsub(name,'🌑','🌚🌚🌚🌚🌚🌑🌚🌚🌚')
name = string.gsub(name,'🌚','🌑🌑🌑🌑🌑🌚🌑🌑🌑')
name = string.gsub(name,'⭐️','🌟🌟🌟🌟🌟🌟🌟🌟⭐️🌟🌟🌟')
name = string.gsub(name,'✨','💫💫💫💫💫✨💫💫💫💫')
name = string.gsub(name,'⛈','🌨🌨🌨🌨🌨⛈🌨🌨🌨🌨')
name = string.gsub(name,'🌥','⛅️⛅️⛅️⛅️⛅️⛅️🌥⛅️⛅️⛅️⛅️')
name = string.gsub(name,'⛄️','☃☃☃☃☃☃⛄️☃☃☃☃')
name = string.gsub(name,'👨‍🔬','👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👨‍🔬👩‍🔬👩‍🔬👩‍🔬')
name = string.gsub(name,'👨‍💻','👩‍💻👩‍💻👩‍‍💻👩‍‍💻👩‍💻👨‍💻👩‍💻👩‍💻👩‍💻')
name = string.gsub(name,'👨‍🔧','👩‍🔧👩‍🔧👩‍🔧👩‍🔧👩‍🔧👩‍🔧👨‍🔧👩‍🔧')
name = string.gsub(name,'👩‍🍳','👨‍🍳👨‍🍳👨‍🍳👨‍🍳👨‍🍳👩‍🍳👨‍🍳👨‍🍳👨‍🍳')
name = string.gsub(name,'🧚‍♀','🧚‍♂🧚‍♂🧚‍♂🧚‍♂🧚‍♀🧚‍♂🧚‍♂')
name = string.gsub(name,'🧜‍♂','🧜‍♀🧜‍♀🧜‍♀🧜‍♀🧜‍♀🧚‍♂🧜‍♀🧜‍♀🧜‍♀')
name = string.gsub(name,'🧝‍♂','🧝‍♀🧝‍♀🧝‍♀🧝‍♀🧝‍♀🧝‍♂🧝‍♀🧝‍♀🧝‍♀')
name = string.gsub(name,'🙍‍♂️','🙎‍♂️🙎‍♂️🙎‍♂️🙎‍♂️🙎‍♂️🙍‍♂️🙎‍♂️🙎‍♂️🙎‍♂️')
name = string.gsub(name,'🧖‍♂️','🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♂️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️')
name = string.gsub(name,'👬','👭👭👭👭👭👬👭👭👭')
name = string.gsub(name,'👨‍👨‍👧','👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👧👨‍👨‍👦👨‍👨‍👦')
name = string.gsub(name,'🕒','🕒🕒🕒🕒🕒🕒🕓🕒🕒🕒')
name = string.gsub(name,'🕤','🕥🕥🕥🕥🕥🕤🕥🕥🕥')
name = string.gsub(name,'⌛️','⏳⏳⏳⏳⏳⏳⌛️⏳⏳')
name = string.gsub(name,'📅','📆📆📆📆📆📆📅📆📆')
send(msg.chat_id_, msg.id_,' *❏︙اسرع واحد يدز الاختلاف* » {'..name..'}')
return false
end
end
------------------------------------------------------------------------
if text == ''..(database:get(bot_id..':Set:Moktlf'..msg.chat_id_) or '')..'' then 
if not database:get(bot_id..'Set:Moktlf:Bot'..msg.chat_id_) then 
database:del(bot_id..':Set:Moktlf'..msg.chat_id_)
send(msg.chat_id_, msg.id_,' *❏︙الف مبروك لقد فزت* \n *❏︙للعب مره اخره ارسل »{ المختلف }*')
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id..'Set:Moktlf:Bot'..msg.chat_id_,true)
end
------------------------------------------------------------------------
if text == 'الرياضيات' or text == 'رياضيات' then
if database:get(bot_id..'Lock:Games'..msg.chat_id_) then
Amer = {'22','30','33','60','90','2','5','36','16','88','50','10','19',};
name = Amer[math.random(#Amer)]
database:del(bot_id..'Set:Ryadeat:Bot'..msg.chat_id_)
database:set(bot_id..':Set:Ryadeat'..msg.chat_id_,name)
name = string.gsub(name,'22','2+20=')
name = string.gsub(name,'30','10×3=')
name = string.gsub(name,'33','30+3=')
name = string.gsub(name,'60','33+27=')
name = string.gsub(name,'90','9×9+9=')
name = string.gsub(name,'2','2×1=')
name = string.gsub(name,'5','5×1=')
name = string.gsub(name,'36','6×6=')
name = string.gsub(name,'16','2×8=')
name = string.gsub(name,'88','8+80=')
name = string.gsub(name,'50','30+20=')
name = string.gsub(name,'10','2+8=')
name = string.gsub(name,'19','6+13=')
send(msg.chat_id_, msg.id_,' *❏︙حل المسأله الرياضيه*  » {'..name..'}')
return false
end
end
------------------------------------------------------------------------
if text == ''..(database:get(bot_id..':Set:Ryadeat'..msg.chat_id_) or '')..'' then 
if not database:get(bot_id..'Set:Ryadeat:Bot'..msg.chat_id_) then 
database:del(bot_id..':Set:Ryadeat'..msg.chat_id_)
send(msg.chat_id_, msg.id_,' *❏︙الف مبروك لقد فزت* \n *❏︙للعب مره اخره ارسل »{ رياضيات }*')
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id..'Set:Ryadeat:Bot'..msg.chat_id_,true)
end
------------------------------------------------------------------------
if text == 'انكليزي' or text == 'الانكليزي' then
if database:get(bot_id..'Lock:Games'..msg.chat_id_) then
Amer = {'معلومات','قنوات','مجموعات','كتاب','تفاحه','مختلف','سدني','فلوس','اعلم','ذئب','تمساح','ذكي',};
name = Amer[math.random(#Amer)]
database:del(bot_id..'Set:English:Bot'..msg.chat_id_)
database:set(bot_id..':Set:English'..msg.chat_id_,name)
name = string.gsub(name,'ذئب','Wolf')
name = string.gsub(name,'معلومات','Information')
name = string.gsub(name,'قنوات','Channels')
name = string.gsub(name,'مجموعات','Groups')
name = string.gsub(name,'كتاب','Book')
name = string.gsub(name,'تفاحه','Apple')
name = string.gsub(name,'سدني','Sydney')
name = string.gsub(name,'فلوس','money')
name = string.gsub(name,'اعلم','I know')
name = string.gsub(name,'تمساح','crocodile')
name = string.gsub(name,'مختلف','Different')
name = string.gsub(name,'ذكي','Intelligent')
send(msg.chat_id_, msg.id_,' *❏︙ترجم الكلمات الاتيه*  » {'..name..'}')
return false
end
end
------------------------------------------------------------------------
if text == ''..(database:get(bot_id..':Set:English'..msg.chat_id_) or '')..'' then 
if not database:get(bot_id..'Set:English:Bot'..msg.chat_id_) then 
database:del(bot_id..':Set:English'..msg.chat_id_)
send(msg.chat_id_, msg.id_,' *❏︙الف مبروك لقد فزت* \n *❏︙للعب مره اخره ارسل »{ `انكليزي` }*')
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id..'Set:English:Bot'..msg.chat_id_,true)
end
------------------------------------------------------------------------
if text == 'امثله' or text == 'الامثله' then
if database:get(bot_id..'Lock:Games'..msg.chat_id_) then
mthal = {'جوز','ضراطه','الحبل','الحافي','شقره','بيدك','سلايه','النخله','الخيل','حداد','المبلل','يركص','قرد','العنب','العمه','الخبز','بالحصاد','شهر','شكه','يكحله',};
name = mthal[math.random(#mthal)]
database:set(bot_id..'Set:Amth'..msg.chat_id_,name)
database:del(bot_id..'Set:Amth:Bot'..msg.chat_id_)
name = string.gsub(name,'جوز','ينطي____للماعده سنون')
name = string.gsub(name,'ضراطه','الي يسوق المطي يتحمل___')
name = string.gsub(name,'بيدك','اكل___محد يفيدك')
name = string.gsub(name,'الحافي','تجدي من___نعال')
name = string.gsub(name,'شقره','مع الخيل يا___')
name = string.gsub(name,'النخله','الطول طول___والعقل عقل الصخلة')
name = string.gsub(name,'سلايه','بالوجه امراية وبالظهر___')
name = string.gsub(name,'الخيل','من قلة___شدو على الچلاب سروج')
name = string.gsub(name,'حداد','موكل من صخم وجهه كال آني___')
name = string.gsub(name,'المبلل','___ما يخاف من المطر')
name = string.gsub(name,'الحبل','اللي تلدغة الحية يخاف من جرة___')
name = string.gsub(name,'يركص','المايعرف___يكول الكاع عوجه')
name = string.gsub(name,'العنب','المايلوح___يكول حامض')
name = string.gsub(name,'العمه','___إذا حبت الچنة ابليس يدخل الجنة')
name = string.gsub(name,'الخبز','انطي___للخباز حتى لو ياكل نصه')
name = string.gsub(name,'باحصاد','اسمة___ومنجله مكسور')
name = string.gsub(name,'شهر','امشي__ولا تعبر نهر')
name = string.gsub(name,'شكه','يامن تعب يامن__يا من على الحاضر لكة')
name = string.gsub(name,'القرد','__بعين امه غزال')
name = string.gsub(name,'يكحله','اجه___عماها')
send(msg.chat_id_, msg.id_,' *❏︙اسرع واحد يكمل المثل* » {'..name..'}')
return false
end
end
------------------------------------------------------------------------
if text == ''..(database:get(bot_id..'Set:Amth'..msg.chat_id_) or '')..'' then 
if not database:get(bot_id..'Set:Amth:Bot'..msg.chat_id_) then 
database:del(bot_id..'Set:Amth'..msg.chat_id_)
send(msg.chat_id_, msg.id_,' *❏︙الف مبروك لقد فزت* \n *❏︙للعب مره اخره ارسل »{ امثله }*')
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id..'Set:Amth:Bot'..msg.chat_id_,true)
end
if text == 'تعطيل الالعاب' and Manager(msg) then   
if database:get(bot_id..'Lock:Games'..msg.chat_id_)  then
database:del(bot_id..'Lock:Games'..msg.chat_id_) 
Text = '\n *❏︙تم تعطيل الالعاب*' 
else
Text = '\n *❏︙بالتاكيد تم تعطيل الالعاب*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل الالعاب' and Manager(msg) then  
if not database:get(bot_id..'Lock:Games'..msg.chat_id_)  then
database:set(bot_id..'Lock:Games'..msg.chat_id_,true) 
Text = '\n *❏︙تم تفعيل الالعاب*' 
else
Text = '\n *❏︙بالتاكيد تم تفعيل الالعاب*'
end
send(msg.chat_id_, msg.id_,Text) 
end

end
return {
Peland = games
}