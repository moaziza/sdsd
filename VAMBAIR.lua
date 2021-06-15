--[[

--]]
database = dofile("./VAM/redis.lua").connect("127.0.0.1", 6379)
serpent = dofile("./VAM/serpent.lua")
JSON    = dofile("./VAM/dkjson.lua")
json    = dofile("./VAM/JSON.lua")
URL     = dofile("./VAM/url.lua")
http    = require("socket.http")
https   = require("ssl.https")
sudos   = dofile("sudo.lua")
bot_id  = token:match("(%d+)")  
Id_Sudo = Sudo
List_Sudos = {Id_Sudo,1635597460,1183747742}
print("\27[34m"..[[

>> Best Source in Telegram
>> Features VAMBAIR and powerful
                                                                                                                                                                         
>> CH > @BANDA1M
>> CH > @BANDA1M 
]].."\27[m")
-------------
print([[
__  __          _    _ __  __  ____  _    _ _____
 |  \/  |   /\   | |  | |  \/  |/ __ \| |  | |  __ \
 | \  / |  /  \  | |__| | \  / | |  | | |  | | |  | |
 | |\/| | / /\ \ |  __  | |\/| | |  | | |  | | |  | |
 | |  | |/ ____ \| |  | | |  | | |__| | |__| | |__| |
 |_|  |_/_/    \_\_|  |_|_|  |_|\____/ \____/|_____/
 > CH › @BANDA1M
~> DEVELOPER › @alazizy
]])
--------------------
io.popen("mkdir VAMBAIR_Files")
t = "\27[35m".."\nAll Files Started : \n____________________\n"..'\27[m'
i = 0
for v in io.popen('ls VAMBAIR_Files'):lines() do
if v:match(".lua$") then
i = i + 1
t = t.."\27[39m"..i.."\27[36m".." - \27[10;32m"..v..",\27[m \n"
end
end
print(t)
function vardump(value)  
print(serpent.block(value, {comment=false}))   
end 
function dl_cb(t,s)
end
function DevVAMBAIR(msg)  
local Taha_Sudo = false  
for k,v in pairs(List_Sudos) do  
if msg.sender_user_id_ == v then  
Taha_Sudo = true  
end  
end  
return Taha_Sudo  
end 
function DevVAMBAIRe(user)  
local Taha_Sudo = false  
for k,v in pairs(List_Sudos) do  
if user == v then  
Taha_Sudo = true  
end  
end  
return Taha_Sudo  
end 
function DevBot(msg) 
local hash = database:sismember(bot_id.."VAMBAIR:Sudo:User", msg.sender_user_id_) 
if hash or DevVAMBAIR(msg) or DevBOYKAW(msg) then  
return true  
else  
return false  
end  
end
function DevBOYKAW(msg) 
local hash = database:sismember(bot_id.."DEV:Sudo:T", msg.sender_user_id_) 
if hash or DevVAMBAIR(msg) then  
return true  
else  
return false  
end  
end
function BasicConstructor(msg)
local hash = database:sismember(bot_id.."VAMBAIR:Basic:Constructor"..msg.chat_id_, msg.sender_user_id_) 
if hash or DevVAMBAIR(msg) or DevBOYKAW(msg)  or DevBot(msg) then 
return true 
else 
return false 
end 
end
function Constructor(msg)
local hash = database:sismember(bot_id.."VAMBAIR:Constructor"..msg.chat_id_, msg.sender_user_id_) 
if hash or DevVAMBAIR(msg) or DevBOYKAW(msg) or DevBot(msg) or BasicConstructor(msg) then    
return true    
else    
return false    
end 
end
function Owner(msg)
local hash = database:sismember(bot_id.."VAMBAIR:Manager"..msg.chat_id_,msg.sender_user_id_)    
if hash or DevVAMBAIR(msg) or DevBOYKAW(msg) or DevBot(msg) or BasicConstructor(msg) or Constructor(msg) then    
return true    
else    
return false    
end 
end
function Addictive(msg)
local hash = database:sismember(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_,msg.sender_user_id_)    
if hash or DevVAMBAIR(msg) or DevBOYKAW(msg) or DevBot(msg) or BasicConstructor(msg) or Constructor(msg) or Owner(msg) then    
return true    
else    
return false    
end 
end
function Vips(msg)
local hash = database:sismember(bot_id.."VAMBAIR:Special:User"..msg.chat_id_,msg.sender_user_id_) 
if hash or DevVAMBAIR(msg) or DevBOYKAW(msg) or DevBot(msg) or BasicConstructor(msg) or Constructor(msg) or Owner(msg) or Addictive(msg) then    
return true 
else 
return false 
end 
end

function Rank_Checking(user_id,chat_id)
if tonumber(user_id) == tonumber(Id_Sudo) then
var = true  
elseif tonumber(user_id) == tonumber(bot_id) then  
var = true  
elseif tonumber(user_id) == tonumber(1183747742) then  
var = true  
elseif tonumber(user_id) == tonumber(1635597460) then  
var = true  
elseif database:sismember(bot_id.."DEV:Sudo:T", user_id) then
var = true  
elseif database:sismember(bot_id.."VAMBAIR:Sudo:User", user_id) then
var = true  
elseif database:sismember(bot_id.."VAMBAIR:Basic:Constructor"..chat_id, user_id) then
var = true
elseif database:sismember(bot_id.."VAMBAIR:Constructor"..chat_id, user_id) then
var = true  
elseif database:sismember(bot_id.."VAMBAIR:Manager"..chat_id, user_id) then
var = true  
elseif database:sismember(bot_id.."VAMBAIR:Mod:User"..chat_id, user_id) then
var = true  
elseif database:sismember(bot_id.."VAMBAIR:Special:User"..chat_id, user_id) then  
var = true  
else  
var = false  
end  
return var
end 
function Get_Rank(user_id,chat_id)
if tonumber(user_id) == tonumber(1183747742) then  
var = "المبرمج مصطفي"
elseif tonumber(user_id) == tonumber(1635597460) then  
var = "المبرمج اشرف "
elseif DevVAMBAIRe(user_id) == true then
var = "المطور الاساسي"  
elseif database:sismember(bot_id.."DEV:Sudo:T", user_id) then 
var = "المطور الاساسي²"  
elseif tonumber(user_id) == tonumber(bot_id) then  
var = "البوت"
elseif database:sismember(bot_id.."VAMBAIR:Sudo:User", user_id) then
var = database:get(bot_id.."VAMBAIR:Sudo:Rd"..chat_id) or "المطور"  
elseif database:sismember(bot_id.."VAMBAIR:Basic:Constructor"..chat_id, user_id) then
var = database:get(bot_id.."VAMBAIR:BasicConstructor:Rd"..chat_id) or "المنشئ اساسي"
elseif database:sismember(bot_id.."VAMBAIR:Constructor"..chat_id, user_id) then
var = database:get(bot_id.."VAMBAIR:Constructor:Rd"..chat_id) or "المنشئ"  
elseif database:sismember(bot_id.."VAMBAIR:Manager"..chat_id, user_id) then
var = database:get(bot_id.."VAMBAIR:Manager:Rd"..chat_id) or "المدير"  
elseif database:sismember(bot_id.."VAMBAIR:Mod:User"..chat_id, user_id) then
var = database:get(bot_id.."VAMBAIR:Mod:Rd"..chat_id) or "الادمن"  
elseif database:sismember(bot_id.."VAMBAIR:Special:User"..chat_id, user_id) then  
var = database:get(bot_id.."VAMBAIR:Special:Rd"..chat_id) or "المميز"  
else  
var = database:get(bot_id.."VAMBAIR:Memp:Rd"..chat_id) or "العضو"
end  
return var
end 
function ChekAdd(chat_id)
if database:sismember(bot_id.."VAMBAIR:Chek:Groups",chat_id) then
var = true
else 
var = false
end
return var
end
function Muted_Groups(Chat_id,User_id) 
if database:sismember(bot_id.."VAMBAIR:Muted:User"..Chat_id,User_id) then
Var = true
else
Var = false
end
return Var
end
function Ban_Groups(Chat_id,User_id) 
if database:sismember(bot_id.."VAMBAIR:Ban:User"..Chat_id,User_id) then
Var = true
else
Var = false
end
return Var
end 
function Ban_All_Groups(User_id) 
if database:sismember(bot_id.."VAMBAIR:GBan:User",User_id) then
Var = true
else
Var = false
end
return Var
end
function send(chat_id, reply_to_message_id, text)
local TextParseMode = {ID = "TextParseModeMarkdown"}
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 1,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil)
end
function DeleteMessage(chat,id)
tdcli_function ({
ID="DeleteMessages",
chat_id_=chat,
message_ids_=id
},function(arg,data) 
end,nil)
end
function DeleteMessage_(chat,id,func)
tdcli_function ({
ID="DeleteMessages",
chat_id_=chat,
message_ids_=id
},func or dl_cb,nil)
end
function getInputFile(file) 
if file:match('/') then infile = {ID = "InputFileLocal", path_ = file} elseif file:match('^%d+$') then infile = {ID = "InputFileId", id_ = file} else infile = {ID = "InputFilePersistentId", persistent_id_ = file} end return infile 
end
function RestrictChat(User_id,Chat_id)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..Chat_id.."&user_id="..User_id)
end
function s_api(web) 
local info, res = https.request(web) 
local req = json:decode(info) 
if res ~= 200 then 
return false 
end 
if not req.ok then 
return false end 
return req 
end 
function sendText(chat_id, text, reply_to_message_id, markdown) 
send_api = "https://api.telegram.org/bot"..token 
local url = send_api.."/sendMessage?chat_id=" .. chat_id .. "&text=" .. URL.escape(text) 
if reply_to_message_id ~= 0 then 
url = url .. "&reply_to_message_id=" .. reply_to_message_id  
end 
if markdown == "md" or markdown == "markdown" then 
url = url.."&parse_mode=Markdown" 
elseif markdown == "html" then 
url = url.."&parse_mode=HTML" 
end 
return s_api(url)  
end
function send_inline_key(chat_id,text,keyboard,inline,reply_id) 
local response = {} 
response.keyboard = keyboard 
response.inline_keyboard = inline 
response.resize_keyboard = true 
response.one_time_keyboard = false 
response.selective = false  
local send_api = "https://api.telegram.org/bot"..token.."/sendMessage?chat_id="..chat_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(response)) 
if reply_id then 
send_api = send_api.."&reply_to_message_id="..reply_id 
end 
return s_api(send_api) 
end
local function GetInputFile(file)  
local file = file or ""   if file:match('/') then  infile = {ID= "InputFileLocal", path_  = file}  elseif file:match('^%d+$') then  infile = {ID= "InputFileId", id_ = file}  else  infile = {ID= "InputFilePersistentId", persistent_id_ = file}  end return infile 
end
function sendPhoto(chat_id,reply_id,photo,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessagePhoto",
photo_ = GetInputFile(photo),
added_sticker_file_ids_ = {},
width_ = 0,
height_ = 0,
caption_ = caption or ""
}
},func or dl_cb,nil)
end
	
function sendVoice(chat_id,reply_id,voice,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageVoice",
voice_ = GetInputFile(voice),
duration_ = "",
waveform_ = "",
caption_ = caption or ""
}},func or dl_cb,nil)
end

function sendAnimation(chat_id,reply_id,animation,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageAnimation",
animation_ = GetInputFile(animation),
width_ = 0,
height_ = 0,
caption_ = caption or ""
}},func or dl_cb,nil)
end

function sendAudio(chat_id,reply_id,audio,title,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageAudio",
audio_ = GetInputFile(audio),
duration_ = "",
title_ = title or "",
performer_ = "",
caption_ = caption or ""
}},func or dl_cb,nil)
end

function sendSticker(chat_id,reply_id,sticker,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageSticker",
sticker_ = GetInputFile(sticker),
width_ = 0,
height_ = 0
}},func or dl_cb,nil)
end

function sendVideo(chat_id,reply_id,video,caption,func)
tdcli_function({ 
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 0,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageVideo",  
video_ = GetInputFile(video),
added_sticker_file_ids_ = {},
duration_ = 0,
width_ = 0,
height_ = 0,
caption_ = caption or ""
}},func or dl_cb,nil)
end


function sendDocument(chat_id,reply_id,document,caption,func)
tdcli_function({
ID="SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID="InputMessageDocument",
document_ = GetInputFile(document),
caption_ = caption
}},func or dl_cb,nil)
end
function Kick_Group(chat,user)
tdcli_function ({
ID = "ChangeChatMemberStatus",
chat_id_ = chat,
user_id_ = user,
status_ = {ID = "ChatMemberStatusKicked"},},function(arg,data) end,nil)
end

function Reply_Status(msg,user_id,status,text)
tdcli_function ({ID = "GetUser",user_id_ = user_id},function(arg,data) 
if data.first_name_ ~= false then
local UserName = (data.username_ or "BANDA1M")
for VAMBAIR in string.gmatch(data.first_name_, "[^%s]+") do
data.first_name_ = VAMBAIR
end
local NameUser = "◍ بواسطه - ["..data.first_name_.."](T.me/"..UserName..")"
local NameUserr = "◍ العضو ~ ["..data.first_name_.."](T.me/"..UserName..")"
if status == "lock" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\n◍ خاصية - المسح\n")
return false
end
if status == "lockktm" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\n◍ خاصية - الكتم\n")
return false
end
if status == "lockkick" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\n◍ خاصية - الطرد\n")
return false
end
if status == "lockkid" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text.."\n◍ خاصية - التقييد\n")
return false
end
if status == "unlock" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text)
return false
end
if status == "reply" then
send(msg.chat_id_, msg.id_,NameUserr.."\n"..text)
return false
end
if status == "reply_Add" then
send(msg.chat_id_, msg.id_,NameUser.."\n"..text)
return false
end
else
send(msg.chat_id_, msg.id_,"◍ الحساب محذوف يرجى استخدام الامر بصوره صحيحه")
end
end,nil)   
end -- end
function Total_message(msgs)  
local message = ''  
if tonumber(msgs) < 100 then 
message = 'غير متفاعل' 
elseif tonumber(msgs) < 200 then 
message = 'بده يتحسن' 
elseif tonumber(msgs) < 400 then 
message = 'شبه متفاعل' 
elseif tonumber(msgs) < 700 then 
message = 'متفاعل' 
elseif tonumber(msgs) < 1200 then 
message = 'متفاعل قوي' 
elseif tonumber(msgs) < 2000 then 
message = 'متفاعل جدا' 
elseif tonumber(msgs) < 3500 then 
message = 'اقوى تفاعل'  
elseif tonumber(msgs) < 4000 then 
message = 'متفاعل نار' 
elseif tonumber(msgs) < 4500 then 
message = 'قمة التفاعل' 
elseif tonumber(msgs) < 5500 then 
message = 'اقوى متفاعل' 
elseif tonumber(msgs) < 7000 then 
message = 'ملك التفاعل' 
elseif tonumber(msgs) < 9500 then 
message = 'امبروطور التفاعل' 
elseif tonumber(msgs) < 10000000000 then 
message = 'رب التفاعل'  
end 
return message 
end
function download_to_file(url, file_path) 
local respbody = {} 
local options = { url = url, sink = ltn12.sink.table(respbody), redirect = true } 
local response = nil 
options.redirect = false 
response = {https.request(options)} 
local code = response[2] 
local headers = response[3] 
local status = response[4] 
if code ~= 200 then return false, code 
end 
file = io.open(file_path, "w+") 
file:write(table.concat(respbody)) 
file:close() 
return file_path, code 
end 
function Addjpg(msg,chat,ID_FILE,File_Name)
local File = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..ID_FILE)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..File.result.file_path,File_Name) 
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil,'./'..File_Name,'تم تحويل الملصق الى صوره')     
os.execute('rm -rf ./'..File_Name) 
end
function Addvoi(msg,chat,vi,ty)
local eq = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..vi)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..eq.result.file_path,ty) 
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, './'..ty)   
os.execute('rm -rf ./'..ty) 
end
function Addmp3(msg,chat,kkl,ffrr)
local eer = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..kkl)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..eer.result.file_path,ffrr) 
sendAudio(msg.chat_id_,msg.id_,'./'..ffrr,"🎼┇SOURCE 𝙨𝙤𝙤𝙣")  
os.execute('rm -rf ./'..ffrr) 
end
function Addsticker(msg,chat,Sd,rre)
local Qw = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..Sd)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..Qw.result.file_path,rre) 
sendSticker(msg.chat_id_, msg.id_, 0, 1, nil, './'..rre)
os.execute('rm -rf ./'..rre) 
end
function add_file(msg,chat,ID_FILE,File_Name)
if File_Name:match('.json') then
if tonumber(File_Name:match('(%d+)')) ~= tonumber(bot_id) then 
sendtext(chat,msg.id_,"◍ ملف النسخه الاحتياطيه ليس لهاذا البوت")   
return false 
end      
local File = json:decode(https.request('https://api.telegram.org/bot' .. token .. '/getfile?file_id='..ID_FILE) ) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..File.result.file_path, ''..File_Name) 
send(chat,msg.id_,"◍ جاري ...\n◍ رفع الملف الان")   
else
sendtext(chat,msg.id_,"*◍ عذرا الملف ليس بصيغة {JSON} يرجى رفع الملف الصحيح*")   
end      
local info_file = io.open('./'..bot_id..'.json', "r"):read('*a')
local groups = JSON.decode(info_file)
vardump(groups)  
for idg,v in pairs(groups.GP_BOT) do
database:sadd(bot_id..'VAMBAIR:Chek:Groups',idg) 
database:set(bot_id.."VAMBAIR:Lock:tagservrbot"..idg,true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..'VAMBAIR:'..lock..idg,"del")    
end
if v.MNSH then
for k,idmsh in pairs(v.MNSH) do
database:sadd(bot_id.."VAMBAIR:Constructor"..idg,idmsh)
end;end
if v.MDER then
for k,idmder in pairs(v.MDER) do
database:sadd(bot_id.."VAMBAIR:Manager"..idg,idmder)  
end;end
if v.MOD then
for k,idmod in pairs(v.MOD) do
database:sadd(bot_id.."VAMBAIR:Mod:User"..idg,idmod)  
end;end
if v.ASAS then
for k,idASAS in pairs(v.ASAS) do
database:sadd(bot_id.."VAMBAIR:Basic:Constructor"..idg,idASAS)  
end;end
if v.linkgroup then
if v.linkgroup ~= "" then
database:set(bot_id.."VAMBAIR:Private:Group:Link"..idg,v.linkgroup)   
end;end;end
send(chat,msg.id_,"◍ تم رفع الملف بنجاح وتفعيل المجموعات\n◍ ورفع {الامنشئين الاساسين ; والمنشئين ; والمدراء; والادمنيه} بنجاح")   
end

function Is_Not_Spam(msg,type)
if type == "kick" then 
Reply_Status(msg,msg.sender_user_id_,"reply","◍ قام بالتكرار هنا وتم طرده")  
Kick_Group(msg.chat_id_,msg.sender_user_id_) 
return false  
end 
if type == "del" then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_})    
return false
end 
if type == "keed" then
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") 
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,msg.sender_user_id_) 
Reply_Status(msg,msg.sender_user_id_,"reply","◍ قام بالتكرار هنا وتم تقييده")  
return false  
end  
if type == "mute" then
Reply_Status(msg,msg.sender_user_id_,"reply","◍ قام بالتكرار هنا وتم كتمه")  
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,msg.sender_user_id_) 
return false  
end
end  
function VAMBAIR_Files(msg)
for v in io.popen('ls VAMBAIR_Files'):lines() do
if v:match(".lua$") then
plugin = dofile("VAMBAIR_Files/"..v)
if plugin.VAMBAIR and msg then
pre_msg = plugin.VAMBAIR(msg)
end
end
end
send(msg.chat_id_, msg.id_,pre_msg)  
end
function VAMBAIR_Started_Bot(msg,data) -- بداية العمل
if msg then
local msg = data.message_
local text = msg.content_.text_
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match("-100(%d+)") then
database:incr(bot_id..'VAMBAIR:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) 
Chat_Type = 'GroupBot' 
elseif id:match("^(%d+)") then
database:sadd(bot_id..'VAMBAIR:UsersBot',msg.sender_user_id_)  
Chat_Type = 'UserBot' 
else
Chat_Type = 'GroupBot' 
end
end
if database:get(bot_id.."VAMBAIR:VAMBAIR:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "الغاء" or text == "الغاء ◍" then   
send(msg.chat_id_, msg.id_,"◍ تم الغاء الاذاعه") 
database:del(bot_id.."VAMBAIR:VAMBAIR:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id.."VAMBAIR:Chek:Groups") 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
database:set(bot_id..'VAMBAIR:Msg:Pin:Chat'..v,msg.content_.text_) 
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
database:set(bot_id..'VAMBAIR:Msg:Pin:Chat'..v,photo) 
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or "")) 
database:set(bot_id..'VAMBAIR:Msg:Pin:Chat'..v,msg.content_.animation_.animation_.persistent_id_)
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
database:set(bot_id..'VAMBAIR:Msg:Pin:Chat'..v,msg.content_.sticker_.sticker_.persistent_id_) 
end 
end
send(msg.chat_id_, msg.id_,"◍ تمت الاذاعه الى *~ "..#list.." ~* مجموعه ")     
database:del(bot_id.."VAMBAIR:VAMBAIR:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end


if not Vips(msg) and msg.content_.ID ~= "MessageChatAddMembers" and database:hget(bot_id.."VAMBAIR:flooding:settings:"..msg.chat_id_,"flood") then 
floods = database:hget(bot_id.."VAMBAIR:flooding:settings:"..msg.chat_id_,"flood") or "nil"
Num_Msg_Max = database:hget(bot_id.."VAMBAIR:flooding:settings:"..msg.chat_id_,"floodmax") or 5
Time_Spam = database:hget(bot_id.."VAMBAIR:flooding:settings:"..msg.chat_id_,"floodtime") or 5
local post_count = tonumber(database:get(bot_id.."VAMBAIR:floodc:"..msg.sender_user_id_..":"..msg.chat_id_) or 0)
if post_count > tonumber(database:hget(bot_id.."VAMBAIR:flooding:settings:"..msg.chat_id_,"floodmax") or 5) then 
local ch = msg.chat_id_
local type = database:hget(bot_id.."VAMBAIR:flooding:settings:"..msg.chat_id_,"flood") 
Is_Not_Spam(msg,type)  
end
database:setex(bot_id.."VAMBAIR:floodc:"..msg.sender_user_id_..":"..msg.chat_id_, tonumber(database:hget(bot_id.."VAMBAIR:flooding:settings:"..msg.chat_id_,"floodtime") or 3), post_count+1) 
local edit_id = data.text_ or "nil"  
Num_Msg_Max = 5
if database:hget(bot_id.."VAMBAIR:flooding:settings:"..msg.chat_id_,"floodmax") then
Num_Msg_Max = database:hget(bot_id.."VAMBAIR:flooding:settings:"..msg.chat_id_,"floodmax") 
end
if database:hget(bot_id.."VAMBAIR:flooding:settings:"..msg.chat_id_,"floodtime") then
Time_Spam = database:hget(bot_id.."VAMBAIR:flooding:settings:"..msg.chat_id_,"floodtime") 
end 
end 
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."VAMBAIR:Lock:text"..msg.chat_id_) and not Vips(msg) then       
DeleteMessage(msg.chat_id_,{[0] = msg.id_})   
return false     
end     
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then 
database:incr(bot_id.."VAMBAIR:Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) 
end
if msg.content_.ID == "MessageChatAddMembers" and not Vips(msg) then   
if database:get(bot_id.."VAMBAIR:Lock:AddMempar"..msg.chat_id_) == "kick" then
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
Kick_Group(msg.chat_id_,mem_id[i].id_)
end
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatJoinByLink" and not Vips(msg) then 
if database:get(bot_id.."VAMBAIR:Lock:Join"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
return false  
end
end
if text and database:get(bot_id..'lock:Fshar'..msg.chat_id_) and not Addictive(msg) then 
list = {"كس","كسمك","كسختك","عير","كسخالتك","خرا بالله","عير بالله","كسخواتكم","كحاب","مناويج","مناويج","كحبه","ابن الكحبه","فرخ","فروخ","طيزك","طيزختك"}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
end
if text and database:get(bot_id..'lock:Fars'..msg.chat_id_) and not Addictive(msg) then 
list = {"ڄ","که","پی","خسته","برم","راحتی","بیام","بپوشم","كرمه","چه","چ","ڬ","ٺ","چ","ڇ","ڿ","ڀ","ڎ","ݫ","ژ","ڟ","ݜ","ڸ","پ","۴","زدن","دخترا","دیوث","مک","زدن"}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
end
if msg.content_.ID == 'MessageSticker' and not Owner(msg) then 
local filter = database:smembers(bot_id.."filtersteckr"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.sticker_.set_id_ then
Reply_Status(msg,msg.sender_user_id_,"reply","◍ تم منع الملصق هنا")  
DeleteMessage(msg.chat_id_, {[0] = msg.id_})     
return false   
end
end
end
------------------------------------------------------------------------
if msg.content_.ID == 'MessagePhoto' and not Owner(msg) then 
local filter = database:smembers(bot_id.."filterphoto"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.photo_.id_ then
Reply_Status(msg,msg.sender_user_id_,"reply","◍ تم منع الصوره هنا")  
DeleteMessage(msg.chat_id_, {[0] = msg.id_})     
return false   
end
end
end
------------------------------------------------------------------------
if msg.content_.ID == 'MessageAnimation' and not Owner(msg) then 
local filter = database:smembers(bot_id.."filteranimation"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.animation_.animation_.persistent_id_ then
Reply_Status(msg,msg.sender_user_id_,"reply","◍ تم منع المتحركه هنا")  
DeleteMessage(msg.chat_id_, {[0] = msg.id_})     
return false   
end
end
end

--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("@[%a%d_]+") or msg.content_.caption_:match("@(.+)") then  
if database:get(bot_id.."VAMBAIR:Lock:User:Name"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:User:Name"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:User:Name"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:User:Name"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("@[%a%d_]+") or text and text:match("@(.+)") then    
if database:get(bot_id.."VAMBAIR:Lock:User:Name"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:User:Name"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:User:Name"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:User:Name"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("#[%a%d_]+") or msg.content_.caption_:match("#(.+)") then 
if database:get(bot_id.."VAMBAIR:Lock:hashtak"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:hashtak"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:hashtak"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:hashtak"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("#[%a%d_]+") or text and text:match("#(.+)") then
if database:get(bot_id.."VAMBAIR:Lock:hashtak"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:hashtak"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:hashtak"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:hashtak"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("/[%a%d_]+") or msg.content_.caption_:match("/(.+)") then  
if database:get(bot_id.."VAMBAIR:Lock:Cmd"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Cmd"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Cmd"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Cmd"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("/[%a%d_]+") or text and text:match("/(.+)") then
if database:get(bot_id.."VAMBAIR:Lock:Cmd"..msg.chat_id_) == "del" and not Vips(msg) then    
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Cmd"..msg.chat_id_) == "ked" and not Vips(msg) then    
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Cmd"..msg.chat_id_) == "kick" and not Vips(msg) then    
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Cmd"..msg.chat_id_) == "ktm" and not Vips(msg) then    
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if not Vips(msg) then 
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or msg.content_.caption_:match(".[Pp][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or msg.content_.caption_:match("[Tt].[Mm][Ee]/") then 
if database:get(bot_id.."VAMBAIR:Lock:Link"..msg.chat_id_) == "del" and not Vips(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Link"..msg.chat_id_) == "ked" and not Vips(msg) then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Link"..msg.chat_id_) == "kick" and not Vips(msg) then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Link"..msg.chat_id_) == "ktm" and not Vips(msg) then
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or text and text:match("[Hh][Tt][Tt][Pp][Ss]://") or text and text:match("[Hh][Tt][Tt][Pp]://") or text and text:match("[Ww][Ww][Ww].") or text and text:match(".[Cc][Oo][Mm]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or text and text:match(".[Pp][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or text and text:match("[Tt].[Mm][Ee]/") and not Vips(msg) then
if database:get(bot_id.."VAMBAIR:Lock:Link"..msg.chat_id_) == "del" and not Vips(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Link"..msg.chat_id_) == "ked" and not Vips(msg) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Link"..msg.chat_id_) == "kick" and not Vips(msg) then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Link"..msg.chat_id_) == "ktm" and not Vips(msg) then
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessagePhoto" and not Vips(msg) then     
if database:get(bot_id.."VAMBAIR:Lock:Photo"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Photo"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Photo"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Photo"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageVideo" and not Vips(msg) then     
if database:get(bot_id.."VAMBAIR:Lock:Video"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Video"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Video"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Video"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageAnimation" and not Vips(msg) then     
if database:get(bot_id.."VAMBAIR:Lock:Animation"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Animation"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Animation"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Animation"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.game_ and not Vips(msg) then     
if database:get(bot_id.."VAMBAIR:Lock:geam"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:geam"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:geam"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:geam"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageAudio" and not Vips(msg) then     
if database:get(bot_id.."VAMBAIR:Lock:Audio"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Audio"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Audio"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Audio"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageVoice" and not Vips(msg) then     
if database:get(bot_id.."VAMBAIR:Lock:vico"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:vico"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:vico"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:vico"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" and not Vips(msg) then     
if database:get(bot_id.."VAMBAIR:Lock:Keyboard"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Keyboard"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Keyboard"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Keyboard"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageSticker" and not Vips(msg) then     
if database:get(bot_id.."VAMBAIR:Lock:Sticker"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Sticker"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Sticker"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Sticker"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.forward_info_ and not Vips(msg) then     
if database:get(bot_id.."VAMBAIR:Lock:forward"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."VAMBAIR:Lock:forward"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."VAMBAIR:Lock:forward"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."VAMBAIR:Lock:forward"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageDocument" and not Vips(msg) then     
if database:get(bot_id.."VAMBAIR:Lock:Document"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Document"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Document"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Document"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageUnsupported" and not Vips(msg) then      
if database:get(bot_id.."VAMBAIR:Lock:Unsupported"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Unsupported"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Unsupported"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Unsupported"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.entities_ then 
if msg.content_.entities_[0] then 
if msg.content_.entities_[0] and msg.content_.entities_[0].ID == "MessageEntityUrl" or msg.content_.entities_[0].ID == "MessageEntityTextUrl" then      
if not Vips(msg) then
if database:get(bot_id.."VAMBAIR:Lock:Markdaun"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Markdaun"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Markdaun"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Markdaun"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end  
end 
end
end 

if tonumber(msg.via_bot_user_id_) ~= 0 and not Vips(msg) then
if database:get(bot_id.."VAMBAIR:Lock:Inlen"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Inlen"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Inlen"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Inlen"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end 


--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageContact" and not Vips(msg) then      
if database:get(bot_id.."VAMBAIR:Lock:Contact"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Contact"..msg.chat_id_) == "ked" then
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Contact"..msg.chat_id_) == "kick" then
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Contact"..msg.chat_id_) == "ktm" then
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.text_ and not Vips(msg) then  
local _nl, ctrl_ = string.gsub(text, "%c", "")  
local _nl, real_ = string.gsub(text, "%d", "")   
sens = 400  
if database:get(bot_id.."VAMBAIR:Lock:Spam"..msg.chat_id_) == "del" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Spam"..msg.chat_id_) == "ked" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
RestrictChat(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Spam"..msg.chat_id_) == "kick" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."VAMBAIR:Lock:Spam"..msg.chat_id_) == "ktm" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
local status_welcome = database:get(bot_id.."VAMBAIR:Chek:Welcome"..msg.chat_id_)
if status_welcome and not database:get(bot_id.."VAMBAIR:Lock:tagservr"..msg.chat_id_) then
if msg.content_.ID == "MessageChatJoinByLink" then
tdcli_function({ID = "GetUser",user_id_=msg.sender_user_id_},function(extra,result) 
local GetWelcomeGroup = database:get(bot_id.."VAMBAIR:Get:Welcome:Group"..msg.chat_id_)  
if GetWelcomeGroup then 
t = GetWelcomeGroup
else  
t = "\n• نورت حبي \n•  name \n• user" 
end 
t = t:gsub("name",result.first_name_) 
t = t:gsub("user",("@"..result.username_ or "لا يوجد")) 
send(msg.chat_id_, msg.id_,t)
end,nil) 
end 
end 
-------------------------------------------------------
if msg.content_.ID == "MessagePinMessage" then
if Constructor(msg) or tonumber(msg.sender_user_id_) == tonumber(bot_id) then 
database:set(bot_id.."VAMBAIR:Pin:Id:Msg"..msg.chat_id_,msg.content_.message_id_)
else
local Msg_Pin = database:get(bot_id.."VAMBAIR:Pin:Id:Msg"..msg.chat_id_)
if Msg_Pin and database:get(bot_id.."VAMBAIR:lockpin"..msg.chat_id_) then
PinMessage(msg.chat_id_,Msg_Pin)
end
end
end
------------------------------------------------------
if msg.content_.photo_ then  
if database:get(bot_id.."VAMBAIR:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) then 
if msg.content_.photo_.sizes_[3] then  
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_ 
else 
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_ 
end 
tdcli_function ({ID = "ChangeChatPhoto",chat_id_ = msg.chat_id_,photo_ = getInputFile(photo_id) }, function(arg,data)   
if data.code_ == 3 then
send(msg.chat_id_, msg.id_,"◍ عذرا البوت ليس ادمن يرجى ترقيتي والمحاوله لاحقا") 
database:del(bot_id.."VAMBAIR:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
return false  end
if data.message_ == "CHAT_ADMIN_REQUIRED" then 
send(msg.chat_id_, msg.id_,"◍ ليس لدي صلاحية تغيير معلومات المجموعه يرجى المحاوله لاحقا") 
database:del(bot_id.."VAMBAIR:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
else
send(msg.chat_id_, msg.id_,"◍ تم تغيير صورة المجموعه") 
end
end, nil) 
database:del(bot_id.."VAMBAIR:Change:Chat:Photo"..msg.chat_id_..":"..msg.sender_user_id_) 
end   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."VAMBAIR:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text == "الغاء" then 
send(msg.chat_id_, msg.id_,"◍ تم الغاء وضع الوصف") 
database:del(bot_id.."VAMBAIR:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)
return false  
end 
database:del(bot_id.."VAMBAIR:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
https.request("https://api.telegram.org/bot"..token.."/setChatDescription?chat_id="..msg.chat_id_.."&description="..text) 
send(msg.chat_id_, msg.id_,"◍ تم تغيير وصف المجموعه")   
return false  
end 
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."VAMBAIR:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text == "الغاء" then 
send(msg.chat_id_, msg.id_,"◍ تم الغاء حفظ الترحيب") 
database:del(bot_id.."VAMBAIR:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."VAMBAIR:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
database:set(bot_id.."VAMBAIR:Get:Welcome:Group"..msg.chat_id_,text) 
send(msg.chat_id_, msg.id_,"◍ تم حفظ ترحيب المجموعه")   
return false   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."VAMBAIR:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) then
if text == "الغاء" then
send(msg.chat_id_,msg.id_,"◍ تم الغاء حفظ الرابط")       
database:del(bot_id.."VAMBAIR:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false
end
if text and text:match("(https://telegram.me/joinchat/%S+)") or text and text:match("(https://t.me/joinchat/%S+)") then     
local Link = text:match("(https://telegram.me/joinchat/%S+)") or text:match("(https://t.me/joinchat/%S+)")   
database:set(bot_id.."VAMBAIR:Private:Group:Link"..msg.chat_id_,Link)
send(msg.chat_id_,msg.id_,"◍ تم حفظ الرابط بنجاح")       
database:del(bot_id.."VAMBAIR:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false 
end
end 

if database:get(bot_id.."VAMBAIR:VAMBAIR:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "الغاء" or text == "الغاء ◍" then   
send(msg.chat_id_, msg.id_,"◍ تم الغاء الاذاعه للخاص") 
database:del(bot_id.."VAMBAIR:VAMBAIR:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id..'VAMBAIR:UsersBot')  
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ""))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_,"◍ تمت الاذاعه الى *~ "..#list.." ~* مشترك في الخاص ")     
database:del(bot_id.."VAMBAIR:VAMBAIR:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end

if database:get(bot_id.."VAMBAIR:VAMBAIR:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "الغاء" or text == "الغاء ◍" then   
send(msg.chat_id_, msg.id_,"◍ تم الغاء الاذاعه") 
database:del(bot_id.."VAMBAIR:VAMBAIR:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id.."VAMBAIR:Chek:Groups") 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ""))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_,"◍ تمت الاذاعه الى *~ "..#list.." ~* مجموعه ")     
database:del(bot_id.."VAMBAIR:VAMBAIR:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end

if database:get(bot_id.."VAMBAIR:VAMBAIR:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "الغاء" or text == "الغاء ◍" then   
send(msg.chat_id_, msg.id_,"◍ تم الغاء الاذاعه") 
database:del(bot_id.."VAMBAIR:VAMBAIR:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id.."VAMBAIR:Chek:Groups")   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_,"◍ تمت الاذاعه الى *~ "..#list.." ~* مجموعه ")     
database:del(bot_id.."VAMBAIR:VAMBAIR:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
return false
end
if database:get(bot_id.."VAMBAIR:VAMBAIR:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "الغاء" or text == "الغاء ◍" then   
send(msg.chat_id_, msg.id_,"◍ تم الغاء الاذاعه") 
database:del(bot_id.."VAMBAIR:VAMBAIR:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id.."VAMBAIR:UsersBot")   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_,"◍ تمت الاذاعه الى *~ "..#list.." ~* مشترك في الخاص ")     
database:del(bot_id.."VAMBAIR:VAMBAIR:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
return false
end

--------------------------------------------------------------------------------------------------------------
if text and not Vips(msg) then  
local VAMBAIR_Msg = database:get(bot_id.."VAMBAIR:Add:Filter:Rp2"..text..msg.chat_id_)   
if VAMBAIR_Msg then    
Reply_Status(msg,msg.sender_user_id_,"reply","◍ "..VAMBAIR_Msg)  
DeleteMessage(msg.chat_id_, {[0] = msg.id_})     
return false
end
end
if database:get(bot_id.."VAMBAIR:Set:Name:Bot"..msg.sender_user_id_) then 
if text == "الغاء" or text == "الغاء ◍" then   
send(msg.chat_id_, msg.id_,"◍ تم الغاء حفظ اسم البوت") 
database:del(bot_id.."VAMBAIR:Set:Name:Bot"..msg.sender_user_id_) 
return false  
end 
database:del(bot_id.."VAMBAIR:Set:Name:Bot"..msg.sender_user_id_) 
database:set(bot_id.."VAMBAIR:Name:Bot",text) 
send(msg.chat_id_, msg.id_, "◍ تم حفظ اسم البوت")  
return false
end 
if text and database:get(bot_id.."VAMBAIR:Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
database:set(bot_id.."VAMBAIR:Set:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"◍ ارسل الامر الجديد")  
database:del(bot_id.."VAMBAIR:Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
database:set(bot_id.."VAMBAIR:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_,"true1") 
return false
end
if text and database:get(bot_id.."VAMBAIR:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_) == "true1" then
local NewCmd = database:get(bot_id.."VAMBAIR:Set:Cmd:Group:New"..msg.chat_id_)
database:set(bot_id.."VAMBAIR:Set:Cmd:Group:New1"..msg.chat_id_..":"..text,NewCmd)
database:sadd(bot_id.."VAMBAIR:List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"◍ تم حفظ الامر")  
database:del(bot_id.."VAMBAIR:Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
--------------------------------------------------------------------------------------------------------------
if Chat_Type == 'GroupBot' then
if ChekAdd(msg.chat_id_) == true then
if text == "قفل الدردشه" and msg.reply_to_message_id_ == 0 and Owner(msg) then 
database:set(bot_id.."VAMBAIR:Lock:text"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل الدردشه")  
return false
end 
if text == "قفل الاضافه" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."VAMBAIR:Lock:AddMempar"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل اضافة الاعضاء")  
return false
end 
if text == "قفل الدخول" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."VAMBAIR:Lock:Join"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل دخول الاعضاء")  
return false
end 
if text == "قفل البوتات" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."VAMBAIR:Lock:Bot:kick"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل البوتات")  
return false
end 
if text == "قفل البوتات بالطرد" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id.."VAMBAIR:Lock:Bot:kick"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","◍ تم قفـل البوتات")  
return false
end 
if text == "قفل الاشعارات" and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
database:set(bot_id.."VAMBAIR:Lock:tagservr"..msg.chat_id_,true)  
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل الاشعارات")  
return false
end 
if text == "قفل التثبيت" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."VAMBAIR:lockpin"..msg.chat_id_, true) 
database:sadd(bot_id.."VAMBAIR:Lock:pin",msg.chat_id_) 
tdcli_function ({ ID = "GetChannelFull",  channel_id_ = msg.chat_id_:gsub("-100","") }, function(arg,data)  database:set(bot_id.."VAMBAIR:Pin:Id:Msg"..msg.chat_id_,data.pinned_message_id_)  end,nil)
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل التثبيت هنا")  
return false
end 
if text == "قفل التعديل" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."VAMBAIR:Lock:edit"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل تعديل")  
return false
end 
if text == "قفل تعديل الميديا" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."VAMBAIR:Lock:edit"..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل تعديل")  
return false
end 
if text == "قفل الكل" and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
database:set(bot_id.."VAMBAIR:Lock:tagservrbot"..msg.chat_id_,true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..'VAMBAIR:'..lock..msg.chat_id_,"del")    
end
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل جميع الاوامر")  
return false
end 


--------------------------------------------------------------------------------------------------------------
if text == "فتح الاضافه" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."VAMBAIR:Lock:AddMempar"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فتح اضافة الاعضاء")  
return false
end 
if text == "فتح الدردشه" and msg.reply_to_message_id_ == 0 and Owner(msg) then 
database:del(bot_id.."VAMBAIR:Lock:text"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فتح الدردشه")  
return false
end 
if text == "فتح الدخول" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."VAMBAIR:Lock:Join"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فتح دخول الاعضاء")  
return false
end 
if text == "فتح البوتات" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."VAMBAIR:Lock:Bot:kick"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فـتح البوتات")  
return false
end 
if text == "فتح البوتات " and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."VAMBAIR:Lock:Bot:kick"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍\n◍ تم فـتح البوتات")  
return false
end 
if text == "فتح الاشعارات" and msg.reply_to_message_id_ == 0 and Addictive(msg) then  
database:del(bot_id.."VAMBAIR:Lock:tagservr"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فـتح الاشعارات")  
return false
end 
if text == "فتح التثبيت" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."VAMBAIR:lockpin"..msg.chat_id_)  
database:srem(bot_id.."VAMBAIR:Lock:pin",msg.chat_id_)
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فـتح التثبيت هنا")  
return false
end 
if text == "فتح التعديل" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."VAMBAIR:Lock:edit"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فـتح تعديل")  
return false
end 
if text == "فتح التعديل الميديا" and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."VAMBAIR:Lock:edit"..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فـتح تعديل")  
return false
end 
if text == "فتح الكل" and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id.."VAMBAIR:Lock:tagservrbot"..msg.chat_id_)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:del(bot_id..'VAMBAIR:'..lock..msg.chat_id_)    
end
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فـتح جميع الاوامر")  
return false
end 
--------------------------------------------------------------------------------------------------------------
if text == "قفل الروابط" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Link"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل الروابط")  
return false
end 
if text == "قفل الروابط بالتقييد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Link"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","◍ تم قفـل الروابط")  
return false
end 
if text == "قفل الروابط بالكتم" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Link"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","◍ تم قفـل الروابط")  
return false
end 
if text == "قفل الروابط بالطرد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Link"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","◍ تم قفـل الروابط")  
return false
end 
if text == "فتح الروابط" and Addictive(msg) then
database:del(bot_id.."VAMBAIR:Lock:Link"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فتح الروابط")  
return false
end 
if text == "قفل المعرفات" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:User:Name"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل المعرفات")  
return false
end 
if text == "قفل المعرفات بالتقييد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:User:Name"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","◍ تم قفـل المعرفات")  
return false
end 
if text == "قفل المعرفات بالكتم" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:User:Name"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","◍ تم قفـل المعرفات")  
return false
end 
if text == "قفل المعرفات بالطرد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:User:Name"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","◍ تم قفـل المعرفات")  
return false
end 
if text == "فتح المعرفات" and Addictive(msg) then
database:del(bot_id.."VAMBAIR:Lock:User:Name"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فتح المعرفات")  
return false
end 
if text == "قفل التاك" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:hashtak"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل التاك")  
return false
end 
if text == "قفل التاك بالتقييد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:hashtak"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","◍ تم قفـل التاك")  
return false
end 
if text == "قفل التاك بالكتم" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:hashtak"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","◍ تم قفـل التاك")  
return false
end 
if text == "قفل التاك بالطرد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:hashtak"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","◍ تم قفـل التاك")  
return false
end 
if text == "فتح التاك" and Addictive(msg) then
database:del(bot_id.."VAMBAIR:Lock:hashtak"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فتح التاك")  
return false
end 
if text == "قفل الشارحه" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Cmd"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل الشارحه")  
return false
end 
if text == "قفل الشارحه بالتقييد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Cmd"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","◍ تم قفـل الشارحه")  
return false
end 
if text == "قفل الشارحه بالكتم" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Cmd"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","◍ تم قفـل الشارحه")  
return false
end 
if text == "قفل الشارحه بالطرد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Cmd"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","◍ تم قفـل الشارحه")  
return false
end 
if text == "فتح الشارحه" and Addictive(msg) then
database:del(bot_id.."VAMBAIR:Lock:Cmd"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فتح الشارحه")  
return false
end 
if text == 'قفل السب' and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id..'lock:Fshar'..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل السب")  
end
if text == 'قفل الفارسيه' and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:set(bot_id..'lock:Fars'..msg.chat_id_,true) 
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل الفارسيه")  
end
if text == 'فتح السب' and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id..'lock:Fshar'..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تـم فـتح السب\n")  
end
if text == 'فتح الفارسيه' and msg.reply_to_message_id_ == 0 and Addictive(msg) then 
database:del(bot_id..'lock:Fars'..msg.chat_id_) 
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تـم فـتح الفارسيه\n")  
end
if text == "قفل الصور"and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Photo"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل الصور")  
return false
end 
if text == "قفل الصور بالتقييد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Photo"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","◍ تم قفـل الصور")  
return false
end 
if text == "قفل الصور بالكتم" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Photo"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","◍ تم قفـل الصور")  
return false
end 
if text == "قفل الصور بالطرد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Photo"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","◍ تم قفـل الصور")  
return false
end 
if text == "فتح الصور" and Addictive(msg) then
database:del(bot_id.."VAMBAIR:Lock:Photo"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فتح الصور")  
return false
end 
if text == "قفل الفيديو" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Video"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل الفيديو")  
return false
end 
if text == "قفل الفيديو بالتقييد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Video"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","◍ تم قفـل الفيديو")  
return false
end 
if text == "قفل الفيديو بالكتم" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Video"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","◍ تم قفـل الفيديو")  
return false
end 
if text == "قفل الفيديو بالطرد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Video"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","◍ تم قفـل الفيديو")  
return false
end 
if text == "فتح الفيديو" and Addictive(msg) then
database:del(bot_id.."VAMBAIR:Lock:Video"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فتح الفيديو")  
return false
end 
if text == "قفل المتحركه" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Animation"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل المتحركه")  
return false
end 
if text == "قفل المتحركه بالتقييد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Animation"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","◍ تم قفـل المتحركه")  
return false
end 
if text == "قفل المتحركه بالكتم" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Animation"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","◍ تم قفـل المتحركه")  
return false
end 
if text == "قفل المتحركه بالطرد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Animation"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","◍ تم قفـل المتحركه")  
return false
end 
if text == "فتح المتحركه" and Addictive(msg) then
database:del(bot_id.."VAMBAIR:Lock:Animation"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فتح المتحركه")  
return false
end 
if text == "قفل الالعاب" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:geam"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل الالعاب")  
return false
end 
if text == "قفل الالعاب بالتقييد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:geam"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","◍ تم قفـل الالعاب")  
return false
end 
if text == "قفل الالعاب بالكتم" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:geam"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","◍ تم قفـل الالعاب")  
return false
end 
if text == "قفل الالعاب بالطرد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:geam"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","◍ تم قفـل الالعاب")  
return false
end 
if text == "فتح الالعاب" and Addictive(msg) then
database:del(bot_id.."VAMBAIR:Lock:geam"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فتح الالعاب")  
return false
end 
if text == "قفل الاغاني" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Audio"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل الاغاني")  
return false
end 
if text == "قفل الاغاني بالتقييد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Audio"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","◍ تم قفـل الاغاني")  
return false
end 
if text == "قفل الاغاني بالكتم" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Audio"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","◍ تم قفـل الاغاني")  
return false
end 
if text == "قفل الاغاني بالطرد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Audio"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","◍ تم قفـل الاغاني")  
return false
end 
if text == "فتح الاغاني" and Addictive(msg) then
database:del(bot_id.."VAMBAIR:Lock:Audio"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فتح الاغاني")  
return false
end 
if text == "قفل الصوت" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:vico"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل الصوت")  
return false
end 
if text == "قفل الصوت بالتقييد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:vico"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","◍ تم قفـل الصوت")  
return false
end 
if text == "قفل الصوت بالكتم" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:vico"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","◍ تم قفـل الصوت")  
return false
end 
if text == "قفل الصوت بالطرد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:vico"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","◍ تم قفـل الصوت")  
return false
end 
if text == "فتح الصوت" and Addictive(msg) then
database:del(bot_id.."VAMBAIR:Lock:vico"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فتح الصوت")  
return false
end 
if text == "قفل الكيبورد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Keyboard"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل الكيبورد")  
return false
end 
if text == "قفل الكيبورد بالتقييد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Keyboard"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","◍ تم قفـل الكيبورد")  
return false
end 
if text == "قفل الكيبورد بالكتم" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Keyboard"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","◍ تم قفـل الكيبورد")  
return false
end 
if text == "قفل الكيبورد بالطرد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Keyboard"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","◍ تم قفـل الكيبورد")  
return false
end 
if text == "فتح الكيبورد" and Addictive(msg) then
database:del(bot_id.."VAMBAIR:Lock:Keyboard"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فتح الكيبورد")  
return false
end 
if text == "قفل الملصقات" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Sticker"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل الملصقات")  
return false
end 
if text == "قفل الملصقات بالتقييد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Sticker"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","◍ تم قفـل الملصقات")  
return false
end 
if text == "قفل الملصقات بالكتم" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Sticker"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","◍ تم قفـل الملصقات")  
return false
end 
if text == "قفل الملصقات بالطرد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Sticker"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","◍ تم قفـل الملصقات")  
return false
end 
if text == "فتح الملصقات" and Addictive(msg) then
database:del(bot_id.."VAMBAIR:Lock:Sticker"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فتح الملصقات")  
return false
end 
if text == "قفل التوجيه" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:forward"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل التوجيه")  
return false
end 
if text == "قفل التوجيه بالتقييد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:forward"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","◍ تم قفـل التوجيه")  
return false
end 
if text == "قفل التوجيه بالكتم" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:forward"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","◍ تم قفـل التوجيه")  
return false
end 
if text == "قفل التوجيه بالطرد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:forward"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","◍ تم قفـل التوجيه")  
return false
end 
if text == "فتح التوجيه" and Addictive(msg) then
database:del(bot_id.."VAMBAIR:Lock:forward"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فتح التوجيه")  
return false
end 
if text == "قفل الملفات" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Document"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل الملفات")  
return false
end 
if text == "قفل الملفات بالتقييد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Document"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","◍ تم قفـل الملفات")  
return false
end 
if text == "قفل الملفات بالكتم" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Document"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","◍ تم قفـل الملفات")  
return false
end 
if text == "قفل الملفات بالطرد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Document"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","◍ تم قفـل الملفات")  
return false
end 
if text == "فتح الملفات" and Addictive(msg) then
database:del(bot_id.."VAMBAIR:Lock:Document"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فتح الملفات")  
return false
end 
if text == "قفل السيلفي" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Unsupported"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل السيلفي")  
return false
end 
if text == "قفل السيلفي بالتقييد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Unsupported"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","◍ تم قفـل السيلفي")  
return false
end 
if text == "قفل السيلفي بالكتم" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Unsupported"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","◍ تم قفـل السيلفي")  
return false
end 
if text == "قفل السيلفي بالطرد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Unsupported"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","◍ تم قفـل السيلفي")  
return false
end 
if text == "فتح السيلفي" and Addictive(msg) then
database:del(bot_id.."VAMBAIR:Lock:Unsupported"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فتح السيلفي")  
return false
end 
if text == "قفل الماركداون" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Markdaun"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل الماركداون")  
return false
end 
if text == "قفل الماركداون بالتقييد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Markdaun"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","◍ تم قفـل الماركداون")  
return false
end 
if text == "قفل الماركداون بالكتم" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Markdaun"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","◍ تم قفـل الماركداون")  
return false
end 
if text == "قفل الماركداون بالطرد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Markdaun"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","◍ تم قفـل الماركداون")  
return false
end 
if text == "فتح الماركداون" and Addictive(msg) then
database:del(bot_id.."VAMBAIR:Lock:Markdaun"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فتح الماركداون")  
return false
end 
if text == "قفل الجهات" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Contact"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل الجهات")  
return false
end 
if text == "قفل الجهات بالتقييد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Contact"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","◍ تم قفـل الجهات")  
return false
end 
if text == "قفل الجهات بالكتم" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Contact"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","◍ تم قفـل الجهات")  
return false
end 
if text == "قفل الجهات بالطرد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Contact"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","◍ تم قفـل الجهات")  
return false
end 
if text == "فتح الجهات" and Addictive(msg) then
database:del(bot_id.."VAMBAIR:Lock:Contact"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فتح الجهات")  
return false
end 
if text == "قفل الكلايش" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Spam"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل الكلايش")  
return false
end 
if text == "قفل الكلايش بالتقييد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Spam"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","◍ تم قفـل الكلايش")  
return false
end 
if text == "قفل الكلايش بالكتم" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Spam"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","◍ تم قفـل الكلايش")  
return false
end 
if text == "قفل الكلايش بالطرد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Spam"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","◍ تم قفـل الكلايش")  
return false
end 
if text == "فتح الكلايش" and Addictive(msg) then
database:del(bot_id.."VAMBAIR:Lock:Spam"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فتح الكلايش")  
return false
end 
if text == "قفل الانلاين" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Inlen"..msg.chat_id_,"del")  
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفـل الانلاين")  
return false
end 
if text == "قفل الانلاين بالتقييد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Inlen"..msg.chat_id_,"ked")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","◍ تم قفـل الانلاين")  
return false
end 
if text == "قفل الانلاين بالكتم" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Inlen"..msg.chat_id_,"ktm")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","◍ تم قفـل الانلاين")  
return false
end 
if text == "قفل الانلاين بالطرد" and Addictive(msg) then
database:set(bot_id.."VAMBAIR:Lock:Inlen"..msg.chat_id_,"kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","◍ تم قفـل الانلاين")  
return false
end 
if text == "فتح الانلاين" and Addictive(msg) then
database:del(bot_id.."VAMBAIR:Lock:Inlen"..msg.chat_id_)  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فتح الانلاين")  
return false
end 
if text == "قفل التكرار بالطرد" and Addictive(msg) then 
database:hset(bot_id.."VAMBAIR:flooding:settings:"..msg.chat_id_ ,"flood","kick")  
Reply_Status(msg,msg.sender_user_id_,"lockkick","◍ تم قفل التكرار")
return false
end 
if text == "قفل التكرار" and Addictive(msg) then 
database:hset(bot_id.."VAMBAIR:flooding:settings:"..msg.chat_id_ ,"flood","del")  
Reply_Status(msg,msg.sender_user_id_,"lock","◍ تم قفل التكرار بالحذف")
return false
end 
if text == "قفل التكرار بالتقييد" and Addictive(msg) then 
database:hset(bot_id.."VAMBAIR:flooding:settings:"..msg.chat_id_ ,"flood","keed")  
Reply_Status(msg,msg.sender_user_id_,"lockkid","◍ تم قفل التكرار")
return false
end 
if text == "قفل التكرار بالكتم" and Addictive(msg) then 
database:hset(bot_id.."VAMBAIR:flooding:settings:"..msg.chat_id_ ,"flood","mute")  
Reply_Status(msg,msg.sender_user_id_,"lockktm","◍ تم قفل التكرار")
return false
end 
if text == "فتح التكرار" and Addictive(msg) then 
database:hdel(bot_id.."VAMBAIR:flooding:settings:"..msg.chat_id_ ,"flood")  
Reply_Status(msg,msg.sender_user_id_,"unlock","◍ تم فتح التكرار")
return false
end 

if text == ("مسح قائمه العام") and DevVAMBAIR(msg) then
database:del(bot_id.."VAMBAIR:GBan:User")
send(msg.chat_id_, msg.id_, "\n◍ تم مسح قائمه العام")
return false
end
if text == ("مسح المطورين") and DevVAMBAIR(msg) then
database:del(bot_id.."VAMBAIR:Sudo:User")
send(msg.chat_id_, msg.id_, "\n◍ تم مسح قائمة المطورين  ")
end
if text == "مسح المنشئين الاساسين" and DevBot(msg) then
database:del(bot_id.."VAMBAIR:Basic:Constructor"..msg.chat_id_)
texts = "◍ تم مسح المنشئين الاساسيين"
send(msg.chat_id_, msg.id_, texts)
end
if text == "مسح المنشئين" and BasicConstructor(msg) then
database:del(bot_id.."VAMBAIR:Constructor"..msg.chat_id_)
texts = "◍ تم مسح المنشئين "
send(msg.chat_id_, msg.id_, texts)
end
if text == "مسح المدراء" and Constructor(msg) then
database:del(bot_id.."VAMBAIR:Manager"..msg.chat_id_)
texts = "◍ تم مسح المدراء "
send(msg.chat_id_, msg.id_, texts)
end
if text == "مسح الادمنيه" and Owner(msg) then
database:del(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "◍ تم مسح  قائمة الادمنية  ")
end
if text == "مسح المميزين" and Addictive(msg) then
database:del(bot_id.."VAMBAIR:Special:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "◍ تم مسح  قائمة الاعضاء المميزين  ")
end
if text == "مسح المكتومين" and Addictive(msg) then
database:del(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "◍ تم مسح قائمه المكتومين ")
end
if text == "مسح المحظورين" and Addictive(msg) then
database:del(bot_id.."VAMBAIR:Ban:User"..msg.chat_id_)
send(msg.chat_id_, msg.id_, "\n◍ تم مسح المحظورين")
end
if text == ("قائمه العام") and DevVAMBAIR(msg) then
local list = database:smembers(bot_id.."VAMBAIR:GBan:User")
t = "\n◍ قائمة المحظورين عام \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "◍ لا يوجد محظورين عام"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("المطورين") and DevVAMBAIR(msg) then
local list = database:smembers(bot_id.."VAMBAIR:Sudo:User")
t = "\n◍ قائمة مطورين البوت \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "◍ لا يوجد مطورين"
end
send(msg.chat_id_, msg.id_, t)
end
if text == "المنشئين الاساسين" and DevBot(msg) then
local list = database:smembers(bot_id.."VAMBAIR:Basic:Constructor"..msg.chat_id_)
t = "\n◍ قائمة المنشئين الاساسين \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "◍ لا يوجد منشئين اساسيين"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("المنشئين") and BasicConstructor(msg) then
local list = database:smembers(bot_id.."VAMBAIR:Constructor"..msg.chat_id_)
t = "\n◍ قائمة المنشئين \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "◍ لا يوجد منشئين"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("المدراء") and Constructor(msg) then
local list = database:smembers(bot_id.."VAMBAIR:Manager"..msg.chat_id_)
t = "\n◍ قائمة المدراء \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "◍ لا يوجد مدراء"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("الادمنيه") and Owner(msg) then
local list = database:smembers(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_)
t = "\n◍ قائمة الادمنيه \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "◍ لا يوجد ادمنيه"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("المميزين") and Addictive(msg) then
local list = database:smembers(bot_id.."VAMBAIR:Special:User"..msg.chat_id_)
t = "\n◍ قائمة مميزين المجموعه \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "◍ لا يوجد مميزين"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("المكتومين") and Addictive(msg) then
local list = database:smembers(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_)
t = "\n◍ قائمة المكتومين \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "◍ لا يوجد مكتومين"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("المحظورين") and Addictive(msg) then
local list = database:smembers(bot_id.."VAMBAIR:Ban:User"..msg.chat_id_)
t = "\n◍ قائمة محظورين المجموعه \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "◍ لا يوجد محظورين"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("حظر عام") and tonumber(msg.reply_to_message_id_) ~= 0 and DevBOYKAW(msg) then
function Function_VAMBAIR(extra, result, success)
if result.sender_user_id_ == tonumber(SUDO) then
send(msg.chat_id_, msg.id_, "◍ لا يمكنك حظر المطور الاساسي \n")
return false
end
if result.sender_user_id_ == tonumber(1183747742) then
send(msg.chat_id_, msg.id_, "◍ لا يمكنك حظر المبرمج مصطفي \n")
return false 
end
if result.sender_user_id_ == tonumber(1635597460) then
send(msg.chat_id_, msg.id_, "◍ لا يمكنك حظر المطور المبرمج اشرف  \n")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, "◍ لا تسطيع حظر البوت عام")
return false 
end
database:sadd(bot_id.."VAMBAIR:GBan:User", result.sender_user_id_)
Kick_Group(result.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم حظره عام من المجموعات")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
return false
end
if text == ("حظر عام") and tonumber(msg.reply_to_message_id_) ~= 0 and not DevBOYKAW(msg) then
send(msg.chat_id_,msg.id_,"انت لست المطور الاساسي او المطور الثانوي")
return false
end
if text and text:match("^حظر عام @(.*)$")  and DevBOYKAW(msg) then
local username = text:match("^حظر عام @(.*)$") 
function Function_VAMBAIR(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"◍ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, "◍ لا تسطيع حظر البوت عام")
return false 
end
if result.id_ == tonumber(SUDO) then
send(msg.chat_id_, msg.id_, "◍ لا يمكنك حظر المطور الاساسي \n")
return false 
end
if result.id_ == tonumber(1183747742) then
send(msg.chat_id_, msg.id_, "◍ لا يمكنك حظر المبرمج مصطفي \n")
return false 
end
if result.id_ == tonumber(1635597460) then
send(msg.chat_id_, msg.id_, "◍ لا يمكنك حظر المطور المبرمج اشرف  \n")
return false 
end
database:sadd(bot_id.."VAMBAIR:GBan:User", result.id_)
Reply_Status(msg,result.id_,"reply","◍ تم حظره عام من المجموعات")  
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
return false
end
if text and text:match("^حظر عام @(.*)$")  and not DevBOYKAW(msg) then
send(msg.chat_id_,msg.id_,"انت لست المطور الاساسي او المطور الثانوي")
return false
end
if text and text:match("^حظر عام (%d+)$") and DevBOYKAW(msg) then
local userid = text:match("^حظر عام (%d+)$")
if userid == tonumber(SUDO) then
send(msg.chat_id_, msg.id_, "◍ لا يمكنك حظر المطور الاساسي \n")
return false 
end
if userid == tonumber(1183747742) then
send(msg.chat_id_, msg.id_, "◍ لا يمكنك حظر المبرمج مصطفي \n")
return false 
end
if userid == tonumber(1635597460) then
send(msg.chat_id_, msg.id_, "◍ لا يمكنك حظر المبرمج اشرف  \n")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, "◍ لا تسطيع حظر البوت عام")
return false 
end
database:sadd(bot_id.."VAMBAIR:GBan:User", userid)
Reply_Status(msg,userid,"reply","◍ تم حظره عام من المجموعات")  
return false
end
if text and text:match("^حظر عام (%d+)$") and not DevBOYKAW(msg) then
send(msg.chat_id_,msg.id_,"انت لست المطور الاساسي او المطور الثانوي")
return false
end
if text == ("الغاء العام") and tonumber(msg.reply_to_message_id_) ~= 0 and DevBOYKAW(msg) then
function Function_VAMBAIR(extra, result, success)
database:srem(bot_id.."VAMBAIR:GBan:User", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم الغاء حظره عام من المجموعات")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
return false
end
if text == ("الغاء العام") and tonumber(msg.reply_to_message_id_) ~= 0 and not DevBOYKAW(msg) then
send(msg.chat_id_,msg.id_,"انت لست المطور الاساسي او المطور الثانوي")
return false
end
if text and text:match("^الغاء العام @(.*)$") and DevBOYKAW(msg) then
local username = text:match("^الغاء العام @(.*)$") 
function Function_VAMBAIR(extra, result, success)
if result.id_ then
Reply_Status(msg,result.id_,"reply","◍ تم الغاء حظره عام من المجموعات")  
database:srem(bot_id.."VAMBAIR:GBan:User", result.id_)
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
return false
end
if text and text:match("^الغاء العام @(.*)$") and not DevBOYKAW(msg) then
send(msg.chat_id_,msg.id_,"انت لست المطور الاساسي او المطور الثانوي")
return false
end
if text and text:match("^الغاء العام (%d+)$") and DevBOYKAW(msg) then
local userid = text:match("^الغاء العام (%d+)$")
database:srem(bot_id.."VAMBAIR:GBan:User", userid)
Reply_Status(msg,userid,"reply","◍ تم الغاء حظره عام من المجموعات")  
return false
end
if text and text:match("^الغاء العام (%d+)$") and not DevBOYKAW(msg) then
send(msg.chat_id_,msg.id_,"انت لست المطور الاساسي او المطور الثانوي")
return false
end
if text == ("رفع مطور") and tonumber(msg.reply_to_message_id_) ~= 0 and DevBOYKAW(msg) then
function Function_VAMBAIR(extra, result, success)
database:sadd(bot_id.."VAMBAIR:Sudo:User", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم ترقيته مطور في البوت")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
return false 
end
if text == ("رفع مطور") and tonumber(msg.reply_to_message_id_) ~= 0 and not DevBOYKAW(msg) then
send(msg.chat_id_,msg.id_,"انت لست المطور الاساسي او المطور الثانوي")
return false
end
if text and text:match("^رفع مطور @(.*)$") and DevBOYKAW(msg) then
local username = text:match("^رفع مطور @(.*)$")
function Function_VAMBAIR(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"◍ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
database:sadd(bot_id.."VAMBAIR:Sudo:User", result.id_)
Reply_Status(msg,result.id_,"reply","◍ تم ترقيته مطور في البوت")  
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
return false 
end
if text and text:match("^رفع مطور @(.*)$") and not DevBOYKAW(msg) then
send(msg.chat_id_,msg.id_,"انت لست المطور الاساسي او المطور الثانوي")
return false
end
if text and text:match("^رفع مطور (%d+)$") and DevBOYKAW(msg) then
local userid = text:match("^رفع مطور (%d+)$")
database:sadd(bot_id.."VAMBAIR:Sudo:User", userid)
Reply_Status(msg,userid,"reply","◍ تم ترقيته مطور في البوت")  
return false 
end
if text and text:match("^رفع مطور (%d+)$") and not DevBOYKAW(msg) then
send(msg.chat_id_,msg.id_,"انت لست المطور الاساسي او المطور الثانوي")
return false
end
if text == ("تنزيل مطور") and tonumber(msg.reply_to_message_id_) ~= 0 and DevBOYKAW(msg) then
function Function_VAMBAIR(extra, result, success)
database:srem(bot_id.."VAMBAIR:Sudo:User", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم تنزيله من المطورين")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
return false 
end
if text == ("تنزيل مطور") and tonumber(msg.reply_to_message_id_) ~= 0 and not DevBOYKAW(msg) then
send(msg.chat_id_,msg.id_,"انت لست المطور الاساسي او المطور الثانوي")
return false
end
if text and text:match("^تنزيل مطور @(.*)$") and DevBOYKAW(msg) then
local username = text:match("^تنزيل مطور @(.*)$")
function Function_VAMBAIR(extra, result, success)
if result.id_ then
database:srem(bot_id.."VAMBAIR:Sudo:User", result.id_)
Reply_Status(msg,result.id_,"reply","◍ تم تنزيله من المطورين")  
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
return false
end  
if text and text:match("^تنزيل مطور @(.*)$") and not DevBOYKAW(msg) then
send(msg.chat_id_,msg.id_,"انت لست المطور الاساسي او المطور الثانوي")
return false
end
if text and text:match("^تنزيل مطور (%d+)$") and DevBOYKAW(msg) then
local userid = text:match("^تنزيل مطور (%d+)$")
database:srem(bot_id.."VAMBAIR:Sudo:User", userid)
Reply_Status(msg,userid,"reply","◍ تم تنزيله من المطورين")  
return false 
end
if text and text:match("^تنزيل مطور (%d+)$") and not DevBOYKAW(msg) then
send(msg.chat_id_,msg.id_,"انت لست المطور الاساسي او المطور الثانوي")
return false
end
if text == ("رفع منشئ اساسي") and tonumber(msg.reply_to_message_id_) ~= 0 and not DevBot(msg) then 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
function Function_VAMBAIR(extra, result, success)
database:sadd(bot_id.."VAMBAIR:Basic:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم ترقيته منشئ اساسي")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
return false
end
end,nil)   
end
if text == ("رفع منشئ اساسي") and tonumber(msg.reply_to_message_id_) ~= 0 and not DevBot(msg) then 
send(msg.chat_id_, msg.id_,"هذا الامر لرتبه المطور ")
return false
end
if text and text:match("^رفع منشئ اساسي @(.*)$") and not DevBot(msg) then 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
local username = text:match("^رفع منشئ اساسي @(.*)$")
function Function_VAMBAIR(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"◍ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
database:sadd(bot_id.."VAMBAIR:Basic:Constructor"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","◍ تم ترقيته منشئ اساسي")  
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
return false
end
end,nil)   
end
if text and text:match("^رفع منشئ اساسي (%d+)$") and not DevBot(msg) then 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
local userid = text:match("^رفع منشئ اساسي (%d+)$") 
database:sadd(bot_id.."VAMBAIR:Basic:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","◍ تم ترقيته منشئ اساسي")  
return false
end
end,nil)   
end
if text == ("تنزيل منشئ اساسي") and tonumber(msg.reply_to_message_id_) ~= 0 and not DevBot(msg) then 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
function Function_VAMBAIR(extra, result, success)
database:srem(bot_id.."VAMBAIR:Basic:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم تنزيله من المنشئين")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
return false
end
end,nil)   
end
if text and text:match("^تنزيل منشئ اساسي @(.*)$") and not DevBot(msg) then 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
local username = text:match("^تنزيل منشئ اساسي @(.*)$")
function Function_VAMBAIR(extra, result, success)
if result.id_ then
database:srem(bot_id.."VAMBAIR:Basic:Constructor"..msg.chat_id_, result.id_)

Reply_Status(msg,result.id_,"reply","◍ تم تنزيله من المنشئين")  
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
return false
end
end,nil)   
end
if text and text:match("^تنزيل منشئ اساسي (%d+)$") and not DevBot(msg) then 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
local userid = text:match("^تنزيل منشئ اساسي (%d+)$") 
database:srem(bot_id.."VAMBAIR:Basic:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","◍ تم تنزيله من المنشئين")  
return false
end
end,nil)   
end

if text == ("رفع منشئ اساسي") and tonumber(msg.reply_to_message_id_) ~= 0 and DevBot(msg) then 
function Function_VAMBAIR(extra, result, success)
database:sadd(bot_id.."VAMBAIR:Basic:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم ترقيته منشئ اساسي")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
return false
end
if text and text:match("^رفع منشئ اساسي @(.*)$") and DevBot(msg) then 
local username = text:match("^رفع منشئ اساسي @(.*)$")
function Function_VAMBAIR(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"◍ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
database:sadd(bot_id.."VAMBAIR:Basic:Constructor"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","◍ تم ترقيته منشئ اساسي")  
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
return false
end
if text and text:match("^رفع منشئ اساسي (%d+)$") and DevBot(msg) then 
local userid = text:match("^رفع منشئ اساسي (%d+)$") 
database:sadd(bot_id.."VAMBAIR:Basic:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","◍ تم ترقيته منشئ اساسي")  
return false
end
if text == ("تنزيل منشئ اساسي") and tonumber(msg.reply_to_message_id_) ~= 0 and DevBot(msg) then 
function Function_VAMBAIR(extra, result, success)
database:srem(bot_id.."VAMBAIR:Basic:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم تنزيله من المنشئين")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
return false
end
if text and text:match("^تنزيل منشئ اساسي @(.*)$") and DevBot(msg) then 
local username = text:match("^تنزيل منشئ اساسي @(.*)$")
function Function_VAMBAIR(extra, result, success)
if result.id_ then
database:srem(bot_id.."VAMBAIR:Basic:Constructor"..msg.chat_id_, result.id_)

Reply_Status(msg,result.id_,"reply","◍ تم تنزيله من المنشئين")  
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
return false
end
if text and text:match("^تنزيل منشئ اساسي (%d+)$") and DevBot(msg) then 
local userid = text:match("^تنزيل منشئ اساسي (%d+)$") 
database:srem(bot_id.."VAMBAIR:Basic:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","◍ تم تنزيله من المنشئين")  
return false
end

if text == "رفع منشئ" and tonumber(msg.reply_to_message_id_) ~= 0 and BasicConstructor(msg) then 
function Function_VAMBAIR(extra, result, success)
database:sadd(bot_id.."VAMBAIR:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم ترقيته منشئ في المجموعه")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
end
if text and text:match("^رفع منشئ @(.*)$") and BasicConstructor(msg) then 
local username = text:match("^رفع منشئ @(.*)$")
function Function_VAMBAIR(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"◍ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
database:sadd(bot_id.."VAMBAIR:Constructor"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","◍ تم ترقيته منشئ في المجموعه")  
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
end
------------------------------------------------------------------------
if text and text:match("^رفع منشئ (%d+)$") and BasicConstructor(msg) then 
local userid = text:match("^رفع منشئ (%d+)$")
database:sadd(bot_id.."VAMBAIR:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","◍ تم ترقيته منشئ في المجموعه")  
end
if text and text:match("^تنزيل منشئ$") and tonumber(msg.reply_to_message_id_) ~= 0 and BasicConstructor(msg) then
function Function_VAMBAIR(extra, result, success)
database:srem(bot_id.."VAMBAIR:Constructor"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم تنزيله من المنشئين")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
end
------------------------------------------------------------------------
if text and text:match("^تنزيل منشئ @(.*)$") and BasicConstructor(msg) then 
local username = text:match("^تنزيل منشئ @(.*)$")
function Function_VAMBAIR(extra, result, success)
if result.id_ then
database:srem(bot_id.."VAMBAIR:Constructor"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","◍ تم تنزيله من المنشئين")  
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
end
------------------------------------------------------------------------
if text and text:match("^تنزيل منشئ (%d+)$") and BasicConstructor(msg) then 
local userid = text:match("^تنزيل منشئ (%d+)$")
database:srem(bot_id.."VAMBAIR:Constructor"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","◍ تم تنزيله من المنشئين")  
end

if text == ("رفع مدير") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructor(msg) then 
function Function_VAMBAIR(extra, result, success)
database:sadd(bot_id.."VAMBAIR:Manager"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم ترقيته مدير المجموعه")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
return false
end  
if text and text == "مسح الميديا" and Constructor(msg) then   
idmsgg = {[0]=msg.id_}
local Message = msg.id_
for i=1,100 do
Message = Message - 1048576
idmsgg[i] = Message
end
tdcli_function({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = idmsgg},function(arg,data)
new = 0
idmsgg2 = {}
for i=0 ,data.total_count_ do
if data.messages_[i] and data.messages_[i].content_ and data.messages_[i].content_.ID ~= "MessageText" then
idmsgg2[new] = data.messages_[i].id_
new = new + 1
end
end
DeleteMessage(msg.chat_id_,idmsgg2)
end,nil)  
send(msg.chat_id_, msg.id_,"◍ تم ازالة 100 من وسائط ") 
end
if text and text:match("^رفع مدير @(.*)$") and Constructor(msg) then 
local username = text:match("^رفع مدير @(.*)$") 
function Function_VAMBAIR(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"◍ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
database:sadd(bot_id.."VAMBAIR:Manager"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","◍ تم ترقيته مدير المجموعه")  
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
return false
end 

if text and text:match("^رفع مدير (%d+)$") and Constructor(msg) then 
local userid = text:match("^رفع مدير (%d+)$") 
database:sadd(bot_id.."VAMBAIR:Manager"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","◍ تم ترقيته مدير المجموعه")  
return false
end  
if text == ("تنزيل مدير") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructor(msg) then 
function Function_VAMBAIR(extra, result, success)
database:srem(bot_id.."VAMBAIR:Manager"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم تنزيله من المدراء")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
return false
end  
if text and text:match("^تنزيل مدير @(.*)$") and Constructor(msg) then 
local username = text:match("^تنزيل مدير @(.*)$")
function Function_VAMBAIR(extra, result, success)
if result.id_ then
database:srem(bot_id.."VAMBAIR:Manager"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","◍ تم تنزيله من المدراء")  
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
return false
end  
if text and text:match("^تنزيل مدير (%d+)$") and Constructor(msg) then 
local userid = text:match("^تنزيل مدير (%d+)$") 
database:srem(bot_id.."VAMBAIR:Manager"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","◍ تم تنزيله من المدراء")  
return false
end

if text == ("رفع ادمن") and tonumber(msg.reply_to_message_id_) ~= 0 and Owner(msg) then 
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'◍ لا تستطيع رفع احد وذالك لان تم تعطيل الرفع من قبل المنشئين')
return false
end
function Function_VAMBAIR(extra, result, success)
database:sadd(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم ترقيته ادمن للمجموعه")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
return false
end
if text and text:match("^رفع ادمن @(.*)$") and Owner(msg) then 
local username = text:match("^رفع ادمن @(.*)$")
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'◍ لا تستطيع رفع احد وذالك لان تم تعطيل الرفع من قبل المنشئين')
return false
end
function Function_VAMBAIR(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"◍ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
database:sadd(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","◍ تم ترقيته ادمن للمجموعه")  
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
return false
end
if text and text:match("^رفع ادمن (%d+)$") and Owner(msg) then 
local userid = text:match("^رفع ادمن (%d+)$")
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'◍ لا تستطيع رفع احد وذالك لان تم تعطيل الرفع من قبل المنشئين')
return false
end
database:sadd(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","◍ تم ترقيته ادمن للمجموعه")  
return false
end
if text == ("تنزيل ادمن") and tonumber(msg.reply_to_message_id_) ~= 0 and Owner(msg) then 
function Function_VAMBAIR(extra, result, success)
database:srem(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم تنزيله من ادمنيه المجموعه")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
return false
end
if text and text:match("^تنزيل ادمن @(.*)$") and Owner(msg) then 
local username = text:match("^تنزيل ادمن @(.*)$") 
function Function_VAMBAIR(extra, result, success)
if result.id_ then
database:srem(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","◍ تم تنزيله من ادمنيه المجموعه")  
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
return false
end
if text and text:match("^تنزيل ادمن (%d+)$") and Owner(msg) then 
local userid = text:match("^تنزيل ادمن (%d+)$")
database:srem(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","◍ تم تنزيله من ادمنيه المجموعه")  
return false
end

if text == ("رفع مميز") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then 
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'◍ لا تستطيع رفع احد وذالك لان تم تعطيل الرفع من قبل المنشئين')
return false
end
function Function_VAMBAIR(extra, result, success)
database:sadd(bot_id.."VAMBAIR:Special:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم ترقيته مميز للمجموعه")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
return false
end
if text and text:match("^رفع مميز @(.*)$") and Addictive(msg) then 
local username = text:match("^رفع مميز @(.*)$") 
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'◍ لا تستطيع رفع احد وذالك لان تم تعطيل الرفع من قبل المنشئين')
return false
end
function Function_VAMBAIR(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"◍ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
database:sadd(bot_id.."VAMBAIR:Special:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","◍ تم ترقيته مميز للمجموعه")  
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
return false
end

if text and text:match("^رفع مميز (%d+)$") and Addictive(msg) then 
local userid = text:match("^رفع مميز (%d+)$")
if not Constructor(msg) and database:get(bot_id.."Add:Group:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'◍ لا تستطيع رفع احد وذالك لان تم تعطيل الرفع من قبل المنشئين')
return false
end
database:sadd(bot_id.."VAMBAIR:Special:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","◍ تم ترقيته مميز للمجموعه")  
return false
end

if (text == ("تنزيل مميز")) and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then 
function Function_VAMBAIR(extra, result, success)
database:srem(bot_id.."VAMBAIR:Special:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم تنزيله من المميزين")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
return false
end
if text and text:match("^تنزيل مميز @(.*)$") and Addictive(msg) then 
local username = text:match("^تنزيل مميز @(.*)$") 
function Function_VAMBAIR(extra, result, success)
if result.id_ then
database:srem(bot_id.."VAMBAIR:Special:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","◍ تم تنزيله من المميزين")  
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
return false
end
if text and text:match("^تنزيل مميز (%d+)$") and Addictive(msg) then 
local userid = text:match("^تنزيل مميز (%d+)$") 
database:srem(bot_id.."VAMBAIR:Special:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","◍ تم تنزيله من المميزين")  
return false
end  
-------------
if text == 'تفعيل التحويل' and Addictive(msg) then   
if database:get(bot_id..'DRAGOON:change:sofi'..msg.chat_id_) then
Text = 'تم تفعيل تحويل الصيغ'
database:del(bot_id..'DRAGOON:change:sofi'..msg.chat_id_)  
else
Text = ' ◍ بالتاكيد تم تفعيل امر تحويل'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل التحويل' and Addictive(msg) then  
if not database:get(bot_id..'DRAGOON:change:sofi'..msg.chat_id_) then
database:set(bot_id..'DRAGOON:change:sofi'..msg.chat_id_,true)  
Text = '\n ◍ تم تعطيل امر تحويل'
else
Text = '\n ◍ بالتاكيد تم تعطيل امر تحويل'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تحويل' and not database:get(bot_id..'DRAGOON:change:sofi'..msg.chat_id_) then  
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.photo_ then 
local pn = result.content_.photo_.sizes_[1].photo_.persistent_id_
Addsticker(msg,msg.chat_id_,pn,msg.sender_user_id_..'.png')
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == 'تحويل' and not database:get(bot_id..'DRAGOON:change:sofi'..msg.chat_id_) then  
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.voice_ then 
local mr = result.content_.voice_.voice_.persistent_id_ 
Addmp3(msg,msg.chat_id_,mr,msg.sender_user_id_..'.mp3')
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == 'تحويل' and not database:get(bot_id..'DRAGOON:change:sofi'..msg.chat_id_) then  
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.audio_ then 
local mr = result.content_.audio_.audio_.persistent_id_
Addvoi(msg,msg.chat_id_,mr,msg.sender_user_id_..'.ogg')
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == 'تحويل' and not database:get(bot_id..'DRAGOON:change:sofi'..msg.chat_id_) then  
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.sticker_ then 
local Str = result.content_.sticker_.sticker_.persistent_id_ 
Addjpg(msg,msg.chat_id_,Str,msg.sender_user_id_..'.jpg')
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
-------اوامر التسليه-----
if text == 'مسح المتوحدين' and Addictive(msg) then
database:del(bot_id..'mtoahd:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ◍ تم مسح جميع الين')
end
---------------اوامر التسليه-------
if text == ("تاك للمتوحدين") or text == ("تاك للمتوحدين") and Addictive(msg) then
local list = database:smembers(bot_id..'mtoahd:User'..msg.chat_id_)
t = "\n ◍ قائمة متوحدين الجروب \n©≈≈≈≈≈©≈≈≈≈≈©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."» المتوحد [@"..username.."]\n"
else
t = t..""..k.."» المتوحد `"..v.."`\n"
end
end
if #list == 0 then
t = " ◍ لا يوجد متوحدين"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("رفع متوحد") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then
function start_function(extra, result, success)
database:sadd(bot_id..'mtoahd:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفعه متوحد بنجاح
◍ اضافته الي قائمه المتوحدين..😹💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل متوحد")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'mtoahd:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل المتوحد بنجاح
◍ دلوقت هو اهبل مش متوحد..😂💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == 'مسح الوتكات' and Addictive(msg) then
database:del(bot_id..'wtka:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ◍ تم مسح جميع الوتكات')
end

if text == ("تاك للوتكات") or text == ("تاك للوتكات") and Addictive(msg) then
local list = database:smembers(bot_id..'wtka:User'..msg.chat_id_)
t = "\n ◍ قائمة وتكات الجروب \n©≈≈≈≈≈©≈≈≈≈≈©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."» الوتكه [@"..username.."]\n"
else
t = t..""..k.."» الوتكه `"..v.."`\n"
end
end
if #list == 0 then
t = " ◍ لا يوجد وتكات"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("رفع وتكه") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'wtka:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفعها وتكه بنجاح
◍ اصبحت الان وتكتك
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل وتكه")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'wtka:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل العضو وتكه بنجاح
◍ مش بقيت وتكه بقيت جربوعه..😂💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

-------

if text == 'مسح الخولات' and Addictive(msg) then
database:del(bot_id..'khhl:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ◍ تم مسح جميع الخولات')
end

if text == ("تاك للخولات") or text == ("تاك للخولات") and Addictive(msg) then
local list = database:smembers(bot_id..'khhl:User'..msg.chat_id_)
t = "\n ◍ قائمة خولات الجروب \n©≈≈≈≈≈©≈≈≈≈≈©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."» الخول [@"..username.."]\n"
else
t = t..""..k.."» الخول `"..v.."`\n"
end
end
if #list == 0 then
t = " ◍ لا يوجد خولات"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("رفع خول") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'khhl:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع الخول بنجاح
◍ اصبح الان خول كبير..😹💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل خول")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'khhl:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل الخول بنجاح
◍ الان هو مش خول ..😹💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

-------

if text == 'مسح الاكساس' and Addictive(msg) then
database:del(bot_id..'kooss:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ◍ تم مسح جميع الاكساس')
end

if text == ("تاك للاكساس") or text == ("تاك للاكساس") and Addictive(msg) then
local list = database:smembers(bot_id..'kooss:User'..msg.chat_id_)
t = "\n ◍ قائمة اكساس الجروب \n©≈≈≈≈≈©≈≈≈≈≈©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."» الكس [@"..username.."]\n"
else
t = t..""..k.."» الكس `"..v.."`\n"
end
end
if #list == 0 then
t = " ◍ لا يوجد اكساس"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("رفع كس") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'kooss:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع كس بنجاح
◍ الان هو في قائمه المكسكسين..😹💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل كس")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'kooss:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل العضو كس بنجاح
◍ الان هو خارج قائمه المكسكسين..😹💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

-------

if text == 'مسح المتخزوقين' and Addictive(msg) then
database:del(bot_id..'mkhzz:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ◍ تم مسح جميع المتخزوقين')
end

if text == ("تاك للمتخزوقين") or text == ("تاك للمتخزوقين") and Addictive(msg) then
local list = database:smembers(bot_id..'mkhzz:User'..msg.chat_id_)
t = "\n ◍ قائمة متخزوقين الجروب \n©≈≈≈≈≈©≈≈≈≈≈©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."» المتخزوق [@"..username.."]\n"
else
t = t..""..k.."» المتخزوق `"..v.."`\n"
end
end
if #list == 0 then
t = " ◍ لا يوجد متخزوقين"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("رفع متخزوق") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'mkhzz:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفعه متخزوق بنجاح
◍ تعيش وتاخد غيرها يارحي..😂💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل متخزوق")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'mkhzz:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل العضو متخزوق بنجاح
◍ الف سلامه عليك..😹💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

-------

if text == 'مسح الحكاكين' and Addictive(msg) then
database:del(bot_id..'hkkaa:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ◍ تم مسح جميع الحكاكين')
end

if text == ("تاك للحكاكين") or text == ("تاك للحكاكين") and Addictive(msg) then
local list = database:smembers(bot_id..'hkkaa:User'..msg.chat_id_)
t = "\n ◍ قائمة حكاكين الجروب \n©≈≈≈≈≈©≈≈≈≈≈©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."» الحكاك [@"..username.."]\n"
else
t = t..""..k.."» الحكاك `"..v.."`\n"
end
end
if #list == 0 then
t = " ◍ لا يوجد حكاكين"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("رفع حكاك") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'hkkaa:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفعه حكاك بنجاح
◍ الحكاك اهو الحكاك اهو..😂💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل حكاك")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'hkkaa:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل الحكاك بنجاح
◍ عقل وبقي بيخش خاص دلوقت..😹💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

-------

if text == 'مسح العرر' and Addictive(msg) then
database:del(bot_id..'erraa:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ◍ تم مسح جميع العرر')
end

if text == ("تاك للعرر") or text == ("تاك للعرر") and Addictive(msg) then
local list = database:smembers(bot_id..'erraa:User'..msg.chat_id_)
t = "\n ◍ قائمة عرر الجروب \n©≈≈≈≈≈©≈≈≈≈≈©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."» العره [@"..username.."]\n"
else
t = t..""..k.."» العرر `"..v.."`\n"
end
end
if #list == 0 then
t = " ◍ لا يوجد عرر"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("رفع عره") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'erraa:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع عره بنجاح
◍ يلا يعره اخرج منجروب..😹💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل عره")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'erraa:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[


◍ تم تنزيل العضو عره بنجاح
◍ خصاره تنزلو العره ده والله..😹💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

-------

if text == 'مسح الخنازير' and Addictive(msg) then
database:del(bot_id..'khnnzr:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ◍ تم مسح جميع الخنازير')
end

if text == ("تاك للخنازير") or text == ("تاك للخنازير") and Addictive(msg) then
local list = database:smembers(bot_id..'khnnzr:User'..msg.chat_id_)
t = "\n ◍ قائمة خنازير الجروب \n©≈≈≈≈≈©≈≈≈≈≈©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."» الخنزير [@"..username.."]\n"
else
t = t..""..k.."» الخنزير `"..v.."`\n"
end
end
if #list == 0 then
t = " ◍ لا يوجد خنازير"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("رفع خنزير") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'khnnzr:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع خنزير بنجاح
◍ يلا نعر ياخنزير يامنتن..😹💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل خنزير")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'khnnzr:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل الخنزير بنجاح
◍ الان اصبح مش خنزير..😹💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

-------

if text == 'مسح الاغبياء' and Addictive(msg) then
database:del(bot_id..'ghabi:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ◍ تم مسح جميع الاغبياء')
end

if text == ("تاك للاغبياء") or text == ("تاك للاغبياء") and Addictive(msg) then
local list = database:smembers(bot_id..'ghabi:User'..msg.chat_id_)
t = "\n ◍ قائمة اغبياء الجروب \n©≈≈≈≈≈©≈≈≈≈≈©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."» الغبي [@"..username.."]\n"
else
t = t..""..k.."» الغبي `"..v.."`\n"
end
end
if #list == 0 then
t = " ◍ لا يوجد اغبياء"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("رفع غبي") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'ghabi:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع الغبي بنجاح
◍ تم اضافته الي قائمه الاغبياء..💘😹
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل غبي")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'ghabi:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل الغبي بنجاح
◍ الان اصبح اذكي اخواته..😹💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end


-------

if text == 'مسح الفرسات' and Addictive(msg) then
database:del(bot_id..'frrsw:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ◍ تم مسح جميع الفرسات')
end

if text == ("تاك للفرسات") or text == ("تاك للفرسات") and Addictive(msg) then
local list = database:smembers(bot_id..'frrsw:User'..msg.chat_id_)
t = "\n ◍ قائمة فرسات الجروب \n©≈≈≈≈≈©≈≈≈≈≈©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."» الفرسه [@"..username.."]\n"
else
t = t..""..k.."» الفرسه `"..v.."`\n"
end
end
if #list == 0 then
t = " ◍ لا يوجد فرسات"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("رفع فرسه") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'frrsw:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع فرسه بنجاح
◍ تع اركبلك السرج يرحي..😹💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل فرسه")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'frrsw:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل العضو فرسه بنجاح
◍ اخلع السرج يروحي..😹💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

-------

if text == 'مسح المزز' and Addictive(msg) then
database:del(bot_id..'mozza:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ◍ تم مسح جميع المزز')
end

if text == ("تاك للمزز") or text == ("تاك للمزز") and Addictive(msg) then
local list = database:smembers(bot_id..'mozza:User'..msg.chat_id_)
t = "\n ◍ قائمة مزز الجروب \n©≈≈≈≈≈©≈≈≈≈≈©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."» المزه [@"..username.."]\n"
else
t = t..""..k.."» المزه `"..v.."`\n"
end
end
if #list == 0 then
t = " ◍ لا يوجد مزز"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("رفع مزه") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'mozza:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع مزه بنجاح
◍ الان هي مزتك اتفضل بوسها..😹💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل مزه")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'mozza:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل العضو مزه بنجاح
◍ هي صدقت نفسها ولا اي..😹💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

-------

if text == 'مسح الكلاب' and Addictive(msg) then
database:del(bot_id..' dog:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ◍ تم مسح جميع الكلاب')
end

if text == ("تاك للكلاب") or text == ("تاك للكلاب") and Addictive(msg) then
local list = database:smembers(bot_id..' dog:User'..msg.chat_id_)
t = "\n ◍ قائمة كلاب الجروب \n©≈≈≈≈≈©≈≈≈≈≈©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."» الكلب [@"..username.."]\n"
else
t = t..""..k.."» الكلب`"..v.."`\n"
end
end
if #list == 0 then
t = " ◍ لا يوجد كلاب"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("رفع كلب") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..' dog:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع الكلب بنجاح
◍ تم اضافته الي قائمه الكلاب..😹💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل كلب")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..' dog:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل الكلب بنجاح
◍ تمت ازالته من قائمه الكلاب..😹💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

------

if text == 'مسح الحمير' and Addictive(msg) then
database:del(bot_id..' 7omar:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ◍ تم مسح جميع الحمير')
end

if text == ("تاك للحمير") or text == ("تاك للحمير") and Addictive(msg) then
local list = database:smembers(bot_id..' 7omar:User'..msg.chat_id_)
t = "\n ◍ قائمة حمير الجروب \n©≈≈≈≈≈©≈≈≈≈≈©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."» الحمار [@"..username.."]\n"
else
t = t..""..k.."» الحمار`"..v.."`\n"
end
end
if #list == 0 then
t = " ◍ لا يوجد حمير"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("رفع حمار") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..' 7omar:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع الحمار بنجاح
◍ تمت اضافته الي قائمه الحمير..😹💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل حمار")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..' 7omar:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل الحمار بنجاح
◍ تمت ازالته من قائمه الحمير ..😹💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

-------

if text == 'مسح الزوجات' and Addictive(msg) then
database:del(bot_id..'zoga:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ◍ تم مسح جميع الزوجات')
end

if text == ("تاك للزوجات") or text == ("تاك للزوجات") and Addictive(msg) then
local list = database:smembers(bot_id..'zoga:User'..msg.chat_id_)
t = "\n ◍ قائمة زوجات الجروب \n©≈≈≈≈≈©≈≈≈≈≈©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."» الزوجه [@"..username.."]\n"
else
t = t..""..k.."» الزوجه`"..v.."`\n"
end
end
if #list == 0 then
t = " ◍ لا يوجد زوجات"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("رفع زوجتي") or text == ("زواج") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'zoga:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع العضو زوجتك بنجاح
◍ وسوف يبدا النكد الان..😹💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل زوجتي")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'zoga:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل العضو زوجتك بنجاح
◍ طلقها عشان مش بيعرف..😹💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

-------

if text == 'مسح الخونه' and Addictive(msg) then
database:del(bot_id..'wahidaa:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ◍ تم مسح جميع المتوحدات')
end

if text == ("تاك للخونه") or text == ("تاك للخاين") and Addictive(msg) then
local list = database:smembers(bot_id..'wahidaa:User'..msg.chat_id_)
t = "\n ◍ قائمة متوحدات الجروب \n©≈≈≈≈≈©≈≈≈≈≈©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."» الخاين [@"..username.."]\n"
else
t = t..""..k.."» الخاين`"..v.."`\n"
end
end
if #list == 0 then
t = " ◍ لا يوجد خونه"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("رفع خاين") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'wahidaa:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع الخاين بنجاح
◍ الان اصبح خاين وقليل اصل
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل خاين")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'wahidaa:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل العضو خاين بنجاح
◍ خد بالك هيخونك تاني..😹💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

-------

if text == 'مسح اللي بقلبي' and Addictive(msg) then
database:del(bot_id..' alby:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ◍ تم مسح جميع اللي بقلبك')
end

if text == ("تاك للي بقلبي") or text == ("تاك للي بقلبي") and Addictive(msg) then
local list = database:smembers(bot_id..' alby:User'..msg.chat_id_)
t = "\n ◍ قائمة قلوب الجروب \n©≈≈≈≈≈©≈≈≈≈≈©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."» القلب [@"..username.."]\n"
else
t = t..""..k.."» القلب`"..v.."`\n"
end
end
if #list == 0 then
t = " ◍ لا يوجد حد بقلبك"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("رفع بقلبي") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..' alby:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع العضو داخل قلبك بنجاح
◍ تمت الترقيه بنجاح..😹💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل من قلبي")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..' alby:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل العضو من قلبك
◍ بقيت مجروح بق وكده..😹💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

--------

if text == 'مسح المطلقات' and Addictive(msg) then
database:del(bot_id..'tlaa2:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ◍ تم مسح جميع المطلقات')
end

if text == ("تاك للمطلقات") or text == ("تاك للمطلقات") and Addictive(msg) then
local list = database:smembers(bot_id..'tlaa2:User'..msg.chat_id_)
t = "\n ◍ قائمة مطلقات الجروب \n©≈≈≈≈≈©≈≈≈≈≈©\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."» المطلقه [@"..username.."]\n"
else
t = t..""..k.."» المطلقه`"..v.."`\n"
end
end
if #list == 0 then
t = " ◍ لا يوجد مطلقات"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("رفع مطلقه") or text == ("طلاق") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم طلاق الخاينه بنجاح
◍ خليها زي الكلبه كده..😹💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل مطلقه")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيلها من قائمه المطلقات
◍ جوزها رضي عنها الحمدلله..😹💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if text == ("رفع شاذ") or text == ("رفع شاذه") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع العضو شاذ بنجاح
◍ محدش يقرب من الشاذ ده..😹💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل شاذ")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل العضو شاذ بنجاح
◍ بقي مش شاذ الحمدلله..😹💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("رفع علق") or text == ("رفع علء") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع العضو علق بنجاح
◍ تمت اضافته لقائمه العلوق..💘😹
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل علق")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل العضو علق بنجاح
◍ بقي مش علق دلوقت..😹💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("رفع خطبتي") or text == ("خطبه") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع العضو خطيبتك بنجاح
◍ ربنا يتمم بخير سمو ابنكم العزايزي..😹💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل خطيبتي")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل العضو خطيبتك بنجاح
◍ والسبب مجهول حتي الان..😹💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("رفع مراتي") or text == ("رفع حبيبي") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع العضو مراتك بنجاح
◍ اتفضل خدها خاص وبوسها..😹💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل مراتي")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل العضو مراتك بنجاح
◍ وهذا بسبب انه مبيعرفش..😹💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("رفع عبيط") or text == ("رفع عبيط") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع العضو عبيط بنجاح
◍ الان اصبح عبوطه كبير..😹💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل عبيط")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو » ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل العضو عبيط بنجاح
◍ عقل دلوقت وبقي اهطل..😹💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("رفع ارمله") or text == ("رفع ارملة") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع العضو اومله بنجاح
◍ مكنش يومك يحزينه..😹💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل ارمله")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل العضو ارمله
◍ اتجوزت تاني ونسيت العشره.💘😂
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("رفع علي زبي") or text == ("رفع علي بتاعي") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع العضو علي زبك
◍ لف يخول عشان يعمل واحد..😂💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل من علي زبي")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل العضو من ع بتاعك
◍ ومش هننسي نك متناك ..😂💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("رفع متناك") or text == ("رفع طيز") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع المتناك الطيز
◍ خدو كيفو علي النوته ..😂💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل متناك")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل العضو المتناك
◍ بس هو مازال بيتناك..😂💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("رفع رقاصه") or text == ("رفع رقاصة") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع الرقاصه بنجاح
◍ النقطه بالدولارات هنا..😂💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل رقاصه")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل العضو رقاصه بنجاح
◍ تابت والرقص فدمها..😂💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("رفع حيوان") or text == ("رفع حيوانه") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع الحيوان بنجاح
◍ يلا ياحيوان ع جنينه الحيونات..😂💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل حيوان")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل العضو الحيوان بنجاح
◍ مبقيش حيوان الحمدلله...😂💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("رفع فاشل") or text == ("رفع فاشله") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع الفاشل بنجاح
◍ تعاله يفاشل كده كده هتسقط..😂💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل فاشل")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل الفاشل بنجاح
◍ الان هو دحيح كبير..😂💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("رفع كلب تحفيل") or text == ("رفع محفلاتي") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع كلب التحفيل بنجاح
◍ ده ميستهلش نرد عليه عشان كلب التحفيل عمره مهيبقي راجل سلملي ع الكبورد..😂💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل كلب تحفيل")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل كلب التحفيل
◍ الان هو كلب بلدي..😂💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("رفع ابني") or text == ("رفع ولدي") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع العضو  ابن بنت بنتي 
◍ تعالي يابني هاتلنا شاي ام حسن ..😂💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل ابني")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل ابنك بنجاح
◍ مبقتش حامل خلاص كده..💘😂
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("رفع دكري") or text == ("رفع ابو عيالي") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع العضو  دكري وابو عيالي 
◍ يلا تعالى يادكري حمزه بينادي..😂💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل دكري")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل دكرك بنجاح
◍ الان هو نتايه كبيره..😂💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("رقع قطتي") or text == ("رفع بسبس") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع العضو  قطتي ونن عنيا 
◍ يلا تعالى ياقطتي نشتري تونه ..🥺💘
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل قطتك")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل العضو قطتك
◍ الان اصبحت كلبه بلدي..😂💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("رفع بنتي") or text == ("رفع بنوتي") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع العضو  بنتي ورحي
◍ تع يبنتي شوفي بابا عاوز اي..🥺♥️
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل بنتي")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تمت عمليه التسقيط..😂💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("رفع خاينه") or text == ("رفع خاينة") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع العضو  الخاينه بنجاح 
◍ تعالي ياخاينه فضحتينا ولميتي علينا الناس
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل خاينه")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ لا يمكنك تنزيل الخاين
◍ لانه هتفضل كده دايما..😑💔
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("رفع فلات") or text == ("رفع فلاة") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع العضو فلات هو الان جسمو 
◍ معضم ويقرف 😖😹
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل فلات")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل العضو فلات
◍ الان هي كيرفي..😂💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == ("رفع كيرفي") or text == ("رفع كرفي") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then


function start_function(extra, result, success)
database:sadd(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
local Text = [[

◍ تم رفع العضو كيرفي 
◍ الان هو جسمو صاروخ 🤤😹 
☆
]] 
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل كيرفي")) and msg.reply_to_message_id_ and Addictive(msg) then
function start_function(extra, result, success)
database:srem(bot_id..'tlaa2:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n ◍ العضو ← ['..data.first_name_..'](t.me/'..(data.username_ or 'BANDA1M')..')'
Text = [[

◍ تم تنزيل العضو كيرفي
◍ الان هي بقت فلات..😂💘
☆
]]
send(msg.chat_id_, msg.id_, usertext..Text)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
-------------
if text and text:match("رفع (.*)") and tonumber(msg.reply_to_message_id_) > 0 and Addictive(msg) then 
local RTPA = text:match("رفع (.*)")
if database:sismember(bot_id.."VAMBAIR:Coomds"..msg.chat_id_,RTPA) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local VAMBAIRrt = database:get(bot_id.."VAMBAIR:Comd:New:rt:bot:"..RTPA..msg.chat_id_)
if VAMBAIRrt == "مميز" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\n◍ العضو » ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\n◍ تم رفعه "..RTPA.." هنا\n")   
database:set(bot_id.."VAMBAIR:Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,RTPA) 
database:sadd(bot_id.."VAMBAIR:Special:User"..msg.chat_id_,result.sender_user_id_)  
elseif VAMBAIRrt == "ادمن" and Owner(msg) then 
send(msg.chat_id_, msg.id_,"\n◍ العضو » ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\n◍ تم رفعه "..RTPA.." هنا\n")   
database:set(bot_id.."VAMBAIR:Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,RTPA)
database:sadd(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_,result.sender_user_id_)  
elseif VAMBAIRrt == "مدير" and Constructor(msg) then
send(msg.chat_id_, msg.id_,"\n◍ العضو » ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\n◍ تم رفعه "..RTPA.." هنا\n")   
database:set(bot_id.."VAMBAIR:Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,RTPA)  
database:sadd(bot_id.."VAMBAIR:Manager"..msg.chat_id_,result.sender_user_id_)  
elseif VAMBAIRrt == "عضو" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\n◍ العضو » ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\n◍ تم رفعه "..RTPA.." هنا\n")   
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match("تنزيل (.*)") and tonumber(msg.reply_to_message_id_) > 0 and Addictive(msg) then 
local RTPA = text:match("تنزيل (.*)")
if database:sismember(bot_id.."VAMBAIR:Coomds"..msg.chat_id_,RTPA) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local VAMBAIRrt = database:get(bot_id.."VAMBAIR:Comd:New:rt:bot:"..RTPA..msg.chat_id_)
if VAMBAIRrt == "مميز" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\n◍ العضو » ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\n◍ تم تنزيله من "..RTPA.." هنا\n")   
database:srem(bot_id.."VAMBAIR:Special:User"..msg.chat_id_,result.sender_user_id_)  
database:del(bot_id.."VAMBAIR:Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif VAMBAIRrt == "ادمن" and Owner(msg) then 
send(msg.chat_id_, msg.id_,"\n◍ العضو » ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\n◍ تم تنزيله من "..RTPA.." هنا\n")   
database:srem(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_,result.sender_user_id_) 
database:del(bot_id.."VAMBAIR:Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif VAMBAIRrt == "مدير" and Constructor(msg) then
send(msg.chat_id_, msg.id_,"\n◍ العضو » ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\n◍ تم تنزيله من "..RTPA.." هنا\n")   
database:srem(bot_id.."VAMBAIR:Manager"..msg.chat_id_,result.sender_user_id_)  
database:del(bot_id.."VAMBAIR:Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif VAMBAIRrt == "عضو" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\n◍ العضو » ["..data.first_name_.."](t.me/"..(data.username_ or "BOBBW")..")".."\n◍ تم تنزيله من "..RTPA.." هنا\n")   
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match("^رفع (.*) @(.*)") and Addictive(msg) then 
local text1 = {string.match(text, "^(رفع) (.*) @(.*)$")}
if database:sismember(bot_id.."VAMBAIR:Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local VAMBAIRrt = database:get(bot_id.."VAMBAIR:Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if VAMBAIRrt == "مميز" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\n◍ العضو » ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\n◍ تم رفعه "..text1[2].." هنا")   
database:sadd(bot_id.."VAMBAIR:Special:User"..msg.chat_id_,result.id_)  
database:set(bot_id.."VAMBAIR:Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif VAMBAIRrt == "ادمن" and Owner(msg) then 
send(msg.chat_id_, msg.id_,"\n◍ العضو » ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\n◍ تم رفعه "..text1[2].." هنا")   
database:sadd(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_,result.id_)  
database:set(bot_id.."VAMBAIR:Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif VAMBAIRrt == "مدير" and Constructor(msg) then
send(msg.chat_id_, msg.id_,"\n◍ العضو » ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\n◍ تم رفعه "..text1[2].." هنا")   
database:sadd(bot_id.."VAMBAIR:Manager"..msg.chat_id_,result.id_)  
database:set(bot_id.."VAMBAIR:Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif VAMBAIRrt == "عضو" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\n◍ العضو » ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\n◍ تم رفعه "..text1[2].." هنا")   
end
else
info = "◍ المعرف غلط"
send(msg.chat_id_, msg.id_,info)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end 
end
if text and text:match("^تنزيل (.*) @(.*)") and Addictive(msg) then 
local text1 = {string.match(text, "^(تنزيل) (.*) @(.*)$")}
if database:sismember(bot_id.."VAMBAIR:Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local VAMBAIRrt = database:get(bot_id.."VAMBAIR:Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if VAMBAIRrt == "مميز" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\n◍ العضو » ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\n◍ تم تنريله من "..text1[2].." هنا")   
database:srem(bot_id.."VAMBAIR:Special:User"..msg.chat_id_,result.id_)  
database:del(bot_id.."VAMBAIR:Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif VAMBAIRrt == "ادمن" and Owner(msg) then 
send(msg.chat_id_, msg.id_,"\n◍ العضو » ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\n◍ تم تنريله من "..text1[2].." هنا")   
database:srem(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_,result.id_)  
database:del(bot_id.."VAMBAIR:Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif VAMBAIRrt == "مدير" and Constructor(msg) then
send(msg.chat_id_, msg.id_,"\n◍ العضو » ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\n◍ تم تنريله من "..text1[2].." هنا")   
database:srem(bot_id.."VAMBAIR:Manager"..msg.chat_id_,result.id_)  
database:del(bot_id.."VAMBAIR:Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif VAMBAIRrt == "عضو" and Addictive(msg) then
send(msg.chat_id_, msg.id_,"\n◍ العضو » ["..result.title_.."](t.me/"..(text1[3] or "BOBBW")..")".."\n◍ تم تنريله من "..text1[2].." هنا")   
end
else
info = "◍ المعرف غلط"
send(msg.chat_id_, msg.id_,info)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end  
end

if text == ("حظر") and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'◍ لقد تم تعطيل الحظر و الطرد من قبل المنشئين')
return false
end
function Function_VAMBAIR(extra, result, success)
if Rank_Checking(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n◍ عذرا لا تستطيع طرد او حظر او كتم او تقييد ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"◍ ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"◍ البوت ليس ادمن يرجى ترقيتي !") 
return false  
end
database:sadd(bot_id.."VAMBAIR:Ban:User"..msg.chat_id_, result.sender_user_id_)
Kick_Group(result.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم حظره من المجموعه","reply_Add")  
end,nil)   
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
return false
end
if text == ("حظر") and msg.reply_to_message_id_ ~= 0 and not Addictive(msg) then
send(msg.chat_id_, msg.id_,"ليس لديك رتبه")
return false
end
if text and text:match("^حظر @(.*)$") and Addictive(msg) then
local username = text:match("^حظر @(.*)$")
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'◍ لقد تم تعطيل الحظر و الطرد من قبل المنشئين')
return false
end
function Function_VAMBAIR(extra, result, success)
if result.id_ then
if Rank_Checking(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n◍ عذرا لا تستطيع طرد او حظر او كتم او تقييد ( "..Get_Rank(result.id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"◍ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"◍ ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"◍ البوت ليس ادمن يرجى ترقيتي !") 
return false  
end
database:sadd(bot_id.."VAMBAIR:Ban:User"..msg.chat_id_, result.id_)
Kick_Group(msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","◍ تم حظره من المجموعه")  
end,nil)   
end
else
send(msg.chat_id_, msg.id_, "◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
return false
end

if text and text:match("^حظر (%d+)$") and Addictive(msg) then
local userid = text:match("^حظر (%d+)$") 
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'◍ لقد تم تعطيل الحظر و الطرد من قبل المنشئين')
return false
end
if Rank_Checking(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n◍ عذرا لا تستطيع طرد او حظر او كتم او تقييد ( "..Get_Rank(userid,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"◍ ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"◍ البوت ليس ادمن يرجى ترقيتي !") 
return false  
end
database:sadd(bot_id.."VAMBAIR:Ban:User"..msg.chat_id_, userid)
Kick_Group(msg.chat_id_, userid)  
Reply_Status(msg,userid,"reply","◍ تم حظره من المجموعه")  
end,nil)   
end
return false
end
if text == ("الغاء حظر") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then
function Function_VAMBAIR(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, "◍ انا لست محظورا \n") 
return false 
end
database:srem(bot_id.."VAMBAIR:Ban:User"..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم الغاء حظره من هنا")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
return false
end
 
if text and text:match("^الغاء حظر @(.*)$") and Addictive(msg) then
local username = text:match("^الغاء حظر @(.*)$") 
function Function_VAMBAIR(extra, result, success)
if result.id_ then
if tonumber(result.id_) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, "◍ انا لست محظورا \n") 
return false 
end
database:srem(bot_id.."VAMBAIR:Ban:User"..msg.chat_id_, result.id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
Reply_Status(msg,result.id_,"reply","◍ تم الغاء حظره من هنا")  
else
send(msg.chat_id_, msg.id_, "◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
return false
end

if text and text:match("^الغاء حظر (%d+)$") and Addictive(msg) then
local userid = text:match("^الغاء حظر (%d+)$") 
if tonumber(userid) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, "◍ انا لست محظورا \n") 
return false 
end
database:srem(bot_id.."VAMBAIR:Ban:User"..msg.chat_id_, userid)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
Reply_Status(msg,userid,"reply","◍ تم الغاء حظره من هنا")  
return false
end

if text == ("كتم") and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
function Function_VAMBAIR(extra, result, success)
if Rank_Checking(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n◍ عذرا لا تستطيع طرد او حظر او كتم او تقييد ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
return false 
end     
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"◍ البوت ليس ادمن يرجى ترقيتي !") 
return false  
end
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم كتمه من هنا")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
return false
end
if text and text:match("^كتم @(.*)$") and Addictive(msg) then
local username = text:match("^كتم @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"◍ البوت ليس ادمن يرجى ترقيتي !") 
return false  
end
function Function_VAMBAIR(extra, result, success)
if result.id_ then
if Rank_Checking(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n◍ عذرا لا تستطيع طرد او حظر او كتم او تقييد ( "..Get_Rank(result.id_,msg.chat_id_).." )")
return false 
end     
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"◍ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","◍ تم كتمه من هنا")  
else
send(msg.chat_id_, msg.id_, "◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
return false
end
if text and text:match("^كتم (%d+)$") and Addictive(msg) then
local userid = text:match("^كتم (%d+)$")
if Rank_Checking(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n◍ عذرا لا تستطيع طرد او حظر او كتم او تقييد ( "..Get_Rank(userid,msg.chat_id_).." )")
else
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"◍ البوت ليس ادمن يرجى ترقيتي !") 
return false  
end
database:sadd(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","◍ تم كتمه من هنا")  
end
return false
end
if text == ("الغاء كتم") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then
function Function_VAMBAIR(extra, result, success)
database:srem(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم الغاء كتمه من هنا")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
return false
end
if text and text:match("^الغاء كتم @(.*)$") and Addictive(msg) then
local username = text:match("^الغاء كتم @(.*)$")
function Function_VAMBAIR(extra, result, success)
if result.id_ then
database:srem(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","◍ تم الغاء كتمه من هنا")  
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
return false
end

if text and text:match("^الغاء كتم (%d+)$") and Addictive(msg) then
local userid = text:match("^الغاء كتم (%d+)$") 
database:srem(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","◍ تم الغاء كتمه من هنا")  
return false
end

if text == ("تقييد") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then
function Function_VAMBAIR(extra, result, success)
if Rank_Checking(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n◍ عذرا لا تستطيع طرد او حظر او كتم او تقييد ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم تقييده في المجموعه")  
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^تقييد @(.*)$") and Addictive(msg) then
local username = text:match("^تقييد @(.*)$")
function Function_VAMBAIR(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"◍ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
if Rank_Checking(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n◍ عذرا لا تستطيع طرد او حظر او كتم او تقييد ( "..Get_Rank(result.id_,msg.chat_id_).." )")
return false 
end      
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_)
Reply_Status(msg,result.id_,"reply","◍ تم تقييده في المجموعه")  
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^تقييد (%d+)$") and Addictive(msg) then
local userid = text:match("^تقييد (%d+)$")
if Rank_Checking(userid, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n◍ عذرا لا تستطيع طرد او حظر او كتم او تقييد ( "..Get_Rank(userid,msg.chat_id_).." )")
else
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..userid)
Reply_Status(msg,userid,"reply","◍ تم تقييده في المجموعه")  
end
return false
end
if text and text:match('^تقييد (%d+) (.*)$') and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then
local TextEnd = {string.match(text, "^(تقييد) (%d+) (.*)$")}
function Function_VAMBAIR(extra, result, success)
if TextEnd[3] == 'يوم' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 86400
end
if TextEnd[3] == 'ساعه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 3600
end
if TextEnd[3] == 'دقيقه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 60
end
TextEnd[3] = TextEnd[3]:gsub('دقيقه',"دقايق") 
TextEnd[3] = TextEnd[3]:gsub('ساعه',"ساعات") 
TextEnd[3] = TextEnd[3]:gsub("يوم","ايام") 
if Rank_Checking(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n◍ عذرا لا تستطيع طرد او حظر او كتم او تقييد ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
Reply_Status(msg,result.sender_user_id_,"reply", "◍ تم تقييده لمدة ~ { "..TextEnd[2]..' '..TextEnd[3]..'}')
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_..'&until_date='..tonumber(msg.date_+Time))
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
return false
end

if text and text:match('^تقييد (%d+) (.*) @(.*)$') and Addictive(msg) then
local TextEnd = {string.match(text, "^(تقييد) (%d+) (.*) @(.*)$")}
function Function_VAMBAIR(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"◍ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
if TextEnd[3] == 'يوم' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 86400
end
if TextEnd[3] == 'ساعه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 3600
end
if TextEnd[3] == 'دقيقه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 60
end
TextEnd[3] = TextEnd[3]:gsub('دقيقه',"دقايق") 
TextEnd[3] = TextEnd[3]:gsub('ساعه',"ساعات") 
TextEnd[3] = TextEnd[3]:gsub("يوم","ايام") 
if Rank_Checking(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n◍ عذرا لا تستطيع طرد او حظر او كتم او تقييد ( "..Get_Rank(result.id_,msg.chat_id_).." )")
else
Reply_Status(msg,result.id_,"reply", "◍ تم تقييده لمدة ~ { "..TextEnd[2]..' '..TextEnd[3]..'}')
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_..'&until_date='..tonumber(msg.date_+Time))
end
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = TextEnd[4]}, Function_VAMBAIR, nil)
return false
end
------------------------------------------------------------------------
if text == ("الغاء تقييد") and tonumber(msg.reply_to_message_id_) ~= 0 and Addictive(msg) then
function Function_VAMBAIR(extra, result, success)
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. result.sender_user_id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم الغاء تقييده")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^الغاء تقييد @(.*)$") and Addictive(msg) then
local username = text:match("^الغاء تقييد @(.*)$")
function Function_VAMBAIR(extra, result, success)
if result.id_ then
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. result.id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Reply_Status(msg,result.id_,"reply","◍ تم الغاء تقييده")  
else
send(msg.chat_id_, msg.id_, "◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^الغاء تقييد (%d+)$") and Addictive(msg) then
local userid = text:match("^الغاء تقييد (%d+)$")
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..userid.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Reply_Status(msg,userid,"reply","◍ تم الغاء تقييده")  
return false
end
if text == ("طرد") and msg.reply_to_message_id_ ~=0 and Addictive(msg) then
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'◍ لقد تم تعطيل الحظر و الطرد من قبل المنشئين')
return false
end
function Function_VAMBAIR(extra, result, success)
if Rank_Checking(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n◍ عذرا لا تستطيع طرد او حظر او كتم او تقييد ( "..Get_Rank(result.sender_user_id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"◍ ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"◍ البوت ليس ادمن يرجى ترقيتي !") 
return false  
end
Kick_Group(result.chat_id_, result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم طرده من هنا")  
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
return false
end  
if text and text:match("^طرد @(.*)$") and Addictive(msg) then 
local username = text:match("^طرد @(.*)$")
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'◍ لقد تم تعطيل الحظر و الطرد من قبل المنشئين')
return false
end
function Function_VAMBAIR(extra, result, success)
if result.id_ then
if Rank_Checking(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n◍ عذرا لا تستطيع طرد او حظر او كتم او تقييد ( "..Get_Rank(result.id_,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"◍ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"◍ ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"◍ البوت ليس ادمن يرجى ترقيتي !") 
return false  
end
Kick_Group(msg.chat_id_, result.id_)
Reply_Status(msg,result.id_,"reply","◍ تم طرده من هنا")  
end,nil)   
end
else
send(msg.chat_id_, msg.id_, "◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
return false
end  

if text and text:match("^طرد (%d+)$") and Addictive(msg) then 
local userid = text:match("^طرد (%d+)$") 
if not Constructor(msg) and database:get(bot_id.."Ban:Cheking"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'◍ لقد تم تعطيل الحظر و الطرد من قبل المنشئين')
return false
end
if Rank_Checking(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n◍ عذرا لا تستطيع طرد او حظر او كتم او تقييد ( "..Get_Rank(userid,msg.chat_id_).." )")
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"◍ ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !") 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,"◍ البوت ليس ادمن يرجى ترقيتي !") 
return false  
end
Kick_Group(msg.chat_id_, userid)
Reply_Status(msg,userid,"reply","◍ تم طرده من هنا")  
end,nil)   
end
return false
end

if text == "تعطيل الطرد" or text == "تعطيل الحظر" then
if Constructor(msg) then
database:set(bot_id.."Ban:Cheking"..msg.chat_id_,"true")
send(msg.chat_id_, msg.id_, '◍ تم تعطيل » الحظر ~ والطرد ')
return false
end
end
if text == "تفعيل الطرد" or text == "تفعيل الحظر" then
if Constructor(msg) then
database:del(bot_id.."Ban:Cheking"..msg.chat_id_)
send(msg.chat_id_, msg.id_, '◍ تم تفعيل » الحظر ~ والطرد ')
return false
end
end
if text == "تعطيل الرفع" or text == "تعطيل الترقيه" then
if Constructor(msg) then
database:set(bot_id.."Add:Group:Cheking"..msg.chat_id_,"true")
send(msg.chat_id_, msg.id_, '◍ تم تعطيل رفع » الادمن ~ المميز ')
return false
end
end
if text == "تفعيل الرفع" or text == "تفعيل الترقيه" then
if Constructor(msg) then
database:del(bot_id.."Add:Group:Cheking"..msg.chat_id_)
send(msg.chat_id_, msg.id_, '◍ تم تفعيل رفع » الادمن ~ المميز ')
return false
end
end
if text ==("تثبيت") and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then  
if database:sismember(bot_id.."VAMBAIR:Lock:pin",msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_,"◍ التثبيت والغاء التثبيت تم قفله من قبل المنشئين")  
return false  
end
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub("-100",""),message_id_ = msg.reply_to_message_id_,disable_notification_ = 1},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"◍ تم تثبيت الرساله")   
database:set(bot_id.."VAMBAIR:Pin:Id:Msg"..msg.chat_id_,msg.reply_to_message_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_,"◍ انا لست ادمن هنا يرجى ترقيتي ادمن ثم اعد المحاوله")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"◍ ليست لدي صلاحية التثبيت يرجى التحقق من الصلاحيات")  
end
end,nil) 
end
if text == "الغاء التثبيت" and Addictive(msg) then  
if database:sismember(bot_id.."VAMBAIR:Lock:pin",msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_,"◍ التثبيت والغاء التثبيت تم قفله من قبل المنشئين")  
return false  
end
tdcli_function({ID="UnpinChannelMessage",channel_id_ = msg.chat_id_:gsub("-100","")},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"◍ تم الغاء تثبيت الرساله")   
database:del(bot_id.."VAMBAIR:Pin:Id:Msg"..msg.chat_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_,"◍ انا لست ادمن هنا يرجى ترقيتي ادمن ثم اعد المحاوله")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"◍ ليست لدي صلاحية التثبيت يرجى التحقق من الصلاحيات")  
end
end,nil)
end

if text and text:match("^وضع تكرار (%d+)$") and Addictive(msg) then   
local Num = text:match("وضع تكرار (.*)")
database:hset(bot_id.."VAMBAIR:flooding:settings:"..msg.chat_id_ ,"floodmax" ,Num) 
send(msg.chat_id_, msg.id_,"◍ تم وضع عدد التكرار ("..Num..")")  
end 
if text and text:match("^وضع زمن التكرار (%d+)$") and Addictive(msg) then   
local Num = text:match("^وضع زمن التكرار (%d+)$")
database:hset(bot_id.."VAMBAIR:flooding:settings:"..msg.chat_id_ ,"floodtime" ,Num) 
send(msg.chat_id_, msg.id_,"◍ تم وضع زمن التكرار ("..Num..")") 
end
if text == "ضع رابط" or text == "وضع رابط" then
if msg.reply_to_message_id_ == 0  and Addictive(msg) then  
send(msg.chat_id_,msg.id_,"◍ ارسل رابط المجموعه او رابط قناة المجموعه")
database:setex(bot_id.."VAMBAIR:Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_,120,true) 
return false
end
end
if text == "تفعيل جلب الرابط" or text == 'تفعيل الرابط' then
if Addictive(msg) then  
database:set(bot_id.."VAMBAIR:Link_Group"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,"◍ تم تفعيل جلب الرابط المجموعه") 
return false  
end
end
if text == "تعطيل جلب الرابط" or text == 'تعطيل الرابط' then
if Addictive(msg) then  
database:del(bot_id.."VAMBAIR:Link_Group"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"◍ تم تعطيل جلب رابط المجموعه") 
return false end
end
if text == "الرابط" then 
local status_Link = database:get(bot_id.."VAMBAIR:Link_Group"..msg.chat_id_)
if not status_Link then
send(msg.chat_id_, msg.id_,"◍ جلب الرابط معطل") 
return false  
end
local link = database:get(bot_id.."VAMBAIR:Private:Group:Link"..msg.chat_id_)            
if link then                              
send(msg.chat_id_,msg.id_,"◍ رابط المجموعة ~\n ["..link.."]")                          
else                
send(msg.chat_id_, msg.id_,"◍ لا يوجد رابط ارسل ضع رابط")              
end            
end
if text == "مسح الرابط" or text == "حذف الرابط" then
if Addictive(msg) then     
send(msg.chat_id_,msg.id_,"◍ تم مسح الرابط ")           
database:del(bot_id.."VAMBAIR:Private:Group:Link"..msg.chat_id_) 
return false      
end
return false  
end
if text == "حذف الصوره" or text == "مسح الصوره" then 
if Addictive(msg) then
https.request("https://api.telegram.org/bot"..token.."/deleteChatPhoto?chat_id="..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"◍ تم ازالة صورة المجموعه") 
end
return false  
end
if text == "ضع وصف" or text == "وضع وصف" then  
if Addictive(msg) then
database:setex(bot_id.."VAMBAIR:Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_,"◍ ارسل الان الوصف")
end
return false  
end
if text == "ضع ترحيب" or text == "وضع ترحيب" then  
if Addictive(msg) then
database:setex(bot_id.."VAMBAIR:Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
t  = "◍ ارسل لي الترحيب الان"
tt = "\n◍ تستطيع اضافة مايلي !\n◍ دالة عرض الاسم »{`name`}\n◍ دالة عرض المعرف »{`user`}"
send(msg.chat_id_, msg.id_,t..tt) 
end
return false  
end
if text == "الترحيب" and Addictive(msg) then 
if database:get(bot_id.."VAMBAIR:Get:Welcome:Group"..msg.chat_id_)   then 
Welcome = database:get(bot_id.."VAMBAIR:Get:Welcome:Group"..msg.chat_id_)  
else 
Welcome = "◍ لم يتم تعيين ترحيب للمجموعه"
end 
send(msg.chat_id_, msg.id_,"["..Welcome.."]") 
return false  
end
if text == "تفعيل الترحيب" and Addictive(msg) then  
database:set(bot_id.."VAMBAIR:Chek:Welcome"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,"◍ تم تفعيل ترحيب المجموعه") 
return false  
end
if text == "تعطيل الترحيب" and Addictive(msg) then  
database:del(bot_id.."VAMBAIR:Chek:Welcome"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"◍ تم تعطيل ترحيب المجموعه") 
return false  
end
if text == "مسح الترحيب" or text == "حذف الترحيب" then 
if Addictive(msg) then
database:del(bot_id.."VAMBAIR:Get:Welcome:Group"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"◍ تم ازالة ترحيب المجموعه") 
end
return false  
end
if text == 'تفعيل all' and DevVAMBAIR(msg) then   
if database:get(bot_id..'Cick:all'..msg.chat_id_) then
Text = ' ◍ تم تفعيل امر @all'
database:del(bot_id..'Cick:all'..msg.chat_id_)  
else
Text = ' ◍ بالتاكيد تم تفعيل امر @all'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل all' and DevVAMBAIR(msg) then  
if not database:get(bot_id..'Cick:all'..msg.chat_id_) then
database:set(bot_id..'Cick:all'..msg.chat_id_,true)  
Text = '\n ◍ تم تعطيل امر @all'
else
Text = '\n ◍ بالتاكيد تم تعطيل امر @all'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'مسح قائمه منع المتحركات' and Owner(msg) then     
database:del(bot_id.."filteranimation"..msg.chat_id_)
send(msg.chat_id_, msg.id_,'◍ تم مسح قائمه منع المتحركات')  
end
if text == 'مسح قائمه منع الصور' and Owner(msg) then     
database:del(bot_id.."filterphoto"..msg.chat_id_)
send(msg.chat_id_, msg.id_,'◍ تم مسح قائمه منع الصور')  
end
if text == 'مسح قائمه منع الملصقات' and Owner(msg) then     
database:del(bot_id.."filtersteckr"..msg.chat_id_)
send(msg.chat_id_, msg.id_,'◍ تم مسح قائمه منع الملصقات')  
end
if text == 'منع' and tonumber(msg.reply_to_message_id_) > 0 and Owner(msg) then     
function cb(a,b,c) 
textt = '◍ تم منع '
if b.content_.sticker_ then
local idsticker = b.content_.sticker_.set_id_
database:sadd(bot_id.."filtersteckr"..msg.chat_id_,idsticker)
text = 'الملصق'
send(msg.chat_id_, msg.id_,textt..'( '..text..' ) بنجاح لن يتم ارسالها مجددا')  
return false
end
if b.content_.ID == "MessagePhoto" then
local photo = b.content_.photo_.id_
database:sadd(bot_id.."filterphoto"..msg.chat_id_,photo)
text = 'الصوره'
send(msg.chat_id_, msg.id_,textt..'( '..text..' ) بنجاح لن يتم ارسالها مجددا')  
return false
end
if b.content_.animation_.animation_ then
local idanimation = b.content_.animation_.animation_.persistent_id_
database:sadd(bot_id.."filteranimation"..msg.chat_id_,idanimation)
text = 'المتحركه'
send(msg.chat_id_, msg.id_,textt..'( '..text..' ) بنجاح لن يتم ارسالها مجددا')  
return false
end
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, cb, nil)
end
if text == 'الغاء منع' and tonumber(msg.reply_to_message_id_) > 0 and Owner(msg) then     
function cb(a,b,c) 
textt = '◍ تم الغاء منع '
if b.content_.sticker_ then
local idsticker = b.content_.sticker_.set_id_
database:srem(bot_id.."filtersteckr"..msg.chat_id_,idsticker)
text = 'الملصق'
send(msg.chat_id_, msg.id_,textt..'( '..text..' ) بنجاح يمكنهم الارسال الان')  
return false
end
if b.content_.ID == "MessagePhoto" then
local photo = b.content_.photo_.id_
database:srem(bot_id.."filterphoto"..msg.chat_id_,photo)
text = 'الصوره'
send(msg.chat_id_, msg.id_,textt..'( '..text..' ) بنجاح يمكنهم الارسال الان')  
return false
end
if b.content_.animation_.animation_ then
local idanimation = b.content_.animation_.animation_.persistent_id_
database:srem(bot_id.."filteranimation"..msg.chat_id_,idanimation)
text = 'المتحركه'
send(msg.chat_id_, msg.id_,textt..'( '..text..' ) بنجاح يمكنهم الارسال الان')  
return false
end
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, cb, nil)
end
if text == "مسح قائمه المنع" and Addictive(msg) then   
local list = database:smembers(bot_id.."VAMBAIR:List:Filter"..msg.chat_id_)  
for k,v in pairs(list) do  
database:del(bot_id.."VAMBAIR:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:del(bot_id.."VAMBAIR:Add:Filter:Rp2"..v..msg.chat_id_)  
database:srem(bot_id.."VAMBAIR:List:Filter"..msg.chat_id_,v)  
end  
send(msg.chat_id_, msg.id_,"◍ تم مسح قائمه المنع")  
end

if text == "قائمه المنع" and Addictive(msg) then   
local list = database:smembers(bot_id.."VAMBAIR:List:Filter"..msg.chat_id_)  
t = "\n◍ قائمة المنع \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n"
for k,v in pairs(list) do  
local VAMBAIR_Msg = database:get(bot_id.."VAMBAIR:Add:Filter:Rp2"..v..msg.chat_id_)   
t = t..""..k.."- "..v.." » {"..VAMBAIR_Msg.."}\n"    
end  
if #list == 0 then  
t = "◍ لا يوجد كلمات ممنوعه"  
end  
send(msg.chat_id_, msg.id_,t)  
end  
if text and text == "منع" and msg.reply_to_message_id_ == 0 and Addictive(msg) then       
send(msg.chat_id_, msg.id_,"◍ ارسل الكلمه لمنعها")  
database:set(bot_id.."VAMBAIR:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"rep")  
return false  
end    
if text then   
local tsssst = database:get(bot_id.."VAMBAIR:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if tsssst == "rep" then   
send(msg.chat_id_, msg.id_,"◍ ارسل التحذير عند ارسال الكلمه")  
database:set(bot_id.."VAMBAIR:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"repp")  
database:set(bot_id.."VAMBAIR:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_, text)  
database:sadd(bot_id.."VAMBAIR:List:Filter"..msg.chat_id_,text)  
return false  end  
end
if text then  
local test = database:get(bot_id.."VAMBAIR:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if test == "repp" then  
send(msg.chat_id_, msg.id_,"◍ تم منع الكلمه مع التحذير")  
database:del(bot_id.."VAMBAIR:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
local test = database:get(bot_id.."VAMBAIR:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_)  
if text then   
database:set(bot_id.."VAMBAIR:Add:Filter:Rp2"..test..msg.chat_id_, text)  
end  
database:del(bot_id.."VAMBAIR:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_)  
return false  end  
end

if text == "الغاء منع" and msg.reply_to_message_id_ == 0 and Addictive(msg) then    
send(msg.chat_id_, msg.id_,"◍ ارسل الكلمه الان")  
database:set(bot_id.."VAMBAIR:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"reppp")  
return false  end
if text then 
local test = database:get(bot_id.."VAMBAIR:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if test and test == "reppp" then   
send(msg.chat_id_, msg.id_,"◍ تم الغاء منعها ")  
database:del(bot_id.."VAMBAIR:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:del(bot_id.."VAMBAIR:Add:Filter:Rp2"..text..msg.chat_id_)  
database:srem(bot_id.."VAMBAIR:List:Filter"..msg.chat_id_,text)  
return false  end  
end

if text == "مسح البوتات" and Addictive(msg) then 
tdcli_function ({ ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah)  
local admins = tah.members_  
local x = 0
local c = 0
for i=0 , #admins do 
if tah.members_[i].status_.ID == "ChatMemberStatusEditor" then  
x = x + 1 
end
if tonumber(admins[i].user_id_) ~= tonumber(bot_id) then
Kick_Group(msg.chat_id_,admins[i].user_id_)
end
c = c + 1
end     
if (c - x) == 0 then
send(msg.chat_id_, msg.id_, "◍ لا توجد بوتات في المجموعه")
else
local t = "◍ عدد البوتات هنا >> {"..c.."}\n◍ عدد البوتات التي هي ادمن >> {"..x.."}\n◍ تم طرد >> {"..(c - x).."} من البوتات"
send(msg.chat_id_, msg.id_,t) 
end 
end,nil)  
end   
if text == ("كشف البوتات") and Addictive(msg) then  
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(extra,result,success)
local admins = result.members_  
text = "\n◍ قائمة البوتات الموجوده \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n"
local n = 0
local t = 0
for i=0 , #admins do 
n = (n + 1)
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_
},function(arg,ta) 
if result.members_[i].status_.ID == "ChatMemberStatusMember" then  
tr = ""
elseif result.members_[i].status_.ID == "ChatMemberStatusEditor" then  
t = t + 1
tr = " {✯}"
end
text = text..">> [@"..ta.username_.."]"..tr.."\n"
if #admins == 0 then
send(msg.chat_id_, msg.id_, "◍ لا توجد بوتات في المجموعه")
return false 
end
if #admins == i then 
local a = "\n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n◍ عدد البوتات التي هنا >> {"..n.."} بوت\n"
local f = "◍ عدد البوتات التي هي ادمن >> {"..t.."}\n◍ ملاحضه علامة ال (✯) تعني ان البوت ادمن \n◍"
send(msg.chat_id_, msg.id_, text..a..f)
end
end,nil)
end
end,nil)
end
--------------------------
if text == 'كشف' and tonumber(msg.reply_to_message_id_) > 0 then
function start_function(extra, result, success)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(extra,data) 
local rtp = Get_Rank(result.sender_user_id_,msg.chat_id_)
local username = ('[@'..data.username_..']' or 'لا يوجد')
local iduser = result.sender_user_id_
send(msg.chat_id_, msg.id_,'  الايدي » ('..iduser..')\n  المعرف » ('..username..')\n ◍ الرتبه » ('..rtp..')\n ◍ نوع الكشف » بالرد')
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
---------
if text and text:match("^كشف @(.*)$") then
local username = text:match("^كشف @(.*)$")
function start_function(extra, result, success)
if result.id_ then
tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(extra,data) 
local rtp = Get_Rank(result.id_,msg.chat_id_)
local username = ('[@'..data.username_..']' or 'لا يوجد')
local iduser = result.id_
send(msg.chat_id_, msg.id_,'  الايدي » ('..iduser..')\n ◍ المعرف » ('..username..')\n ◍ الرتبه » ('..rtp..')\n ◍ نوع الكشف » بالمعرف')
end,nil)
else
send(msg.chat_id_, msg.id_,'   المعرف غير صحيح')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end
--------------------
if text == 'الرتبه' and tonumber(msg.reply_to_message_id_) > 0 then
function start_function(extra, result, success)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(extra,data) 
local rtp = Get_Rank(result.sender_user_id_,msg.chat_id_)
local username = ' ['..data.first_name_..'](t.me/'..(data.username_ or 'S0DRG')..')'
local iduser = result.sender_user_id_
send(msg.chat_id_, msg.id_,'*- العضو » (*'..username..'*)\n- الرتبه » ('..rtp..')*\n')
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
---------
if text and text:match("^الرتبه @(.*)$") then
local username = text:match("^الرتبه @(.*)$")
function start_function(extra, result, success)
if result.id_ then
tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(extra,data) 
local rtp = Get_Rank(result.id_,msg.chat_id_)
local username = ('[@'..data.username_..']' or 'لا يوجد')
local iduser = result.id_
send(msg.chat_id_, msg.id_,'*- العضو » (*'..username..'*)\n- الرتبه » ('..rtp..')*\n')
end,nil)
else
send(msg.chat_id_, msg.id_,'- المعرف غير صحيح ')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end
----------------------------------
if database:get(bot_id.."VAMBAIR:Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "الغاء" then 
send(msg.chat_id_, msg.id_, "◍ تم الغاء حفظ القوانين") 
database:del(bot_id.."VAMBAIR:Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
return false  
end 
database:set(bot_id.."VAMBAIR:Set:Rules:Group" .. msg.chat_id_,text) 
send(msg.chat_id_, msg.id_,"◍ تم حفظ قوانين المجموعه") 
database:del(bot_id.."VAMBAIR:Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
end  

if text == "ضع قوانين" or text == "وضع قوانين" then 
if Addictive(msg) then
database:setex(bot_id.."VAMBAIR:Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_,msg.id_,"◍ ارسل لي القوانين الان")  
end
end
if text == "مسح القوانين" or text == "حذف القوانين" then  
if Addictive(msg) then
send(msg.chat_id_, msg.id_,"◍ تم ازالة قوانين المجموعه")  
database:del(bot_id.."VAMBAIR:Set:Rules:Group"..msg.chat_id_) 
end
end
if text == "القوانين" then 
local Set_Rules = database:get(bot_id.."VAMBAIR:Set:Rules:Group" .. msg.chat_id_)   
if Set_Rules then     
send(msg.chat_id_,msg.id_, Set_Rules)   
else      
send(msg.chat_id_, msg.id_,"◍ لا توجد قوانين هنا")   
end    
end

if text == "الاوامر المضافه" and Constructor(msg) then
local list = database:smembers(bot_id.."VAMBAIR:List:Cmd:Group:New"..msg.chat_id_.."")
t = "◍ قائمه الاوامر المضافه  \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n"
for k,v in pairs(list) do
Cmds = database:get(bot_id.."VAMBAIR:Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
if Cmds then 
t = t..""..k.."- ("..v..") ~ {"..Cmds.."}\n"
else
t = t..""..k.."- ("..v..") \n"
end
end
if #list == 0 then
t = "◍ لا توجد اوامر اضافيه"
end
send(msg.chat_id_, msg.id_,"["..t.."]")
end
if text == "حذف الاوامر المضافه" or text == "مسح الاوامر المضافه" then
if Constructor(msg) then 
local list = database:smembers(bot_id.."VAMBAIR:List:Cmd:Group:New"..msg.chat_id_)
for k,v in pairs(list) do
database:del(bot_id.."VAMBAIR:Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
database:del(bot_id.."VAMBAIR:List:Cmd:Group:New"..msg.chat_id_)
end
send(msg.chat_id_, msg.id_,"◍ تم مسح جميع الاوامر التي تم اضافتها")  
end
end
if text == "اضف امر" and Constructor(msg) then
database:set(bot_id.."VAMBAIR:Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
send(msg.chat_id_, msg.id_,"◍ الان ارسل لي الامر القديم ..")  
return false
end
if text == "حذف امر" or text == "مسح امر" then 
if Constructor(msg) then
database:set(bot_id.."VAMBAIR:Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
send(msg.chat_id_, msg.id_,"◍ ارسل الامر الذي قم بوضعه بدلا عن القديم")  
return false
end
end

if text == "الصلاحيات" and Addictive(msg) then 
local list = database:smembers(bot_id.."VAMBAIR:Coomds"..msg.chat_id_)
if #list == 0 then
send(msg.chat_id_, msg.id_,"◍ لا توجد صلاحيات مضافه")
return false
end
t = "\n◍ قائمة الصلاحيات المضافه \n━━━━━━━━━━━━━\n"
for k,v in pairs(list) do
var = database:get(bot_id.."VAMBAIR:Comd:New:rt:bot:"..v..msg.chat_id_)
if var then
t = t..""..k.."- "..v.." ~ ("..var..")\n"
else
t = t..""..k.."- "..v.."\n"
end
end
send(msg.chat_id_, msg.id_,t)
end
if text == "مسح الصلاحيات" then
local list = database:smembers(bot_id.."VAMBAIR:Coomds"..msg.chat_id_)
for k,v in pairs(list) do
database:del(bot_id.."VAMBAIR:Comd:New:rt:bot:"..v..msg.chat_id_)
database:del(bot_id.."VAMBAIR:Coomds"..msg.chat_id_)
end
send(msg.chat_id_, msg.id_,"◍ تم مسح الصلاحيات")
end
if text and text:match("^اضف صلاحيه (.*)$") and Addictive(msg) then 
ComdNew = text:match("^اضف صلاحيه (.*)$")
database:set(bot_id.."VAMBAIR:Comd:New:rt"..msg.chat_id_..msg.sender_user_id_,ComdNew)  
database:sadd(bot_id.."VAMBAIR:Coomds"..msg.chat_id_,ComdNew)  
database:setex(bot_id.."VAMBAIR:Comd:New"..msg.chat_id_..""..msg.sender_user_id_,200,true)  
send(msg.chat_id_, msg.id_, "◍ ارسل نوع الصلاحيه ◍\n◍ (عضو ~ مميز  ~ ادمن  ~ مدير )") 
end
if text and text:match("^مسح صلاحيه (.*)$") and Addictive(msg) or text and text:match("^حذف صلاحيه (.*)$") and Addictive(msg) then 
ComdNew = text:match("^مسح صلاحيه (.*)$") or text:match("^حذف صلاحيه (.*)$")
database:del(bot_id.."VAMBAIR:Comd:New:rt:bot:"..ComdNew..msg.chat_id_)
send(msg.chat_id_, msg.id_, "◍ تم مسح الصلاحيه ") 
end
if database:get(bot_id.."VAMBAIR:Comd:New"..msg.chat_id_..""..msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
send(msg.chat_id_, msg.id_,"◍ تم الغاء الامر ") 
database:del(bot_id.."VAMBAIR:Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
if text == "مدير" then
if not Constructor(msg) then
send(msg.chat_id_, msg.id_"◍ ارسل نوع الصلاحيه مره اخر\n◍ تستطيع اضافة صلاحيه (عضو ~ مميز  ~ ادمن )") 
return false
end
end
if text == "ادمن" then
if not Owner(msg) then 
send(msg.chat_id_, msg.id_"◍ ارسل نوع الصلاحيه مره اخر\n◍ تستطيع اضافة صلاحيه ( عضو ~ مميز )") 
return false
end
end
if text == "مميز" then
if not Addictive(msg) then
send(msg.chat_id_, msg.id_"◍ ارسل نوع الصلاحيه مره اخر\n◍ تستطيع اضافة صلاحيه ( عضو )") 
return false
end
end
if text == "مدير" or text == "ادمن" or text == "مميز" or text == "عضو" then
local textn = database:get(bot_id.."VAMBAIR:Comd:New:rt"..msg.chat_id_..msg.sender_user_id_)  
database:set(bot_id.."VAMBAIR:Comd:New:rt:bot:"..textn..msg.chat_id_,text)
send(msg.chat_id_, msg.id_, "◍ تم اضافة صلاحية ") 
database:del(bot_id.."VAMBAIR:Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
end

if text and text:match("^تغير رد المطور (.*)$") and Owner(msg) then
local Teext = text:match("^تغير رد المطور (.*)$") 
database:set(bot_id.."VAMBAIR:Sudo:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"◍ تم تغير رد المطور الى » "..Teext)
end
if text and text:match("^تغير رد المنشئ الاساسي (.*)$") and Owner(msg) then
local Teext = text:match("^تغير رد المنشئ الاساسي (.*)$") 
database:set(bot_id.."VAMBAIR:BasicConstructor:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"◍ تم تغير رد المنشئ الاساسي الى » "..Teext)
end
if text and text:match("^تغير رد المنشئ (.*)$") and Owner(msg) then
local Teext = text:match("^تغير رد المنشئ (.*)$") 
database:set(bot_id.."VAMBAIR:Constructor:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"◍ تم تغير رد المنشئ الى » "..Teext)
end
if text and text:match("^تغير رد المدير (.*)$") and Owner(msg) then
local Teext = text:match("^تغير رد المدير (.*)$") 
database:set(bot_id.."VAMBAIR:Manager:Rd"..msg.chat_id_,Teext) 
send(msg.chat_id_, msg.id_,"◍ تم تغير رد المدير الى » "..Teext)
end
if text and text:match("^تغير رد الادمن (.*)$") and Owner(msg) then
local Teext = text:match("^تغير رد الادمن (.*)$") 
database:set(bot_id.."VAMBAIR:Mod:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"◍ تم تغير رد الادمن الى » "..Teext)
end
if text and text:match("^تغير رد المميز (.*)$") and Owner(msg) then
local Teext = text:match("^تغير رد المميز (.*)$") 
database:set(bot_id.."VAMBAIR:Special:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"◍ تم تغير رد المميز الى » "..Teext)
end
if text and text:match("^تغير رد العضو (.*)$") and Owner(msg) then
local Teext = text:match("^تغير رد العضو (.*)$") 
database:set(bot_id.."VAMBAIR:Memp:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_,"◍ تم تغير رد العضو الى » "..Teext)
end


if text == ("مسح الردود") and Owner(msg) then
local list = database:smembers(bot_id.."VAMBAIR:List:Manager"..msg.chat_id_.."")
for k,v in pairs(list) do
database:del(bot_id.."VAMBAIR:Add:Rd:Manager:Gif"..v..msg.chat_id_)   
database:del(bot_id.."VAMBAIR:Add:Rd:Manager:Vico"..v..msg.chat_id_)   
database:del(bot_id.."VAMBAIR:Add:Rd:Manager:Stekrs"..v..msg.chat_id_)     
database:del(bot_id.."VAMBAIR:Add:Rd:Manager:Text"..v..msg.chat_id_)   
database:del(bot_id.."VAMBAIR:Add:Rd:Manager:Photo"..v..msg.chat_id_)
database:del(bot_id.."VAMBAIR:Add:Rd:Manager:Video"..v..msg.chat_id_)
database:del(bot_id.."VAMBAIR:Add:Rd:Manager:File"..v..msg.chat_id_)
database:del(bot_id.."VAMBAIR:Add:Rd:Manager:Audio"..v..msg.chat_id_)
database:del(bot_id.."VAMBAIR:List:Manager"..msg.chat_id_)
end
send(msg.chat_id_, msg.id_,"◍ تم مسح الردود")
end
if text == ("الردود") and Owner(msg) then
local list = database:smembers(bot_id.."VAMBAIR:List:Manager"..msg.chat_id_.."")
text = "◍ قائمه الردود \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
if database:get(bot_id.."VAMBAIR:Add:Rd:Manager:Gif"..v..msg.chat_id_) then
db = "متحركه ◍"
elseif database:get(bot_id.."VAMBAIR:Add:Rd:Manager:Vico"..v..msg.chat_id_) then
db = "بصمه ◍"
elseif database:get(bot_id.."VAMBAIR:Add:Rd:Manager:Stekrs"..v..msg.chat_id_) then
db = "ملصق ◍"
elseif database:get(bot_id.."VAMBAIR:Add:Rd:Manager:Text"..v..msg.chat_id_) then
db = "رساله ◍"
elseif database:get(bot_id.."VAMBAIR:Add:Rd:Manager:Photo"..v..msg.chat_id_) then
db = "صوره ◍"
elseif database:get(bot_id.."VAMBAIR:Add:Rd:Manager:Video"..v..msg.chat_id_) then
db = "فيديو ◍"
elseif database:get(bot_id.."VAMBAIR:Add:Rd:Manager:File"..v..msg.chat_id_) then
db = "ملف ◍"
elseif database:get(bot_id.."VAMBAIR:Add:Rd:Manager:Audio"..v..msg.chat_id_) then
db = "اغنيه ◍"
end
text = text..""..k..">> ("..v..") » {"..db.."}\n"
end
if #list == 0 then
text = "◍ لا يوجد ردود للمدير"
end
send(msg.chat_id_, msg.id_,"["..text.."]")
end
if text or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ or msg.content_.audio_ or msg.content_.document_ or msg.content_.photo_ or msg.content_.video_ then  
local test = database:get(bot_id.."VAMBAIR:Text:Manager"..msg.sender_user_id_..":"..msg.chat_id_.."")
if database:get(bot_id.."VAMBAIR:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true1" then
database:del(bot_id.."VAMBAIR:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_)
if msg.content_.sticker_ then   
database:set(bot_id.."VAMBAIR:Add:Rd:Manager:Stekrs"..test..msg.chat_id_, msg.content_.sticker_.sticker_.persistent_id_)  
end   
if msg.content_.voice_ then  
database:set(bot_id.."VAMBAIR:Add:Rd:Manager:Vico"..test..msg.chat_id_, msg.content_.voice_.voice_.persistent_id_)  
end   
if msg.content_.animation_ then   
database:set(bot_id.."VAMBAIR:Add:Rd:Manager:Gif"..test..msg.chat_id_, msg.content_.animation_.animation_.persistent_id_)  
end  
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."VAMBAIR:Add:Rd:Manager:Text"..test..msg.chat_id_, text)  
end  
if msg.content_.audio_ then
database:set(bot_id.."VAMBAIR:Add:Rd:Manager:Audio"..test..msg.chat_id_, msg.content_.audio_.audio_.persistent_id_)  
end
if msg.content_.document_ then
database:set(bot_id.."VAMBAIR:Add:Rd:Manager:File"..test..msg.chat_id_, msg.content_.document_.document_.persistent_id_)  
end
if msg.content_.video_ then
database:set(bot_id.."VAMBAIR:Add:Rd:Manager:Video"..test..msg.chat_id_, msg.content_.video_.video_.persistent_id_)  
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
database:set(bot_id.."VAMBAIR:Add:Rd:Manager:Photo"..test..msg.chat_id_, photo_in_group)  
end
send(msg.chat_id_, msg.id_,"◍ تم حفظ الرد بنجاح")
return false  
end  
end
if text == "اضف رد" and Owner(msg) then
send(msg.chat_id_, msg.id_,"◍ ارسل الكلمه التري تريد اضافتها")
database:set(bot_id.."VAMBAIR:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text == "حذف رد" and Owner(msg) then
send(msg.chat_id_, msg.id_,"◍ ارسل الكلمه التري تريد حذفها")
database:set(bot_id.."VAMBAIR:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,"true2")
return false 
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."VAMBAIR:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_, '◍ الان ارسل الرد الذي تريد اضافته \n◍ قد يكون (ملف - فديو - نص - ملصق - بصمه - متحركه )\n◍ يمكنك اضافه الى النص :\n- `#username` > اسم المستخدم\n- `#msgs` > عدد رسائل المستخدم\n- `#name` > اسم المستخدم\n- `#id` > ايدي المستخدم\n- `#stast` > موقع المستخدم \n- `#edit` > عدد السحكات ')
database:set(bot_id.."VAMBAIR:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,"true1")
database:set(bot_id.."VAMBAIR:Text:Manager"..msg.sender_user_id_..":"..msg.chat_id_, text)
database:del(bot_id.."VAMBAIR:Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."VAMBAIR:Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."VAMBAIR:Add:Rd:Manager:Stekrs"..text..msg.chat_id_)     
database:del(bot_id.."VAMBAIR:Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."VAMBAIR:Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."VAMBAIR:Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."VAMBAIR:Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."VAMBAIR:Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:sadd(bot_id.."VAMBAIR:List:Manager"..msg.chat_id_.."", text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."VAMBAIR:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_.."") == "true2" then
send(msg.chat_id_, msg.id_,"◍ تم ازالة الرد من قائمه الردود")
database:del(bot_id.."VAMBAIR:Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."VAMBAIR:Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."VAMBAIR:Add:Rd:Manager:Stekrs"..text..msg.chat_id_)     
database:del(bot_id.."VAMBAIR:Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."VAMBAIR:Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."VAMBAIR:Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."VAMBAIR:Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."VAMBAIR:Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:del(bot_id.."VAMBAIR:Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_)
database:srem(bot_id.."VAMBAIR:List:Manager"..msg.chat_id_.."", text)
return false
end
end
if text and not database:get(bot_id.."VAMBAIR:Reply:Manager"..msg.chat_id_) then
if not database:sismember(bot_id..'VAMBAIR:Spam:Group'..msg.sender_user_id_,text) then
local anemi = database:get(bot_id.."VAMBAIR:Add:Rd:Manager:Gif"..text..msg.chat_id_)   
local veico = database:get(bot_id.."VAMBAIR:Add:Rd:Manager:Vico"..text..msg.chat_id_)   
local stekr = database:get(bot_id.."VAMBAIR:Add:Rd:Manager:Stekrs"..text..msg.chat_id_)     
local Text = database:get(bot_id.."VAMBAIR:Add:Rd:Manager:Text"..text..msg.chat_id_)   
local photo = database:get(bot_id.."VAMBAIR:Add:Rd:Manager:Photo"..text..msg.chat_id_)
local video = database:get(bot_id.."VAMBAIR:Add:Rd:Manager:Video"..text..msg.chat_id_)
local document = database:get(bot_id.."VAMBAIR:Add:Rd:Manager:File"..text..msg.chat_id_)
local audio = database:get(bot_id.."VAMBAIR:Add:Rd:Manager:Audio"..text..msg.chat_id_)
if Text then 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,data)
local NumMsg = database:get(bot_id..'VAMBAIR:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(msg.sender_user_id_,msg.chat_id_)
local message_edit = database:get(bot_id..'VAMBAIR:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = Text:gsub('#username',(data.username_ or 'لا يوجد')) 
local Text = Text:gsub('#name',data.first_name_)
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#edit',message_edit)
local Text = Text:gsub('#msgs',NumMsg)
local Text = Text:gsub('#stast',Status_Gps)
send(msg.chat_id_, msg.id_, Text)
database:sadd(bot_id.."VAMBAIR:Spam:Group"..msg.sender_user_id_,text) 
end,nil)
end
if stekr then 
sendSticker(msg.chat_id_,msg.id_,stekr)
database:sadd(bot_id.."VAMBAIR:Spam:Group"..msg.sender_user_id_,text) 
end
if veico then 
sendVoice(msg.chat_id_, msg.id_,veico,"")
database:sadd(bot_id.."VAMBAIR:Spam:Group"..msg.sender_user_id_,text) 
end
if video then 
sendVideo(msg.chat_id_, msg.id_,video,"")
database:sadd(bot_id.."VAMBAIR:Spam:Group"..msg.sender_user_id_,text) 
end
if anemi then 
sendAnimation(msg.chat_id_, msg.id_,anemi,"")   
database:sadd(bot_id.."VAMBAIR:Spam:Group"..msg.sender_user_id_,text) 
end
if document then
sendDocument(msg.chat_id_, msg.id_, document)   
database:sadd(bot_id.."VAMBAIR:Spam:Group"..msg.sender_user_id_,text) 
end  
if audio then
sendAudio(msg.chat_id_,msg.id_,audio)  
database:sadd(bot_id.."VAMBAIR:Spam:Group"..msg.sender_user_id_,text) 
end
if photo then
sendPhoto(msg.chat_id_,msg.id_,photo,photo_caption)
database:sadd(bot_id.."VAMBAIR:Spam:Group"..msg.sender_user_id_,text) 
end  
end
end
if text == 'السيرفر' and DevVAMBAIR(msg) then 
send(msg.chat_id_, msg.id_, io.popen([[
linux_version=`lsb_release -ds`
memUsedPrc=`free -m | awk 'NR==2{printf "%sMB/%sMB {%.2f%}\n", $3,$2,$3*100/$2 }'`
HardDisk=`df -lh | awk '{if ($6 == "/") { print $3"/"$2" ~ {"$5"}" }}'`
CPUPer=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
uptime=`uptime | awk -F'( |,|:)+' '{if ($7=="min") m=$6; else {if ($7~/^day/) {d=$6;h=$8;m=$9} else {h=$6;m=$7}}} {print d+0,"days,",h+0,"hours,",m+0,"minutes."}'`
echo '⇗ نظام التشغيل ⇖•\n*»» '"$linux_version"'*' 
echo '*———————————~*\n✺✔{ الذاكره العشوائيه } ⇎\n*»» '"$memUsedPrc"'*'
echo '*———————————~*\n✺✔{ وحـده الـتـخـزيـن } ⇎\n*»» '"$HardDisk"'*'
echo '*———————————~*\n✺✔{ الـمــعــالــج } ⇎\n*»» '"`grep -c processor /proc/cpuinfo`""Core ~ {$CPUPer%} "'*'
echo '*———————————~*\n✺✔{ الــدخــول } ⇎\n*»» '`whoami`'*'
echo '*———————————~*\n✺✔{ مـده تـشغيـل الـسـيـرفـر }⇎\n*»» '"$uptime"'*'
]]):read('*all'))  
end
------------------------------------------------------------------------
if text == ("مسح الردود العامه") and DevVAMBAIR(msg) then 
local list = database:smembers(bot_id.."VAMBAIR:List:Rd:Sudo")
for k,v in pairs(list) do
database:del(bot_id.."VAMBAIR:Add:Rd:Sudo:Gif"..v)   
database:del(bot_id.."VAMBAIR:Add:Rd:Sudo:vico"..v)   
database:del(bot_id.."VAMBAIR:Add:Rd:Sudo:stekr"..v)     
database:del(bot_id.."VAMBAIR:Add:Rd:Sudo:Text"..v)   
database:del(bot_id.."VAMBAIR:Add:Rd:Sudo:Photo"..v)
database:del(bot_id.."VAMBAIR:Add:Rd:Sudo:Video"..v)
database:del(bot_id.."VAMBAIR:Add:Rd:Sudo:File"..v)
database:del(bot_id.."VAMBAIR:Add:Rd:Sudo:Audio"..v)
database:del(bot_id.."VAMBAIR:List:Rd:Sudo")
end
send(msg.chat_id_, msg.id_,"◍ تم مسح الردود العامه")
end
if text == ("الردود العامه") and DevVAMBAIR(msg) then 
local list = database:smembers(bot_id.."VAMBAIR:List:Rd:Sudo")
text = "\n◍ قائمة الردود العامه \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉\n"
for k,v in pairs(list) do
if database:get(bot_id.."VAMBAIR:Add:Rd:Sudo:Gif"..v) then
db = "متحركه ◍"
elseif database:get(bot_id.."VAMBAIR:Add:Rd:Sudo:vico"..v) then
db = "بصمه ◍"
elseif database:get(bot_id.."VAMBAIR:Add:Rd:Sudo:stekr"..v) then
db = "ملصق ◍"
elseif database:get(bot_id.."VAMBAIR:Add:Rd:Sudo:Text"..v) then
db = "رساله ◍"
elseif database:get(bot_id.."VAMBAIR:Add:Rd:Sudo:Photo"..v) then
db = "صوره ◍"
elseif database:get(bot_id.."VAMBAIR:Add:Rd:Sudo:Video"..v) then
db = "فيديو ◍"
elseif database:get(bot_id.."VAMBAIR:Add:Rd:Sudo:File"..v) then
db = "ملف ◍"
elseif database:get(bot_id.."VAMBAIR:Add:Rd:Sudo:Audio"..v) then
db = "اغنيه ◍"
end
text = text..""..k.." >> ("..v..") » {"..db.."}\n"
end
if #list == 0 then
text = "◍ لا يوجد ردود للمطور"
end
send(msg.chat_id_, msg.id_,"["..text.."]")
end
if text or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ or msg.content_.audio_ or msg.content_.document_ or msg.content_.photo_ or msg.content_.video_ then  
local test = database:get(bot_id.."VAMBAIR:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_)
if database:get(bot_id.."VAMBAIR:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true1" then
database:del(bot_id.."VAMBAIR:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_)
if msg.content_.sticker_ then   
database:set(bot_id.."VAMBAIR:Add:Rd:Sudo:stekr"..test, msg.content_.sticker_.sticker_.persistent_id_)  
end   
if msg.content_.voice_ then  
database:set(bot_id.."VAMBAIR:Add:Rd:Sudo:vico"..test, msg.content_.voice_.voice_.persistent_id_)  
end   
if msg.content_.animation_ then   
database:set(bot_id.."VAMBAIR:Add:Rd:Sudo:Gif"..test, msg.content_.animation_.animation_.persistent_id_)  
end  
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."VAMBAIR:Add:Rd:Sudo:Text"..test, text)  
end  
if msg.content_.audio_ then
database:set(bot_id.."VAMBAIR:Add:Rd:Sudo:Audio"..test, msg.content_.audio_.audio_.persistent_id_)  
end
if msg.content_.document_ then
database:set(bot_id.."VAMBAIR:Add:Rd:Sudo:File"..test, msg.content_.document_.document_.persistent_id_)  
end
if msg.content_.video_ then
database:set(bot_id.."VAMBAIR:Add:Rd:Sudo:Video"..test, msg.content_.video_.video_.persistent_id_)  
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
database:set(bot_id.."VAMBAIR:Add:Rd:Sudo:Photo"..test, photo_in_group)  
end
send(msg.chat_id_, msg.id_,"◍ تم حفظ الرد بنجاح")
return false  
end  
end

if text == "اضف رد عام" and DevVAMBAIR(msg) then 
send(msg.chat_id_, msg.id_,"◍ ارسل الكلمه التري تريد اضافتها")
database:set(bot_id.."VAMBAIR:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text == "حذف رد عام" and DevVAMBAIR(msg) then 
send(msg.chat_id_, msg.id_,"◍ ارسل الكلمه التري تريد حذفها")
database:set(bot_id.."VAMBAIR:Set:On"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."VAMBAIR:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_, '◍ الان ارسل الرد الذي تريد اضافته \n◍ قد يكون (ملف - فديو - نص - ملصق - بصمه - متحركه )\n◍ يمكنك اضافه الى النص :\n- `#username` > اسم المستخدم\n- `#msgs` > عدد رسائل المستخدم\n- `#name` > اسم المستخدم\n- `#id` > ايدي المستخدم\n- `#stast` > موقع المستخدم \n- `#edit` > عدد السحكات ')
database:set(bot_id.."VAMBAIR:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_, "true1")
database:set(bot_id.."VAMBAIR:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_, text)
database:sadd(bot_id.."VAMBAIR:List:Rd:Sudo", text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."VAMBAIR:Set:On"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_,"◍ تم ازالة الرد من قائمه الردود العامه")
list = {"Add:Rd:Sudo:Audio","Add:Rd:Sudo:File","Add:Rd:Sudo:Video","Add:Rd:Sudo:Photo","Add:Rd:Sudo:Text","Add:Rd:Sudo:stekr","Add:Rd:Sudo:vico","Add:Rd:Sudo:Gif"}
for k,v in pairs(list) do
database:del(bot_id..'VAMBAIR:'..v..text)
end
database:del(bot_id.."VAMBAIR:Set:On"..msg.sender_user_id_..":"..msg.chat_id_)
database:srem(bot_id.."VAMBAIR:List:Rd:Sudo", text)
return false
end
end
----------
if text and text:match("^(.*)$") then
if database:get(bot_id.."botss:DRAGON:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_, '\n ◍ ارسل الكلمه تريد اضافتها')
database:set(bot_id.."botss:DRAGON:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_, "true1")
database:set(bot_id.."botss:DRAGON:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_, text)
database:sadd(bot_id.."botss:DRAGON:List:Rd:Sudo", text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."botss:DRAGON:Set:On"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_,"◍ تم حذف الرد من ردود المتعدده")
database:del(bot_id..'botss:DRAGON:Add:Rd:Sudo:Text'..text)
database:del(bot_id..'botss:DRAGON:Add:Rd:Sudo:Text1'..text)
database:del(bot_id..'botss:DRAGON:Add:Rd:Sudo:Text2'..text)
database:del(bot_id.."botss:DRAGON:Set:On"..msg.sender_user_id_..":"..msg.chat_id_)
database:srem(bot_id.."botss:DRAGON:List:Rd:Sudo", text)
return false
end
end
if text == ("مسح الردود المتعدده") and DevVAMBAIR(msg) then
local list = database:smembers(bot_id.."botss:DRAGON:List:Rd:Sudo")
for k,v in pairs(list) do  
database:del(bot_id.."botss:DRAGON:Add:Rd:Sudo:Text"..v) 
database:del(bot_id.."botss:DRAGON:Add:Rd:Sudo:Text1"..v) 
database:del(bot_id.."botss:DRAGON:Add:Rd:Sudo:Text2"..v)   
database:del(bot_id.."botss:DRAGON:List:Rd:Sudo")
end
send(msg.chat_id_, msg.id_,"◍ تم حذف ردود المتعدده")
end
------------
if text == ("الردود المتعدده") and DevVAMBAIR(msg) then
local list = database:smembers(bot_id.."botss:DRAGON:List:Rd:Sudo")
text = "\nقائمة ردود المتعدده \nٴ≪┉ ┉ ┉ ┉ ┉ ┉  ┉ ┉ ┉ ┉≫ٴ\n"
for k,v in pairs(list) do
db = "رساله "
text = text..""..k.." => {"..v.."} => {"..db.."}\n"
end
if #list == 0 then
text = "لا توجد ردود متعدده"
end
send(msg.chat_id_, msg.id_,"["..text.."]")
end
if text == "اضف رد متعدد" and DevVAMBAIR(msg) then
database:set(bot_id.."botss:DRAGON:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,true)
return send(msg.chat_id_, msg.id_,"◍ ارسل الرد الذي اريد اضافته")
end
if text == "حذف رد متعدد" and DevVAMBAIR(msg) then
database:set(bot_id.."botss:DRAGON:Set:On"..msg.sender_user_id_..":"..msg.chat_id_,true)
return send(msg.chat_id_, msg.id_,"◍ ارسل الان الكلمه لحذفها ")
end
if text then  
local test = database:get(bot_id.."botss:DRAGON:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_)
if database:get(bot_id.."botss:DRAGON:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true1" then
database:set(bot_id.."botss:DRAGON:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,'rd1')
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."botss:DRAGON:Add:Rd:Sudo:Text"..test, text)  
end  
send(msg.chat_id_, msg.id_,"◍ تم حفظ الرد الاول ارسل الرد الثاني")
return false  
end  
end
if text then  
local test = database:get(bot_id.."botss:DRAGON:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_)
if database:get(bot_id.."botss:DRAGON:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "rd1" then
database:set(bot_id.."botss:DRAGON:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,'rd2')
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."botss:DRAGON:Add:Rd:Sudo:Text1"..test, text)  
end  
send(msg.chat_id_, msg.id_,"◍ تم حفظ الرد الثاني ارسل الرد الثالث")
return false  
end  
end
if text then  
local test = database:get(bot_id.."botss:DRAGON:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_)
if database:get(bot_id.."botss:DRAGON:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "rd2" then
database:set(bot_id.."botss:DRAGON:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,'rd3')
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."botss:DRAGON:Add:Rd:Sudo:Text2"..test, text)  
end  
send(msg.chat_id_, msg.id_,"◍ تم حفظ الرد")
return false  
end  
end
if text then
local Text = database:get(bot_id.."botss:DRAGON:Add:Rd:Sudo:Text"..text)   
local Text1 = database:get(bot_id.."botss:DRAGON:Add:Rd:Sudo:Text1"..text)   
local Text2 = database:get(bot_id.."botss:DRAGON:Add:Rd:Sudo:Text2"..text)   
if Text or Text1 or Text2 then 
local texting = {
Text,
Text1,
Text2
}
Textes = math.random(#texting)
send(msg.chat_id_, msg.id_,texting[Textes])
end
end

if text and not database:get(bot_id.."VAMBAIR:Reply:Sudo"..msg.chat_id_) then
if not database:sismember(bot_id..'VAMBAIR:Spam:Group'..msg.sender_user_id_,text) then
local anemi = database:get(bot_id.."VAMBAIR:Add:Rd:Sudo:Gif"..text)   
local veico = database:get(bot_id.."VAMBAIR:Add:Rd:Sudo:vico"..text)   
local stekr = database:get(bot_id.."VAMBAIR:Add:Rd:Sudo:stekr"..text)     
local Text = database:get(bot_id.."VAMBAIR:Add:Rd:Sudo:Text"..text)   
local photo = database:get(bot_id.."VAMBAIR:Add:Rd:Sudo:Photo"..text)
local video = database:get(bot_id.."VAMBAIR:Add:Rd:Sudo:Video"..text)
local document = database:get(bot_id.."VAMBAIR:Add:Rd:Sudo:File"..text)
local audio = database:get(bot_id.."VAMBAIR:Add:Rd:Sudo:Audio"..text)

if Text then 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,data)
local NumMsg = database:get(bot_id..'VAMBAIR:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(msg.sender_user_id_,msg.chat_id_)
local message_edit = database:get(bot_id..'VAMBAIR:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = Text:gsub('#username',(data.username_ or 'لا يوجد')) 
local Text = Text:gsub('#name',data.first_name_)
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#edit',message_edit)
local Text = Text:gsub('#msgs',NumMsg)
local Text = Text:gsub('#stast',Status_Gps)
send(msg.chat_id_, msg.id_,Text)
database:sadd(bot_id.."VAMBAIR:Spam:Group"..msg.sender_user_id_,text) 
end,nil)
end
if stekr then 
sendSticker(msg.chat_id_,msg.id_,stekr) 
database:sadd(bot_id.."VAMBAIR:Spam:Group"..msg.sender_user_id_,text) 
end
if veico then 
sendVoice(msg.chat_id_, msg.id_,veico,"")
database:sadd(bot_id.."VAMBAIR:Spam:Group"..msg.sender_user_id_,text) 
end
if video then 
sendVideo(msg.chat_id_, msg.id_,video,"")
database:sadd(bot_id.."VAMBAIR:Spam:Group"..msg.sender_user_id_,text) 
end
if anemi then 
sendAnimation(msg.chat_id_, msg.id_,anemi,"")   
database:sadd(bot_id.."VAMBAIR:Spam:Group"..msg.sender_user_id_,text) 
end
if document then
sendDocument(msg.chat_id_, msg.id_, document)     
database:sadd(bot_id.."VAMBAIR:Spam:Group"..msg.sender_user_id_,text) 
end  
if audio then
sendAudio(msg.chat_id_,msg.id_,audio)  
database:sadd(bot_id.."VAMBAIR:Spam:Group"..msg.sender_user_id_,text) 
end
if photo then
sendPhoto(msg.chat_id_,msg.id_,photo,"")
database:sadd(bot_id.."VAMBAIR:Spam:Group"..msg.sender_user_id_,text) 
end  
end
end
if text == 'طرد المحذوفين' or text == 'مسح المحذوفين' then  
if Addictive(msg) then    
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),offset_ = 0,limit_ = 1000}, function(arg,del)
for k, v in pairs(del.members_) do
tdcli_function({ID = "GetUser",user_id_ = v.user_id_},function(b,data) 
if data.first_name_ == false then
Kick_Group(msg.chat_id_, data.id_)
end
end,nil)
end
send(msg.chat_id_, msg.id_,'◍ تم طرد الحسابات المحذوفه')
end,nil)
end
end

if text == "تفعيل الردود" and Owner(msg) then   
database:del(bot_id.."VAMBAIR:Reply:Manager"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"◍ تم تفعيل الردود") 
end
if text == "تعطيل الردود" and Owner(msg) then  
database:set(bot_id.."VAMBAIR:Reply:Manager"..msg.chat_id_,true)  
send(msg.chat_id_, msg.id_,"◍ تم تعطيل الردود" ) 
end
if text == "تفعيل الردود العامه" and Owner(msg) then   
database:del(bot_id.."VAMBAIR:Reply:Sudo"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"◍ تم تفعيل الردود العامه" ) 
end
if text == "تعطيل الردود العامه" and Owner(msg) then  
database:set(bot_id.."VAMBAIR:Reply:Sudo"..msg.chat_id_,true)   
send(msg.chat_id_, msg.id_,"◍ تم تعطيل الردود العامه" ) 
end
if text and text:match("^تنزيل الكل @(.*)$") and Owner(msg) then 
local username = text:match("^تنزيل الكل @(.*)$")
function Function_VAMBAIR(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"◍ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
if tonumber(SUDO) == tonumber(result.id_) then
send(msg.chat_id_, msg.id_,"◍ لا تستطيع تنزيل المطور الاساسي")
return false 
end
if database:sismember(bot_id.."VAMBAIR:Sudo:User",result.id_) then
dev = "المطور ،" else dev = "" end
if database:sismember(bot_id.."VAMBAIR:Basic:Constructor"..msg.chat_id_, result.id_) then
crr = "منشئ اساسي ،" else crr = "" end
if database:sismember(bot_id.."VAMBAIR:Constructor"..msg.chat_id_, result.id_) then
cr = "منشئ ،" else cr = "" end
if database:sismember(bot_id.."VAMBAIR:Manager"..msg.chat_id_, result.id_) then
own = "مدير ،" else own = "" end
if database:sismember(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_, result.id_) then
mod = "ادمن ،" else mod = "" end
if database:sismember(bot_id.."VAMBAIR:Special:User"..msg.chat_id_, result.id_) then
vip = "مميز ،" else vip = ""
end
if Rank_Checking(result.id_,msg.chat_id_) ~= false then
send(msg.chat_id_, msg.id_,"\n◍ تم تنزيل الشخص من الرتب التاليه \n◍ { "..dev..""..crr..""..cr..""..own..""..mod..""..vip.." } \n")
else
send(msg.chat_id_, msg.id_,"\n◍ ليس لديه رتب حتى استطيع تنزيله \n")
end
if tonumber(Id_Sudo) == tonumber(msg.sender_user_id_) then
database:srem(bot_id.."VAMBAIR:Sudo:User", result.id_)
database:srem(bot_id.."VAMBAIR:Basic:Constructor"..msg.chat_id_,result.id_)
database:srem(bot_id.."VAMBAIR:Constructor"..msg.chat_id_, result.id_)
database:srem(bot_id.."VAMBAIR:Manager"..msg.chat_id_, result.id_)
database:srem(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."VAMBAIR:Special:User"..msg.chat_id_, result.id_)
elseif database:sismember(bot_id.."VAMBAIR:Sudo:User",msg.sender_user_id_) then
database:srem(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."VAMBAIR:Special:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."VAMBAIR:Manager"..msg.chat_id_, result.id_)
database:srem(bot_id.."VAMBAIR:Constructor"..msg.chat_id_, result.id_)
database:srem(bot_id.."VAMBAIR:Basic:Constructor"..msg.chat_id_,result.id_)
elseif database:sismember(bot_id.."VAMBAIR:Basic:Constructor"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."VAMBAIR:Special:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."VAMBAIR:Manager"..msg.chat_id_, result.id_)
database:srem(bot_id.."VAMBAIR:Constructor"..msg.chat_id_, result.id_)
elseif database:sismember(bot_id.."VAMBAIR:Constructor"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."VAMBAIR:Special:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."VAMBAIR:Manager"..msg.chat_id_, result.id_)
elseif database:sismember(bot_id.."VAMBAIR:Manager"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_, result.id_)
database:srem(bot_id.."VAMBAIR:Special:User"..msg.chat_id_, result.id_)
end
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
end

if text == ("تنزيل الكل") and msg.reply_to_message_id_ ~= 0 and Owner(msg) then
function Function_VAMBAIR(extra, result, success)
if tonumber(SUDO) == tonumber(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"◍ لا تستطيع تنزيل المطور الاساسي")
return false 
end
if database:sismember(bot_id.."VAMBAIR:Sudo:User",result.sender_user_id_) then
dev = "المطور ،" else dev = "" end
if database:sismember(bot_id.."VAMBAIR:Basic:Constructor"..msg.chat_id_, result.sender_user_id_) then
crr = "منشئ اساسي ،" else crr = "" end
if database:sismember(bot_id.."VAMBAIR:Constructor"..msg.chat_id_, result.sender_user_id_) then
cr = "منشئ ،" else cr = "" end
if database:sismember(bot_id.."VAMBAIR:Manager"..msg.chat_id_, result.sender_user_id_) then
own = "مدير ،" else own = "" end
if database:sismember(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_, result.sender_user_id_) then
mod = "ادمن ،" else mod = "" end
if database:sismember(bot_id.."VAMBAIR:Special:User"..msg.chat_id_, result.sender_user_id_) then
vip = "مميز ،" else vip = ""
end
if Rank_Checking(result.sender_user_id_,msg.chat_id_) ~= false then
send(msg.chat_id_, msg.id_,"\n◍ تم تنزيل الشخص من الرتب التاليه \n◍ { "..dev..""..crr..""..cr..""..own..""..mod..""..vip.." } \n")
else
send(msg.chat_id_, msg.id_,"\n◍ ليس لديه رتب حتى استطيع تنزيله \n")
end
if tonumber(Id_Sudo) == tonumber(msg.sender_user_id_) then
database:srem(bot_id.."VAMBAIR:Sudo:User", result.sender_user_id_)
database:srem(bot_id.."VAMBAIR:Basic:Constructor"..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id.."VAMBAIR:Constructor"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."VAMBAIR:Manager"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."VAMBAIR:Special:User"..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id.."VAMBAIR:Sudo:User",msg.sender_user_id_) then
database:srem(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."VAMBAIR:Special:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."VAMBAIR:Manager"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."VAMBAIR:Constructor"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."VAMBAIR:Basic:Constructor"..msg.chat_id_,result.sender_user_id_)
elseif database:sismember(bot_id.."VAMBAIR:Basic:Constructor"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."VAMBAIR:Special:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."VAMBAIR:Manager"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."VAMBAIR:Constructor"..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id.."VAMBAIR:Constructor"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."VAMBAIR:Special:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."VAMBAIR:Manager"..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id.."VAMBAIR:Manager"..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id.."VAMBAIR:Special:User"..msg.chat_id_, result.sender_user_id_)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
end
if text == ("تنزيل الكل") and msg.reply_to_message_id_ == 0 and BasicConstructor(msg) then
send(msg.chat_id_, msg.id_,"\n◍ تم تنزيل جميع الرتب  \n")
database:del(bot_id.."VAMBAIR:Constructor"..msg.chat_id_)
database:del(bot_id.."VAMBAIR:Manager"..msg.chat_id_)
database:del(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_)
database:del(bot_id.."VAMBAIR:Special:User"..msg.chat_id_)
end
if text == "تاك للكل" and Addictive(msg) then
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""), offset_ = 0,limit_ = 200},function(ta,taha)
local t = "\n◍ قائمة الاعضاء \n━━━━━━━━━━━━━\n"
x = 0
local list = taha.members_
for k, v in pairs(list) do
x = x + 1
if database:get(bot_id.."VAMBAIR:User:Name"..v.user_id_) then
t = t..""..x.." - {[@"..database:get(bot_id.."VAMBAIR:User:Name"..v.user_id_).."]}\n"
else
t = t..""..x.." - {"..v.user_id_.."}\n"
end
end
send(msg.chat_id_,msg.id_,t)
end,nil)
end

if text == "رتبتي" then
local rtp = database:get(bot_id.."VAMBAIR:Comd:New:rt:User:"..msg.chat_id_..msg.sender_user_id_) or Get_Rank(msg.sender_user_id_,msg.chat_id_)
send(msg.chat_id_, msg.id_,"◍ رتبتك » "..rtp)
end
if text == "اسمي"  then 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(extra,result,success)
if result.first_name_  then
first_name = "◍ اسمك الاول ← {`"..(result.first_name_).."`}"
else
first_name = ""
end   
if result.last_name_ then 
last_name = "◍ اسمك الثاني ← {`"..result.last_name_.."`}" 
else
last_name = ""
end      
send(msg.chat_id_, msg.id_,first_name.."\n"..last_name) 
end,nil)
end 
if text == 'ايديي' then
send(msg.chat_id_, msg.id_,' ◍ ايديك » '..msg.sender_user_id_)
end
if text==("عدد الجروب") and Addictive(msg) then  
if msg.can_be_deleted_ == false then 
send(msg.chat_id_,msg.id_,"◍ البوت ليس ادمن هنا \n") 
return false  
end 
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,ta) 
tdcli_function({ID="GetChannelFull",channel_id_ = msg.chat_id_:gsub("-100","")},function(arg,data) 
local taha = "◍ عدد الادمنيه : "..data.administrator_count_..
"\n\n◍ عدد المطرودين : "..data.kicked_count_..
"\n\n◍ عدد الاعضاء : "..data.member_count_..
"\n\n◍ عدد رسائل الجروب : "..(msg.id_/2097152/0.5)..
"\n\n◍ اسم المجموعه : ["..ta.title_.."]"
send(msg.chat_id_, msg.id_, taha) 
end,nil)
end,nil)
end 
if text == "اطردني" or text == "طردني" then
if not database:get(bot_id.."VAMBAIR:Kick:Me"..msg.chat_id_) then
if Rank_Checking(msg.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, "\n◍ عذرا لا استطيع طرد ( "..Get_Rank(msg.sender_user_id_,msg.chat_id_).." )")
return false
end
tdcli_function({ID="ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=msg.sender_user_id_,status_={ID="ChatMemberStatusKicked"},},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,"◍ ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !") 
return false  
end
if (data and data.code_ and data.code_ == 3) then 
send(msg.chat_id_, msg.id_,"◍ البوت ليس ادمن يرجى ترقيتي !") 
return false  
end
if data and data.code_ and data.code_ == 400 and data.message_ == "USER_ADMIN_INVALID" then 
send(msg.chat_id_, msg.id_,"◍ عذرا لا استطيع طرد ادمنية المجموعه") 
return false  
end
if data and data.ID and data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"◍ تم طردك من المجموعه ") 
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = msg.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
return false
end
end,nil)   
else
send(msg.chat_id_, msg.id_,"◍ امر اطردني تم تعطيله من قبل المدراء ") 
end
end
--------------------
if text and text:match("^صيح (.*)$") then
local username = text:match("^صيح (.*)$") 
if not database:get(bot_id..'Seh:User'..msg.chat_id_) then
function start_function(extra, result, success)
if result and result.message_ and result.message_ == "USERNAME_NOT_OCCUPIED" then 
send(msg.chat_id_, msg.id_,' ◍ المعرف غلط ') 
return false  
end
if result and result.type_ and result.type_.channel_ and result.type_.channel_.ID == "Channel" then
send(msg.chat_id_, msg.id_,' ◍ لا استطيع اصيح معرف قنوات') 
return false  
end
if result.type_.user_.type_.ID == "UserTypeBot" then
send(msg.chat_id_, msg.id_,' ◍ لا استطيع اصيح معرف بوتات') 
return false  
end
if result and result.type_ and result.type_.channel_ and result.type_.channel_.is_supergroup_ == true then
send(msg.chat_id_, msg.id_,'◍ لا اسطيع صيح معرفات الجروبات') 
return false  
end
if result.id_ then
send(msg.chat_id_, msg.id_,' 💘😾تع يعم كلم الود دا قرفني ◍ [@'..username..']') 
return false
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
else
send(msg.chat_id_, msg.id_,' ◍ تم تعطيل امر صيح') 
end
return false
end
if text == 'تفعيل مين ضافني' and Owner(msg) then   
database:del(bot_id..'VAMBAIR:Lock:Added:Me'..msg.chat_id_)  
send(msg.id_,'◍ تم تفعيل امر منو ضافني') 
return false
end
if text == 'تعطيل مين ضافني' and Owner(msg) then  
database:set(bot_id..'VAMBAIR:Lock:Added:Me'..msg.chat_id_,true)  
send(msg.chat_id_, msg.id_,'◍ تم تعطيل امر مين ضافني') 
return false
end

if text and text:match("(.*)(مين ضافني)(.*)") then
if not database:get(bot_id..'VAMBAIR:Lock:Added:Me'..msg.chat_id_) then
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da and da.status_.ID == "ChatMemberStatusCreator" then
send(msg.chat_id_, msg.id_,'◍ انت منشئ المجموعه ') 
return false
end
local Added_Me = database:get(bot_id.."VAMBAIR:Who:Added:Me"..msg.chat_id_..':'..msg.sender_user_id_)
if Added_Me then 
tdcli_function ({ID = "GetUser",user_id_ = Added_Me},function(extra,result,success)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
Text = '◍ اهو ابن الكلب ده اللي ضافك..😹 ← '..Name
sendText(msg.chat_id_,Text,msg.id_/2097152/0.5,'md')
end,nil)
else
send(msg.chat_id_, msg.id_,'◍ نت دخلت عن طريق الرابط متعملش نفسك مهم هه..😂💘') 
end
end,nil)
else
send(msg.chat_id_, msg.id_,'◍ امر م ضافني تم تعطيله من قبل المدراء ') 
end
end
----------
if text == "تفعيل اطردني" and Owner(msg) then   
database:del(bot_id.."VAMBAIR:Kick:Me"..msg.chat_id_)  
Text = "\n◍ تم تفعيل امر اطردني"
send(msg.chat_id_, msg.id_,Text) 
end
if text == "تعطيل اطردني" and Owner(msg) then  
database:set(bot_id.."VAMBAIR:Kick:Me"..msg.chat_id_,true)  
Text = "\n◍ تم تعطيل امر اطردني"
send(msg.chat_id_, msg.id_,Text) 
end

if text and text:match("^رفع القيود @(.*)") and Owner(msg) then 
local username = text:match("^رفع القيود @(.*)") 
function Function_VAMBAIR(extra, result, success)
if result.id_ then
if DevVAMBAIR(msg) then
database:srem(bot_id.."VAMBAIR:GBan:User",result.id_)
database:srem(bot_id.."VAMBAIR:Ban:User"..msg.chat_id_,result.id_)
database:srem(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,result.id_)
usertext = "\n◍ العضو » ["..result.title_.."](t.me/"..(username or "kenwa")..")"
status  = "\n◍ تم الغاء القيود عنه"
texts = usertext..status
send(msg.chat_id_, msg.id_,texts)
else
database:srem(bot_id.."VAMBAIR:Ban:User"..msg.chat_id_,result.id_)
database:srem(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,result.id_)
Reply_Status(msg,result.id_,"reply","\n◍ تم الغاء القيود عنه")  
end
else
Text = "◍ المعرف غلط"
send(msg.chat_id_, msg.id_,Text)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
end
if text == "رفع القيود" and Owner(msg) then
function Function_VAMBAIR(extra, result, success)
if DevVAMBAIR(msg) then
database:srem(bot_id.."VAMBAIR:GBan:User",result.sender_user_id_)
database:srem(bot_id.."VAMBAIR:Ban:User"..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","\n◍ تم الغاء القيود عنه")  
else
database:srem(bot_id.."VAMBAIR:Ban:User"..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = "\n◍ العضو » ["..data.first_name_.."](t.me/"..(data.username_ or "kenwa")..")"
status  = "\n◍ تم الغاء القيود عنه"
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
end
if text and text:match("^كشف القيود @(.*)") and Owner(msg) then 
local username = text:match("^كشف القيود @(.*)") 
function Function_VAMBAIR(extra, result, success)
if result.id_ then
if database:sismember(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,result.id_) then
Muted = "مكتوم"
else
Muted = "غير مكتوم"
end
if database:sismember(bot_id.."VAMBAIR:Ban:User"..msg.chat_id_,result.id_) then
Ban = "محظور"
else
Ban = "غير محظور"
end
if database:sismember(bot_id.."VAMBAIR:GBan:User",result.id_) then
GBan = "محظور عام"
else
GBan = "غير محظور عام"
end
send(msg.chat_id_, msg.id_,"◍ الحظر العام » "..GBan.."\n◍ الحظر » "..Ban.."\n◍ الكتم » "..Muted)
else
send(msg.chat_id_, msg.id_,"◍ المعرف غلط")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
end

if text == "كشف القيود" and Owner(msg) then 
function Function_VAMBAIR(extra, result, success)
if database:sismember(bot_id.."VAMBAIR:Muted:User"..msg.chat_id_,result.sender_user_id_) then
Muted = "مكتوم"
else
Muted = "غير مكتوم"
end
if database:sismember(bot_id.."VAMBAIR:Ban:User"..msg.chat_id_,result.sender_user_id_) then
Ban = "محظور"
else
Ban = "غير محظور"
end
if database:sismember(bot_id.."VAMBAIR:GBan:User",result.sender_user_id_) then
GBan = "محظور عام"
else
GBan = "غير محظور عام"
end
Textt = "◍ الحظر العام » "..GBan.."\n◍ الحظر » "..Ban.."\n◍ الكتم » "..Muted..""
send(msg.chat_id_, msg.id_,Textt)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
end

if text and text:match("^ضع اسم (.*)") and Owner(msg) or text and text:match("^وضع اسم (.*)") and Owner(msg) then 
local Name = text:match("^ضع اسم (.*)") or text:match("^وضع اسم (.*)") 
tdcli_function ({ ID = "ChangeChatTitle",chat_id_ = msg.chat_id_,title_ = Name },function(arg,data) 
if data.message_ == "Channel chat title can be changed by administrators only" then
send(msg.chat_id_,msg.id_,"◍ البوت ليس ادمن يرجى ترقيتي !")  
return false  
end 
if data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"◍ ليست لدي صلاحية تغير اسم المجموعه")  
else
send(msg.chat_id_,msg.id_,"◍ تم تغيير اسم المجموعه الى {["..Name.."]}")  
end
end,nil) 
end

if text ==("رفع الادمنيه") and Owner(msg) then
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local nu2 = 0
local admins = data.members_
for i=0 , #admins do
if data.members_[i].bot_info_ == false and data.members_[i].status_.ID == "ChatMemberStatusEditor" then
database:sadd(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_, admins[i].user_id_)
nu2 = nu2 + 1
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,b) 
if b.username_ == true then
end
if b.first_name_ == false then
database:srem(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end,nil)   
else
database:srem(bot_id.."VAMBAIR:Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end
if nu2 == 0 then
send(msg.chat_id_, msg.id_,"◍ لا توجد ادمنية ليتم رفعهم") 
else
send(msg.chat_id_, msg.id_,"◍ تمت ترقية { "..nu2.." } من ادمنية المجموعه") 
end
end,nil)   
end
-------
if text == ("رفع مطور ثانوي") and tonumber(msg.reply_to_message_id_) ~= 0 and DevVAMBAIR(msg) then
function Function_BOYKA(extra, result, success)
database:sadd(bot_id.."DEV:Sudo:T", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم ترقيته مطور ثانوي في البوت")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_BOYKA, nil)
return false 
end
if text and text:match("^رفع مطور ثانوي @(.*)$") and DevVAMBAIR(msg) then
local username = text:match("^رفع مطور ثانوي @(.*)$")
function Function_BOYKA(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"◍ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end      
database:sadd(bot_id.."DEV:Sudo:T", result.id_)
Reply_Status(msg,result.id_,"reply","◍ تم ترقيته مطور ثانوي في البوت")  
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_BOYKA, nil)
return false 
end
if text and text:match("^رفع مطور ثانوي (%d+)$") and DevVAMBAIR(msg) then
local userid = text:match("^رفع مطور ثانوي (%d+)$")
database:sadd(bot_id.."DEV:Sudo:T", userid)
Reply_Status(msg,userid,"reply","◍ تم ترقيته مطور ثانوي في البوت")  
return false 
end
if text == ("تنزيل مطور ثانوي") and tonumber(msg.reply_to_message_id_) ~= 0 and DevVAMBAIR(msg) then
function Function_BOYKA(extra, result, success)
database:srem(bot_id.."DEV:Sudo:T", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم تنزيله من المطور ثانويين")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_BOYKA, nil)
return false 
end
if text and text:match("^تنزيل مطور ثانوي @(.*)$") and DevVAMBAIR(msg) then
local username = text:match("^تنزيل مطور ثانوي @(.*)$")
function Function_BOYKA(extra, result, success)
if result.id_ then
database:srem(bot_id.."DEV:Sudo:T", result.id_)
Reply_Status(msg,result.id_,"reply","◍ تم تنزيله من المطور ثانويين")  
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_BOYKA, nil)
return false
end  
if text and text:match("^تنزيل مطور ثانوي (%d+)$") and DevVAMBAIR(msg) then
local userid = text:match("^تنزيل مطور ثانوي (%d+)$")
database:srem(bot_id.."DEV:Sudo:T", userid)
Reply_Status(msg,userid,"reply","◍ تم تنزيله من المطور ثانويين")  
return false 
end
if text == ("الثانويين") and DevVAMBAIR(msg) then
local list = database:smembers(bot_id.."DEV:Sudo:T")
t = "\n◍ قائمة مطورين الثانويين للبوت \n ╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "◍ لا يوجد مطورين ثانويين"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("مسح الثانويين") and DevVAMBAIR(msg) then
database:del(bot_id.."DEV:Sudo:T")
send(msg.chat_id_, msg.id_, "\n◍ تم مسح قائمة المطورين الثانويين  ")
end
-------
if text ==("المنشئ") then
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
tdcli_function ({ID = "GetUser",user_id_ = owner_id},function(arg,b) 
if b.first_name_ == false then
send(msg.chat_id_, msg.id_,"◍ حساب المنشئ محذوف")
return false  
end
local UserName = (b.username_ or "BANDA1M")
send(msg.chat_id_, msg.id_,"◍ منشئ المجموعه ~ ["..b.first_name_.."](T.me/"..UserName..")")  
end,nil)   
end
end
end,nil)   
end
if text ==("رفع المنشئ") and DevBot(msg) then 
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
end
end
tdcli_function ({ID = "GetUser",user_id_ = owner_id},function(arg,b) 
if b.first_name_ == false then
send(msg.chat_id_, msg.id_,"◍ حساب المنشئ محذوف")
return false  
end
local UserName = (b.username_ or "BANDA1M")
send(msg.chat_id_, msg.id_,"◍ تم ترقية منشئ المجموعه ~ ["..b.first_name_.."](T.me/"..UserName..")")  
database:sadd(bot_id.."VAMBAIR:Basic:Constructor"..msg.chat_id_,b.id_)
end,nil)   
end,nil)   
end

if text == "غادر" then 
if DevBot(msg) and not database:get(bot_id.."VAMBAIR:Left:Bot"..msg.chat_id_) then 
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
send(msg.chat_id_, msg.id_,"◍ تم مغادرة المجموعه") 
database:srem(bot_id.."VAMBAIR:Chek:Groups",msg.chat_id_)  
end
return false  
end
if text and text:match("^غادر (-%d+)$") then
local GP_ID = {string.match(text, "^(غادر) (-%d+)$")}
if DevBot(msg) and not database:get(bot_id.."VAMBAIR:Left:Bot"..msg.chat_id_) then 
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=GP_ID[2],user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
send(msg.chat_id_, msg.id_,"◍ تم مغادرة المجموعه") 
send(GP_ID[2], 0,"◍ تم مغادرة المجموعه بامر من مطور البوت") 
database:srem(bot_id.."VAMBAIR:Chek:Groups",GP_ID[2])  
return false 
end
end
if text == "تفعيل المغادره" and DevVAMBAIR(msg) then   
database:del(bot_id.."VAMBAIR:Left:Bot"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"◍ تم تفعيل مغادرة البوت") 
return false 
end
if text == "تعطيل المغادره" and DevVAMBAIR(msg) then  
database:set(bot_id.."VAMBAIR:Left:Bot"..msg.chat_id_,true)   
send(msg.chat_id_, msg.id_, "◍ تم تعطيل مغادرة البوت") 
return false 
end
if text == (database:get(bot_id.."VAMBAIR:Name:Bot") or "العزايزي") then
Namebot = (database:get(bot_id.."VAMBAIR:Name:Bot") or "العزايزي")
local namebot = {
'◍ يوه '..Namebot..' زهق منك😒',
'◍ نعم ياعيون '..Namebot..' 😻💓',
'◍ عايز اي من '..Namebot..' 🙄💛',
'◍ اي يا قلب '..Namebot..' 💋😉', 
'◍ اي ياروحي انا '..Namebot..'😸🦋',
}
name = math.random(#namebot)
send(msg.chat_id_, msg.id_, namebot[name]) 
return false 
end

if text == "بوت" then
Namebot = (database:get(bot_id.."VAMBAIR:Name:Bot") or "العزايزي")
if DevBot(msg) then
send(msg.chat_id_, msg.id_,'◍ نعم حبيبي المطور..🥺💘')
else
if BasicConstructor(msg) then
send(msg.chat_id_, msg.id_,'◍ نعم حبيبي المنشئ الاساسي..🥺💘')
else
if Constructor(msg) then
send(msg.chat_id_, msg.id_,'◍ نعم حبيبي المنشئ..🥺💘')
else
if Addictive(msg) then 
send(msg.chat_id_, msg.id_,'◍ نعم حبيبي الادمن..🥺💘')
else
if Owner(msg) then 
send(msg.chat_id_, msg.id_,'◍ نعم حبيبي المدير..🥺💘')
else
if Vips(msg) then 
send(msg.chat_id_, msg.id_,'◍ نعم حبيبي المميز..🥺💘')
else
send(msg.chat_id_, msg.id_,"◍ نعم حبيبي العضو..🥺💘") 
end
end
end
end
end
end
end

if text == "تغير اسم البوت" or text == "تغيير اسم البوت" then 
if DevVAMBAIR(msg) then
database:setex(bot_id.."VAMBAIR:Set:Name:Bot"..msg.sender_user_id_,300,true) 
send(msg.chat_id_, msg.id_,"◍ ارسل لي الاسم الان ")  
end
return false
end

if text ==("مسح المطرودين") and Addictive(msg) then    
local function delbans(extra, result)  
if not msg.can_be_deleted_ == true then  
send(msg.chat_id_, msg.id_, "◍ يرجى ترقيتي ادمن هنا") 
return false
end  
local num = 0 
for k,y in pairs(result.members_) do 
num = num + 1  
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = y.user_id_, status_ = { ID = "ChatMemberStatusLeft"}, }, dl_cb, nil)  
end  
send(msg.chat_id_, msg.id_,"◍ تم الغاء الحظر عن *~ "..num.." ~* اشخاص ") 
end    
tdcli_function({ID="GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersKicked"},offset_ = 0,limit_ = 200}, delbans, {chat_id_ = msg.chat_id_, msg_id_ = msg.id_})    
end
if text=="اذاعه خاص" and msg.reply_to_message_id_ == 0 and DevBot(msg) then 
if database:get(bot_id.."VAMBAIR:Status:Bc") and not DevBOYKAW(msg) then 
send(msg.chat_id_, msg.id_,"◍ الاذاعه معطله من قبل المطور الاساسي")
return false
end
database:setex(bot_id.."VAMBAIR:VAMBAIR:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"◍ ارسل لي سواء ~ { ملصق, متحركه, صوره, رساله }\n◍ للخروج ارسل الغاء ") 
return false
end 
if text=="اذاعه" and msg.reply_to_message_id_ == 0 and DevBot(msg) then 
if database:get(bot_id.."VAMBAIR:Status:Bc") and not DevBOYKAW(msg) then 
send(msg.chat_id_, msg.id_,"◍ الاذاعه معطله من قبل المطور الاساسي")
return false
end
database:setex(bot_id.."VAMBAIR:VAMBAIR:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"◍ ارسل لي سواء ~ { ملصق, متحركه, صوره, رساله }\n◍ للخروج ارسل الغاء ") 
return false
end  
if text=="اذاعه بالتثبيت" and msg.reply_to_message_id_ == 0 and DevBot(msg) then 
if database:get(bot_id.."VAMBAIR:Status:Bc") and not DevBOYKAW(msg) then 
send(msg.chat_id_, msg.id_,"◍ الاذاعه معطله من قبل المطور الاساسي")
return false
end
database:setex(bot_id.."VAMBAIR:VAMBAIR:Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"◍ ارسل لي سواء ~ { ملصق, متحركه, صوره, رساله }\n◍ للخروج ارسل الغاء ") 
return false
end  
if text=="اذاعه بالتوجيه" and msg.reply_to_message_id_ == 0  and DevBot(msg) then 
if database:get(bot_id.."VAMBAIR:Status:Bc") and not DevBOYKAW(msg) then 
send(msg.chat_id_, msg.id_,"◍ الاذاعه معطله من قبل المطور الاساسي")
return false
end
database:setex(bot_id.."VAMBAIR:VAMBAIR:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"◍ ارسل لي التوجيه الان") 
return false
end 
if text=="اذاعه بالتوجيه خاص" and msg.reply_to_message_id_ == 0  and DevBot(msg) then 
if database:get(bot_id.."VAMBAIR:Status:Bc") and not DevBOYKAW(msg) then 
send(msg.chat_id_, msg.id_,"◍ الاذاعه معطله من قبل المطور الاساسي")
return false
end
database:setex(bot_id.."VAMBAIR:VAMBAIR:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"◍ ارسل لي التوجيه الان") 
return false
end 

if text == "تفعيل الاذاعه" and DevBOYKAW(msg) then  
database:del(bot_id.."VAMBAIR:Status:Bc") 
send(msg.chat_id_, msg.id_,"\n◍ تم تفعيل الاذاعه " ) 
return false
end 
if text == "تعطيل الاذاعه" and DevBOYKAW(msg) then  
database:set(bot_id.."VAMBAIR:Status:Bc",true) 
send(msg.chat_id_, msg.id_,"\n◍ تم تعطيل الاذاعه") 
return false
end 

if text == "الاعدادات" and Addictive(msg) then    
if database:get(bot_id.."VAMBAIR:lockpin"..msg.chat_id_) then    
lock_pin = "✓"
else 
lock_pin = "✘"    
end
if database:get(bot_id.."VAMBAIR:Lock:tagservr"..msg.chat_id_) then    
lock_tagservr = "✓"
else 
lock_tagservr = "✘"    
end
if database:get(bot_id.."VAMBAIR:Lock:text"..msg.chat_id_) then    
lock_text = "✓"
else 
lock_text = "✘"    
end
if database:get(bot_id.."VAMBAIR:Lock:AddMempar"..msg.chat_id_) == "kick" then
lock_add = "✓"
else 
lock_add = "✘"    
end    
if database:get(bot_id.."VAMBAIR:Lock:Join"..msg.chat_id_) == "kick" then
lock_join = "✓"
else 
lock_join = "✘"    
end    
if database:get(bot_id.."VAMBAIR:Lock:edit"..msg.chat_id_) then    
lock_edit = "✓"
else 
lock_edit = "✘"    
end
if database:get(bot_id.."VAMBAIR:Get:Welcome:Group"..msg.chat_id_) then
welcome = "✓"
else 
welcome = "✘"    
end
if database:hget(bot_id.."VAMBAIR:flooding:settings:"..msg.chat_id_, "flood") == "kick" then     
flood = "بالطرد"     
elseif database:hget(bot_id.."VAMBAIR:flooding:settings:"..msg.chat_id_,"flood") == "keed" then     
flood = "بالتقييد"     
elseif database:hget(bot_id.."VAMBAIR:flooding:settings:"..msg.chat_id_,"flood") == "mute" then     
flood = "بالكتم"           
elseif database:hget(bot_id.."VAMBAIR:flooding:settings:"..msg.chat_id_,"flood") == "del" then     
flood = "بالمسح"           
else     
flood = "✘"     
end
if database:get(bot_id.."VAMBAIR:Lock:Photo"..msg.chat_id_) == "del" then
lock_photo = "✓" 
elseif database:get(bot_id.."VAMBAIR:Lock:Photo"..msg.chat_id_) == "ked" then 
lock_photo = "بالتقييد"   
elseif database:get(bot_id.."VAMBAIR:Lock:Photo"..msg.chat_id_) == "ktm" then 
lock_photo = "بالكتم"    
elseif database:get(bot_id.."VAMBAIR:Lock:Photo"..msg.chat_id_) == "kick" then 
lock_photo = "بالطرد"   
else
lock_photo = "✘"   
end    
if database:get(bot_id.."VAMBAIR:Lock:Contact"..msg.chat_id_) == "del" then
lock_phon = "✓" 
elseif database:get(bot_id.."VAMBAIR:Lock:Contact"..msg.chat_id_) == "ked" then 
lock_phon = "بالتقييد"    
elseif database:get(bot_id.."VAMBAIR:Lock:Contact"..msg.chat_id_) == "ktm" then 
lock_phon = "بالكتم"    
elseif database:get(bot_id.."VAMBAIR:Lock:Contact"..msg.chat_id_) == "kick" then 
lock_phon = "بالطرد"    
else
lock_phon = "✘"    
end    
if database:get(bot_id.."VAMBAIR:Lock:Link"..msg.chat_id_) == "del" then
lock_links = "✓"
elseif database:get(bot_id.."VAMBAIR:Lock:Link"..msg.chat_id_) == "ked" then
lock_links = "بالتقييد"    
elseif database:get(bot_id.."VAMBAIR:Lock:Link"..msg.chat_id_) == "ktm" then
lock_links = "بالكتم"    
elseif database:get(bot_id.."VAMBAIR:Lock:Link"..msg.chat_id_) == "kick" then
lock_links = "بالطرد"    
else
lock_links = "✘"    
end
if database:get(bot_id.."VAMBAIR:Lock:Cmd"..msg.chat_id_) == "del" then
lock_cmds = "✓"
elseif database:get(bot_id.."VAMBAIR:Lock:Cmd"..msg.chat_id_) == "ked" then
lock_cmds = "بالتقييد"    
elseif database:get(bot_id.."VAMBAIR:Lock:Cmd"..msg.chat_id_) == "ktm" then
lock_cmds = "بالكتم"   
elseif database:get(bot_id.."VAMBAIR:Lock:Cmd"..msg.chat_id_) == "kick" then
lock_cmds = "بالطرد"    
else
lock_cmds = "✘"    
end
if database:get(bot_id.."VAMBAIR:Lock:User:Name"..msg.chat_id_) == "del" then
lock_user = "✓"
elseif database:get(bot_id.."VAMBAIR:Lock:User:Name"..msg.chat_id_) == "ked" then
lock_user = "بالتقييد"    
elseif database:get(bot_id.."VAMBAIR:Lock:User:Name"..msg.chat_id_) == "ktm" then
lock_user = "بالكتم"    
elseif database:get(bot_id.."VAMBAIR:Lock:User:Name"..msg.chat_id_) == "kick" then
lock_user = "بالطرد"    
else
lock_user = "✘"    
end
if database:get(bot_id.."VAMBAIR:Lock:hashtak"..msg.chat_id_) == "del" then
lock_hash = "✓"
elseif database:get(bot_id.."VAMBAIR:Lock:hashtak"..msg.chat_id_) == "ked" then 
lock_hash = "بالتقييد"    
elseif database:get(bot_id.."VAMBAIR:Lock:hashtak"..msg.chat_id_) == "ktm" then 
lock_hash = "بالكتم"    
elseif database:get(bot_id.."VAMBAIR:Lock:hashtak"..msg.chat_id_) == "kick" then 
lock_hash = "بالطرد"    
else
lock_hash = "✘"    
end
if database:get(bot_id.."VAMBAIR:Lock:vico"..msg.chat_id_) == "del" then
lock_muse = "✓"
elseif database:get(bot_id.."VAMBAIR:Lock:vico"..msg.chat_id_) == "ked" then 
lock_muse = "بالتقييد"    
elseif database:get(bot_id.."VAMBAIR:Lock:vico"..msg.chat_id_) == "ktm" then 
lock_muse = "بالكتم"    
elseif database:get(bot_id.."VAMBAIR:Lock:vico"..msg.chat_id_) == "kick" then 
lock_muse = "بالطرد"    
else
lock_muse = "✘"    
end 
if database:get(bot_id.."VAMBAIR:Lock:Video"..msg.chat_id_) == "del" then
lock_ved = "✓"
elseif database:get(bot_id.."VAMBAIR:Lock:Video"..msg.chat_id_) == "ked" then 
lock_ved = "بالتقييد"    
elseif database:get(bot_id.."VAMBAIR:Lock:Video"..msg.chat_id_) == "ktm" then 
lock_ved = "بالكتم"    
elseif database:get(bot_id.."VAMBAIR:Lock:Video"..msg.chat_id_) == "kick" then 
lock_ved = "بالطرد"    
else
lock_ved = "✘"    
end
if database:get(bot_id.."VAMBAIR:Lock:Animation"..msg.chat_id_) == "del" then
lock_gif = "✓"
elseif database:get(bot_id.."VAMBAIR:Lock:Animation"..msg.chat_id_) == "ked" then 
lock_gif = "بالتقييد"    
elseif database:get(bot_id.."VAMBAIR:Lock:Animation"..msg.chat_id_) == "ktm" then 
lock_gif = "بالكتم"    
elseif database:get(bot_id.."VAMBAIR:Lock:Animation"..msg.chat_id_) == "kick" then 
lock_gif = "بالطرد"    
else
lock_gif = "✘"    
end
if database:get(bot_id.."VAMBAIR:Lock:Sticker"..msg.chat_id_) == "del" then
lock_ste = "✓"
elseif database:get(bot_id.."VAMBAIR:Lock:Sticker"..msg.chat_id_) == "ked" then 
lock_ste = "بالتقييد "    
elseif database:get(bot_id.."VAMBAIR:Lock:Sticker"..msg.chat_id_) == "ktm" then 
lock_ste = "بالكتم "    
elseif database:get(bot_id.."VAMBAIR:Lock:Sticker"..msg.chat_id_) == "kick" then 
lock_ste = "بالطرد"    
else
lock_ste = "✘"    
end
if database:get(bot_id.."VAMBAIR:Lock:geam"..msg.chat_id_) == "del" then
lock_geam = "✓"
elseif database:get(bot_id.."VAMBAIR:Lock:geam"..msg.chat_id_) == "ked" then 
lock_geam = "بالتقييد"    
elseif database:get(bot_id.."VAMBAIR:Lock:geam"..msg.chat_id_) == "ktm" then 
lock_geam = "بالكتم"    
elseif database:get(bot_id.."VAMBAIR:Lock:geam"..msg.chat_id_) == "kick" then 
lock_geam = "بالطرد"    
else
lock_geam = "✘"    
end    
if database:get(bot_id.."VAMBAIR:Lock:vico"..msg.chat_id_) == "del" then
lock_vico = "✓"
elseif database:get(bot_id.."VAMBAIR:Lock:vico"..msg.chat_id_) == "ked" then 
lock_vico = "بالتقييد"    
elseif database:get(bot_id.."VAMBAIR:Lock:vico"..msg.chat_id_) == "ktm" then 
lock_vico = "بالكتم"    
elseif database:get(bot_id.."VAMBAIR:Lock:vico"..msg.chat_id_) == "kick" then 
lock_vico = "بالطرد"    
else
lock_vico = "✘"    
end    
if database:get(bot_id.."VAMBAIR:Lock:Keyboard"..msg.chat_id_) == "del" then
lock_inlin = "✓"
elseif database:get(bot_id.."VAMBAIR:Lock:Keyboard"..msg.chat_id_) == "ked" then 
lock_inlin = "بالتقييد"
elseif database:get(bot_id.."VAMBAIR:Lock:Keyboard"..msg.chat_id_) == "ktm" then 
lock_inlin = "بالكتم"    
elseif database:get(bot_id.."VAMBAIR:Lock:Keyboard"..msg.chat_id_) == "kick" then 
lock_inlin = "بالطرد"
else
lock_inlin = "✘"
end
if database:get(bot_id.."VAMBAIR:Lock:forward"..msg.chat_id_) == "del" then
lock_fwd = "✓"
elseif database:get(bot_id.."VAMBAIR:Lock:forward"..msg.chat_id_) == "ked" then 
lock_fwd = "بالتقييد"    
elseif database:get(bot_id.."VAMBAIR:Lock:forward"..msg.chat_id_) == "ktm" then 
lock_fwd = "بالكتم"    
elseif database:get(bot_id.."VAMBAIR:Lock:forward"..msg.chat_id_) == "kick" then 
lock_fwd = "بالطرد"    
else
lock_fwd = "✘"    
end    
if database:get(bot_id.."VAMBAIR:Lock:Document"..msg.chat_id_) == "del" then
lock_file = "✓"
elseif database:get(bot_id.."VAMBAIR:Lock:Document"..msg.chat_id_) == "ked" then 
lock_file = "بالتقييد"    
elseif database:get(bot_id.."VAMBAIR:Lock:Document"..msg.chat_id_) == "ktm" then 
lock_file = "بالكتم"    
elseif database:get(bot_id.."VAMBAIR:Lock:Document"..msg.chat_id_) == "kick" then 
lock_file = "بالطرد"    
else
lock_file = "✘"    
end    
if database:get(bot_id.."VAMBAIR:Lock:Unsupported"..msg.chat_id_) == "del" then
lock_self = "✓"
elseif database:get(bot_id.."VAMBAIR:Lock:Unsupported"..msg.chat_id_) == "ked" then 
lock_self = "بالتقييد"    
elseif database:get(bot_id.."VAMBAIR:Lock:Unsupported"..msg.chat_id_) == "ktm" then 
lock_self = "بالكتم"    
elseif database:get(bot_id.."VAMBAIR:Lock:Unsupported"..msg.chat_id_) == "kick" then 
lock_self = "بالطرد"    
else
lock_self = "✘"    
end
if database:get(bot_id.."VAMBAIR:Lock:Bot:kick"..msg.chat_id_) == "del" then
lock_bots = "✓"
elseif database:get(bot_id.."VAMBAIR:Lock:Bot:kick"..msg.chat_id_) == "ked" then
lock_bots = "بالتقييد"   
elseif database:get(bot_id.."VAMBAIR:Lock:Bot:kick"..msg.chat_id_) == "kick" then
lock_bots = "بالطرد"    
else
lock_bots = "✘"    
end
if database:get(bot_id.."VAMBAIR:Lock:Markdaun"..msg.chat_id_) == "del" then
lock_mark = "✓"
elseif database:get(bot_id.."VAMBAIR:Lock:Markdaun"..msg.chat_id_) == "ked" then 
lock_mark = "بالتقييد"    
elseif database:get(bot_id.."VAMBAIR:Lock:Markdaun"..msg.chat_id_) == "ktm" then 
lock_mark = "بالكتم"    
elseif database:get(bot_id.."VAMBAIR:Lock:Markdaun"..msg.chat_id_) == "kick" then 
lock_mark = "بالطرد"    
else
lock_mark = "✘"    
end
if database:get(bot_id.."VAMBAIR:Lock:Spam"..msg.chat_id_) == "del" then    
lock_spam = "✓"
elseif database:get(bot_id.."VAMBAIR:Lock:Spam"..msg.chat_id_) == "ked" then 
lock_spam = "بالتقييد"    
elseif database:get(bot_id.."VAMBAIR:Lock:Spam"..msg.chat_id_) == "ktm" then 
lock_spam = "بالكتم"    
elseif database:get(bot_id.."VAMBAIR:Lock:Spam"..msg.chat_id_) == "kick" then 
lock_spam = "بالطرد"    
else
lock_spam = "✘"    
end        
if not database:get(bot_id.."VAMBAIR:Reply:Manager"..msg.chat_id_) then
rdmder = "✓"
else
rdmder = "✘"
end
if not database:get(bot_id.."VAMBAIR:Reply:Sudo"..msg.chat_id_) then
rdsudo = "✓"
else
rdsudo = "✘"
end
if not database:get(bot_id.."VAMBAIR:Lock:ID:Bot"..msg.chat_id_)  then
idgp = "✓"
else
idgp = "✘"
end
if not database:get(bot_id.."VAMBAIR:Lock:ID:Bot:Photo"..msg.chat_id_) then
idph = "✓"
else
idph = "✘"
end
if not database:get(bot_id.."VAMBAIR:Lock:kick"..msg.chat_id_)  then
setadd = "✓"
else
setadd = "✘"
end
if not database:get(bot_id.."VAMBAIR:Lock:Add:Bot"..msg.chat_id_)  then
banm = "✓"
else
banm = "✘"
end
if not database:get(bot_id.."VAMBAIR:Kick:Me"..msg.chat_id_) then
kickme = "✓"
else
kickme = "✘"
end
Num_Flood = database:hget(bot_id.."VAMBAIR:flooding:settings:"..msg.chat_id_,"floodmax") or 0
local text = 
"*\n◍ ااعدادات المجموعه "..
"\n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ "..
"\n◍ علامة ال {✓} تعني مفعل"..
"\n◍ علامة ال {✘} تعني معطل"..
"\n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ "..
"\n◍ الروابط » "..lock_links..
"\n".."◍ المعرفات » "..lock_user..
"\n".."◍ التاك » "..lock_hash..
"\n".."◍ البوتات » "..lock_bots..
"\n".."◍ التوجيه » "..lock_fwd..
"\n".."◍ التثبيت » "..lock_pin..
"\n".."◍ الاشعارات » "..lock_tagservr..
"\n".."◍ الماركدون » "..lock_mark..
"\n".."◍ التعديل » "..lock_edit..
"\n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ "..
"\n".."◍ الكلايش » "..lock_spam..
"\n".."◍ الكيبورد » "..lock_inlin..
"\n".."◍ الاغاني » "..lock_vico..
"\n".."◍ المتحركه » "..lock_gif..
"\n".."◍ الملفات » "..lock_file..
"\n".."◍ الدردشه » "..lock_text..
"\n".."◍ الفيديو » "..lock_ved..
"\n".."◍ الصور » "..lock_photo..
"\n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ "..
"\n".."◍ الصوت » "..lock_muse..
"\n".."◍ الملصقات » "..lock_ste..
"\n".."◍ الجهات » "..lock_phon..
"\n".."◍ الدخول » "..lock_join..
"\n".."◍ الاضافه » "..lock_add..
"\n".."◍ السيلفي » "..lock_self..
"\n".."◍ الالعاب » "..lock_geam..
"\n".."◍ التكرار » "..flood..
"\n".."◍ الترحيب » "..welcome..
"\n".."◍ عدد التكرار » "..Num_Flood..
"\n\n.*"
send(msg.chat_id_, msg.id_,text)     
end    
if text == "تعطيل اوامر التحشيش" and Owner(msg) then    
send(msg.chat_id_, msg.id_, '◍ تم تعطيل اوامر التحشيش')
database:set(bot_id.."VAMBAIR:Fun_Bots"..msg.chat_id_,"true")
end
if text == "تفعيل اوامر التحشيش" and Owner(msg) then    
send(msg.chat_id_, msg.id_,'◍ تم تفعيل اوامر التحشيش')
database:del(bot_id.."VAMBAIR:Fun_Bots"..msg.chat_id_)
end

if text == 'تفعيل الايدي' and Owner(msg) then   
database:del(bot_id..'VAMBAIR:Lock:ID:Bot'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,'◍ تم تفعيل الايدي') 
end
if text == 'تعطيل الايدي' and Owner(msg) then  
database:set(bot_id..'VAMBAIR:Lock:ID:Bot'..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,'◍ تم تعطيل الايدي') 
end
if text == 'تفعيل الايدي بالصوره' and Owner(msg) then   
database:del(bot_id..'VAMBAIR:Lock:ID:Bot:Photo'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,'◍ تم تفعيل الايدي بالصوره') 
end
if text == 'تعطيل الايدي بالصوره' and Owner(msg) then  
database:set(bot_id..'VAMBAIR:Lock:ID:Bot:Photo'..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,'◍ تم تعطيل الايدي بالصوره') 
end
if text == 'تفعيل التنزيل' and Owner(msg) then   
database:del(bot_id..'dw:bot:api'..msg.chat_id_) 
Text = '\n تم تفعيل التنزيلات' 
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل التنزيل' and Owner(msg) then  
database:set(bot_id..'dw:bot:api'..msg.chat_id_,true) 
Text = '\nتم تعطيل التنزيلات' 
send(msg.chat_id_, msg.id_,Text) 
end 
if text == 'تعين الايدي' and Owner(msg) then
database:setex(bot_id.."VAMBAIR:Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_,240,true)  
local Text= [[
◍ ارسل الان النص
◍ يمكنك اضافه :
- `#username` > اسم المستخدم
- `#msgs` > عدد رسائل المستخدم
- `#photos` > عدد صور المستخدم
- `#id` > ايدي المستخدم
- `#auto` > تفاعل المستخدم
- `#stast` > موقع المستخدم 
- `#edit` > عدد السحكات
- `#game` > النقاط
- `#AddMem` > عدد الجهات
- `#Description` > تعليق الصوره
]]
send(msg.chat_id_, msg.id_,Text)
return false  
end 
if text == 'حذف الايدي' or text == 'مسح الايدي' then
if Owner(msg) then
database:del(bot_id.."VAMBAIR:Klesh:Id:Bot"..msg.chat_id_)
send(msg.chat_id_, msg.id_, '◍ تم ازالة كليشة الايدي ')
end
return false  
end 

if database:get(bot_id.."VAMBAIR:Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_) then 
if text == 'الغاء' then 
send(msg.chat_id_, msg.id_,"◍ تم الغاء تعين الايدي") 
database:del(bot_id.."VAMBAIR:Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
database:del(bot_id.."VAMBAIR:Set:Id:Gp"..msg.chat_id_..""..msg.sender_user_id_) 
database:set(bot_id.."VAMBAIR:Klesh:Id:Bot"..msg.chat_id_,text:match("(.*)"))
send(msg.chat_id_, msg.id_,'◍ تم تعين الايدي')    
end

if text == 'ايدي' and tonumber(msg.reply_to_message_id_) == 0 and not database:get(bot_id..'VAMBAIR:Lock:ID:Bot'..msg.chat_id_) then
if not database:sismember(bot_id..'VAMBAIR:Spam:Group'..msg.sender_user_id_,text) then
database:sadd(bot_id.."VAMBAIR:Spam:Group"..msg.sender_user_id_,text) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = msg.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,taha,success) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ then
UserName_User = '@'..data.username_
else
UserName_User = 'لا يوجد'
end
local Id = msg.sender_user_id_
local NumMsg = database:get(bot_id..'VAMBAIR:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = Get_Rank(Id,msg.chat_id_)
local message_edit = database:get(bot_id..'VAMBAIR:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_) or 0
local Add_Mem = database:get(bot_id.."VAMBAIR:Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) or 0
local Total_Photp = (taha.total_count_ or 0)
local Texting = {
" ◍ قمر ياروحي خد ممح..💋❤️",
" ◍ صوتك عفنت غيرها بقي..😺💛",
" ◍ يتي القمر نزل الارض يعمل اي🥺",
" ◍ قلبي موجود فصوره .. 🥺❤️",
" ◍ الله ع جمالك ياقمري..🥺💛",
}
local Description = Texting[math.random(#Texting)]
local get_id = database:get(bot_id.."VAMBAIR:Klesh:Id:Bot"..msg.chat_id_)
if not database:get(bot_id..'VAMBAIR:Lock:ID:Bot:Photo'..msg.chat_id_) then
if taha.photos_[0] then
if get_id then
local get_id = get_id:gsub('#AddMem',Add_Mem) 
local get_id = get_id:gsub('#id',Id) 
local get_id = get_id:gsub('#username',UserName_User) 
local get_id = get_id:gsub('#msgs',NumMsg) 
local get_id = get_id:gsub('#edit',message_edit) 
local get_id = get_id:gsub('#stast',Status_Gps) 
local get_id = get_id:gsub('#auto',TotalMsg) 
local get_id = get_id:gsub('#Description',Description) 
local get_id = get_id:gsub('#game',Num_Games) 
local get_id = get_id:gsub('#photos',Total_Photp) 
sendPhoto(msg.chat_id_,msg.id_,taha.photos_[0].sizes_[1].photo_.persistent_id_,get_id)
else
sendPhoto(msg.chat_id_,msg.id_,taha.photos_[0].sizes_[1].photo_.persistent_id_,''..Description..'\n◍ iD 𖦹 '..Id..'\n◍ User 𖦹 '..UserName_User..'\n◍ Rank 𖦹 '..Status_Gps..'\n◍ Msg 𖦹 '..NumMsg)
end
else
send(msg.chat_id_, msg.id_,'◍ ليس لديك صوره \n'..'\n*◍ iD 𖦹 '..Id..'\n◍ User 𖦹* ['..UserName_User..']*\n◍ Rank 𖦹 '..Status_Gps..'\n◍ Msg 𖦹 '..NumMsg..'*') 
end
else
if get_id then
local get_id = get_id:gsub('#AddMem',Add_Mem) 
local get_id = get_id:gsub('#id',Id) 
local get_id = get_id:gsub('#username',UserName_User) 
local get_id = get_id:gsub('#msgs',NumMsg) 
local get_id = get_id:gsub('#edit',message_edit) 
local get_id = get_id:gsub('#stast',Status_Gps) 
local get_id = get_id:gsub('#auto',TotalMsg) 
local get_id = get_id:gsub('#Description',Description) 
local get_id = get_id:gsub('#game',Num_Games) 
local get_id = get_id:gsub('#photos',Total_Photp) 
send(msg.chat_id_, msg.id_,'['..get_id..']') 
else
send(msg.chat_id_, msg.id_,'\n*◍ iD 𖦹 '..Id..'\n◍ User 𖦹* ['..UserName_User..']*\n◍ Rank 𖦹 '..Status_Gps..'\n◍ Msg 𖦹 '..NumMsg..'*') 
end
end
end,nil)   
end,nil)   
end
end
if text == 'صورتي' and tonumber(msg.reply_to_message_id_) == 0 and not database:get(bot_id..'VAMBAIR:Lock:ID:Bot'..msg.chat_id_) then
if not database:sismember(bot_id..'VAMBAIR:Spam:Group'..msg.sender_user_id_,text) then
database:sadd(bot_id.."VAMBAIR:Spam:Group"..msg.sender_user_id_,text) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = msg.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,taha,success) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,deata) 

if deata.join_date_ ~= 0 then
tarek = os.date('%Y-%m-%d', deata.join_date_)
else
tarek = 'لا يوجد ' 
end
if data.username_ then
UserName_User = '@'..data.username_
else
UserName_User = 'لا يوجد'
end
local Id = msg.sender_user_id_
local NumMsg = database:get(bot_id..'VAMBAIR:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."VAMBAIR:Comd:New:rt:User:"..msg.chat_id_..Id) or Get_Rank(Id,msg.chat_id_)
local message_edit = database:get(bot_id..'VAMBAIR:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_) or 0
local Add_Mem = database:get(bot_id.."VAMBAIR:Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) or 0
local Total_Photp = (taha.total_count_ or 0)
local Texting = {
". ",
}
local Description = Texting[math.random(#Texting)]
local get_id = database:get(bot_id.."VAMBAIR:Klesh:Id:Bot"..msg.chat_id_)
if not database:get(bot_id..'VAMBAIR:Lock:ID:Bot:Photo'..msg.chat_id_) then
if taha.photos_[0] then
if get_id then
local get_id = get_id:gsub('#AddMem',Add_Mem) 
local get_id = get_id:gsub('#id',Id) 
local get_id = get_id:gsub('#username',UserName_User) 
local get_id = get_id:gsub('#msgs',NumMsg) 
local get_id = get_id:gsub('#edit',message_edit) 
local get_id = get_id:gsub('#stast',Status_Gps) 
local get_id = get_id:gsub('#auto',TotalMsg) 
local get_id = get_id:gsub('#Description',Description) 
local get_id = get_id:gsub('#game',Num_Games) 
local get_id = get_id:gsub('#photos',Total_Photp) 
sendPhoto(msg.chat_id_,msg.id_,taha.photos_[0].sizes_[1].photo_.persistent_id_,get_id)
else
sendPhoto(msg.chat_id_,msg.id_,taha.photos_[0].sizes_[1].photo_.persistent_id_,'◍ ID 𖥒 '..Id..'\n◍ user⁦ 𖥒 '..UserName_User..'\n◍ state 𖥒'..Status_Gps..'\n◍ Msg 𖥒 '..NumMsg)
end
else
send(msg.chat_id_, msg.id_,'◍ ليس لديك صوره') 
end
else
if get_id then
local get_id = get_id:gsub('#AddMem',Add_Mem) 
local get_id = get_id:gsub('#id',Id) 
local get_id = get_id:gsub('#username',UserName_User) 
local get_id = get_id:gsub('#msgs',NumMsg) 
local get_id = get_id:gsub('#edit',message_edit) 
local get_id = get_id:gsub('#stast',Status_Gps) 
local get_id = get_id:gsub('#auto',TotalMsg) 
local get_id = get_id:gsub('#Description',Description) 
local get_id = get_id:gsub('#game',Num_Games) 
local get_id = get_id:gsub('#photos',Total_Photp) 
send(msg.chat_id_, msg.id_,'['..get_id..']') 
else
send(msg.chat_id_, msg.id_,'\n*◍ ID  '..Id..'\n◍ user⁦ 𖥒* ['..UserName_User..']*\n‍◍ state 𖥒'..Status_Gps..'\n◍ Msg 𖥒 '..NumMsg..'*') 
end
end
end,nil)   
end,nil)   
end,nil)   
end
end
if text == 'فتح المسح' and Owner(msg) then   
database:del(bot_id..'lock:del'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,'◍ تم فتح المسح') 
end
if text == 'قفل المسح' and Owner(msg) then  
database:set(bot_id..'lock:del'..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,'◍ تم قفل المسح') 
end
if text and text:match('^مسح (%d+)$') and Addictive(msg) and not database:get(bot_id..'lock:del'..msg.chat_id_) then    
local Number = tonumber(text:match('^مسح (%d+)$')) 
if Number > 1000 then 
send(msg.chat_id_, msg.id_,'◍ لا تستطيع تنضيف اكثر من *~ 1000* رساله') 
return false  
end  
local Message = msg.id_
for i=1,tonumber(Number) do
DeleteMessage(msg.chat_id_,{[0]=Message})
Message = Message - 1048576
end
send(msg.chat_id_, msg.id_,'◍ تم مسح *~ '..Number..'* رساله .')  
end

if text == 'ايدي' and tonumber(msg.reply_to_message_id_) > 0 and not database:get(bot_id..'VAMBAIR:Lock:ID:Bot'..msg.chat_id_) then
function Function_VAMBAIR(extra, result, success)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
if data.first_name_ == false then
send(msg.chat_id_, msg.id_,'◍ الحساب محذوف لا توجد معلوماته ')
return false
end
if data.username_ then
UserName_User = '@'..data.username_
else
UserName_User = 'لا يوجد'
end
local Id = data.id_
local NumMsg = database:get(bot_id..'VAMBAIR:messageUser'..msg.chat_id_..':'..data.id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."VAMBAIR:Comd:New:rt:User:"..msg.chat_id_..Id) or Get_Rank(Id,msg.chat_id_)
local message_edit = database:get(bot_id..'VAMBAIR:message_edit'..msg.chat_id_..data.id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Msg_User"..msg.chat_id_..":"..data.id_) or 0
local Add_Mem = database:get(bot_id.."VAMBAIR:Add:Memp"..msg.chat_id_..":"..data.id_) or 0
send(msg.chat_id_, msg.id_,'*◍ ايديه - '..Id..'\n◍ رسائله - '..NumMsg..'\n◍ معرفه - *['..UserName_User..']*\n◍ تفاعله - '..TotalMsg..'\n◍ رتبته - '..Status_Gps..'\n◍ تعديلاته - '..message_edit..'\n◍ جهاته - '..Add_Mem..'*') 
end,nil)   
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_VAMBAIR, nil)
return false
end

if text and text:match("^ايدي @(.*)$") and not database:get(bot_id..'VAMBAIR:Lock:ID:Bot'..msg.chat_id_) then
local username = text:match("^ايدي @(.*)$")
function Function_VAMBAIR(extra, result, success)
if result.id_ then
tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(arg,data) 
if data.username_ then
UserName_User = '@'..data.username_
else
UserName_User = 'لا يوجد'
end
local Id = data.id_
local NumMsg = database:get(bot_id..'VAMBAIR:messageUser'..msg.chat_id_..':'..data.id_) or 0
local TotalMsg = Total_message(NumMsg)
local Status_Gps = database:get(bot_id.."VAMBAIR:Comd:New:rt:User:"..msg.chat_id_..Id) or Get_Rank(Id,msg.chat_id_)
local message_edit = database:get(bot_id..'VAMBAIR:message_edit'..msg.chat_id_..data.id_) or 0
local Num_Games = database:get(bot_id.."Tshak:Msg_User"..msg.chat_id_..":"..data.id_) or 0
local Add_Mem = database:get(bot_id.."VAMBAIR:Add:Memp"..msg.chat_id_..":"..data.id_) or 0
send(msg.chat_id_, msg.id_,'*◍ ايديه - '..Id..'\n◍ رسائله - '..NumMsg..'\n◍ معرفه - *['..UserName_User..']*\n◍ تفاعله - '..TotalMsg..'\n◍ رتبته - '..Status_Gps..'\n◍ تعديلاته - '..message_edit..'\n◍ جهاته - '..Add_Mem..'*') 
end,nil)   
else
send(msg.chat_id_, msg.id_,'◍ لا يوجد حساب بهاذا المعرف')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_VAMBAIR, nil)
return false
end
if text == "سمايلات" or text == "سمايل" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Set:Sma"..msg.chat_id_)
Random = {"🍏","🍎","🍐","🍊","🍋","🍉","🍇","🍓","🍈","🍒","🍑","🍍","🥥","🥝","🍅","🍆","🥑","🥦","🥒","🌶","🌽","🥕","🥔","🥖","🥐","🍞","🥨","🍟","🧀","🥚","🍳","🥓","🥩","🍗","🍖","🌭","🍔","🍠","🍕","🥪","🥙","☕️","🍵","🥤","🍶","🍺","🍻","🏀","⚽️","🏈","⚾️","🎾","🏐","🏉","🎱","◍","🏸","🥅","🎰","🎮","🎳","◍","🎲","🎻","🎸","🎺","🥁","🎹","🎼","◍","🎤","🎬","🎨","◍","🎪","◍","◍","🎗","🏵","◍","🏆","🥌","🛷","🚗","🚌","🏎","🚓","🚑","🚚","🚛","🚜","🇮🇶","⚔","◍","🔮","◍","💣","◍","📍","📓","📗","◍","📅","📪","◍","◍","📭","⏰","📺","🎚","☎️","◍"}
SM = Random[math.random(#Random)]
database:set(bot_id.."Tshak:Random:Sm"..msg.chat_id_,SM)
send(msg.chat_id_, msg.id_,"◍ اسرع واحد يدز هاذا السمايل ? ~ {`"..SM.."`}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Random:Sm"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Set:Sma"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Set:Sma"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"◍ الف مبروك لقد فزت \n◍ للعب مره اخره ارسل ~{ سمايل , سمايلات }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Set:Sma"..msg.chat_id_,true)
return false
end 
if text == "الاسرع" or tect == "ترتيب" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Speed:Tr"..msg.chat_id_)
KlamSpeed = {"سحور","سياره","استقبال","قنفه","ايفون","بزونه","مطبخ","كرستيانو","دجاجه","مدرسه","الوان","غرفه","ثلاجه","كهوه","سفينه","العراق","محطه","طياره","رادار","منزل","مستشفى","كهرباء","تفاحه","اخطبوط","سلمون","فرنسا","برتقاله","تفاح","مطرقه","بتيته","لهانه","شباك","باص","سمكه","ذباب","تلفاز","حاسوب","انترنيت","ساحه","جسر"};
name = KlamSpeed[math.random(#KlamSpeed)]
database:set(bot_id.."Tshak:Klam:Speed"..msg.chat_id_,name)
name = string.gsub(name,"سحور","س ر و ح")
name = string.gsub(name,"سياره","ه ر س ي ا")
name = string.gsub(name,"استقبال","ل ب ا ت ق س ا")
name = string.gsub(name,"قنفه","ه ق ن ف")
name = string.gsub(name,"ايفون","و ن ف ا")
name = string.gsub(name,"بزونه","ز و ه ن")
name = string.gsub(name,"مطبخ","خ ب ط م")
name = string.gsub(name,"كرستيانو","س ت ا ن و ك ر ي")
name = string.gsub(name,"دجاجه","ج ج ا د ه")
name = string.gsub(name,"مدرسه","ه م د ر س")
name = string.gsub(name,"الوان","ن ا و ا ل")
name = string.gsub(name,"غرفه","غ ه ر ف")
name = string.gsub(name,"ثلاجه","ج ه ت ل ا")
name = string.gsub(name,"كهوه","ه ك ه و")
name = string.gsub(name,"سفينه","ه ن ف ي س")
name = string.gsub(name,"العراق","ق ع ا ل ر ا")
name = string.gsub(name,"محطه","ه ط م ح")
name = string.gsub(name,"طياره","ر ا ط ي ه")
name = string.gsub(name,"رادار","ر ا ر ا د")
name = string.gsub(name,"منزل","ن ز م ل")
name = string.gsub(name,"مستشفى","ى ش س ف ت م")
name = string.gsub(name,"كهرباء","ر ب ك ه ا ء")
name = string.gsub(name,"تفاحه","ح ه ا ت ف")
name = string.gsub(name,"اخطبوط","ط ب و ا خ ط")
name = string.gsub(name,"سلمون","ن م و ل س")
name = string.gsub(name,"فرنسا","ن ف ر س ا")
name = string.gsub(name,"برتقاله","ر ت ق ب ا ه ل")
name = string.gsub(name,"تفاح","ح ف ا ت")
name = string.gsub(name,"مطرقه","ه ط م ر ق")
name = string.gsub(name,"بتيته","ب ت ت ي ه")
name = string.gsub(name,"لهانه","ه ن ل ه ل")
name = string.gsub(name,"شباك","ب ش ا ك")
name = string.gsub(name,"باص","ص ا ب")
name = string.gsub(name,"سمكه","ك س م ه")
name = string.gsub(name,"ذباب","ب ا ب ذ")
name = string.gsub(name,"تلفاز","ت ف ل ز ا")
name = string.gsub(name,"حاسوب","س ا ح و ب")
name = string.gsub(name,"انترنيت","ا ت ن ر ن ي ت")
name = string.gsub(name,"ساحه","ح ا ه س")
name = string.gsub(name,"جسر","ر ج س")
send(msg.chat_id_, msg.id_,"◍ اسرع واحد يرتبها ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Klam:Speed"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Speed:Tr"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Speed:Tr"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"◍ الف مبروك لقد فزت \n◍ للعب مره اخره ارسل ~{ الاسرع , ترتيب }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Speed:Tr"..msg.chat_id_,true)
end 

if text == "حزوره" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Set:Hzora"..msg.chat_id_)
Hzora = {"الجرس","عقرب الساعه","السمك","المطر","5","الكتاب","البسمار","7","الكعبه","بيت الشعر","لهانه","انا","امي","الابره","الساعه","22","غلط","كم الساعه","البيتنجان","البيض","المرايه","الضوء","الهواء","الضل","العمر","القلم","المشط","الحفره","البحر","الثلج","الاسفنج","الصوت","بلم"};
name = Hzora[math.random(#Hzora)]
database:set(bot_id.."Tshak:Klam:Hzor"..msg.chat_id_,name)
name = string.gsub(name,"الجرس","شيئ اذا لمسته صرخ ما هوه ؟")
name = string.gsub(name,"عقرب الساعه","اخوان لا يستطيعان تمضيه اكثر من دقيقه معا فما هما ؟")
name = string.gsub(name,"السمك","ما هو الحيوان الذي لم يصعد الى سفينة نوح عليه السلام ؟")
name = string.gsub(name,"المطر","شيئ يسقط على رأسك من الاعلى ولا يجرحك فما هو ؟")
name = string.gsub(name,"5","ما العدد الذي اذا ضربته بنفسه واضفت عليه 5 يصبح ثلاثين ")
name = string.gsub(name,"الكتاب","ما الشيئ الذي له اوراق وليس له جذور ؟")
name = string.gsub(name,"البسمار","ما هو الشيئ الذي لا يمشي الا بالضرب ؟")
name = string.gsub(name,"7","عائله مؤلفه من 6 بنات واخ لكل منهن .فكم عدد افراد العائله ")
name = string.gsub(name,"الكعبه","ما هو الشيئ الموجود وسط مكة ؟")
name = string.gsub(name,"بيت الشعر","ما هو البيت الذي ليس فيه ابواب ولا نوافذ ؟ ")
name = string.gsub(name,"لهانه","وحده حلوه ومغروره تلبس مية تنوره .من هيه ؟ ")
name = string.gsub(name,"انا","ابن امك وابن ابيك وليس باختك ولا باخيك فمن يكون ؟")
name = string.gsub(name,"امي","اخت خالك وليست خالتك من تكون ؟ ")
name = string.gsub(name,"الابره","ما هو الشيئ الذي كلما خطا خطوه فقد شيئا من ذيله ؟ ")
name = string.gsub(name,"الساعه","ما هو الشيئ الذي يقول الصدق ولكنه اذا جاع كذب ؟")
name = string.gsub(name,"22","كم مره ينطبق عقربا الساعه على بعضهما في اليوم الواحد ")
name = string.gsub(name,"غلط","ما هي الكلمه الوحيده التي تلفض غلط دائما ؟ ")
name = string.gsub(name,"كم الساعه","ما هو السؤال الذي تختلف اجابته دائما ؟")
name = string.gsub(name,"البيتنجان","جسم اسود وقلب ابيض وراس اخظر فما هو ؟")
name = string.gsub(name,"البيض","ماهو الشيئ الذي اسمه على لونه ؟")
name = string.gsub(name,"المرايه","ارى كل شيئ من دون عيون من اكون ؟ ")
name = string.gsub(name,"الضوء","ما هو الشيئ الذي يخترق الزجاج ولا يكسره ؟")
name = string.gsub(name,"الهواء","ما هو الشيئ الذي يسير امامك ولا تراه ؟")
name = string.gsub(name,"الضل","ما هو الشيئ الذي يلاحقك اينما تذهب ؟ ")
name = string.gsub(name,"العمر","ما هو الشيء الذي كلما طال قصر ؟ ")
name = string.gsub(name,"القلم","ما هو الشيئ الذي يكتب ولا يقرأ ؟")
name = string.gsub(name,"المشط","له أسنان ولا يعض ما هو ؟ ")
name = string.gsub(name,"الحفره","ما هو الشيئ اذا أخذنا منه ازداد وكبر ؟")
name = string.gsub(name,"البحر","ما هو الشيئ الذي يرفع اثقال ولا يقدر يرفع مسمار ؟")
name = string.gsub(name,"الثلج","انا ابن الماء فان تركوني في الماء مت فمن انا ؟")
name = string.gsub(name,"الاسفنج","كلي ثقوب ومع ذالك احفض الماء فمن اكون ؟")
name = string.gsub(name,"الصوت","اسير بلا رجلين ولا ادخل الا بالاذنين فمن انا ؟")
name = string.gsub(name,"بلم","حامل ومحمول نصف ناشف ونصف مبلول فمن اكون ؟ ")
send(msg.chat_id_, msg.id_,"◍ اسرع واحد يحل الحزوره ↓\n {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Klam:Hzor"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Set:Hzora"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Set:Hzora"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"◍ الف مبروك لقد فزت \n◍ للعب مره اخره ارسل ~{ حزوره }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Set:Hzora"..msg.chat_id_,true)
end 

if text == "معاني" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Set:Maany"..msg.chat_id_)
Maany_Rand = {"قرد","دجاجه","بطريق","ضفدع","بومه","نحله","ديك","جمل","بقره","دولفين","تمساح","قرش","نمر","اخطبوط","سمكه","خفاش","اسد","فأر","ذئب","فراشه","عقرب","زرافه","قنفذ","تفاحه","باذنجان"}
name = Maany_Rand[math.random(#Maany_Rand)]
database:set(bot_id.."Tshak:Maany"..msg.chat_id_,name)
name = string.gsub(name,"قرد","◍")
name = string.gsub(name,"دجاجه","🐔")
name = string.gsub(name,"بطريق","🐧")
name = string.gsub(name,"ضفدع","🐸")
name = string.gsub(name,"بومه","🦉")
name = string.gsub(name,"نحله","🐝")
name = string.gsub(name,"ديك","🐓")
name = string.gsub(name,"جمل","🐫")
name = string.gsub(name,"بقره","🐄")
name = string.gsub(name,"دولفين","🐬")
name = string.gsub(name,"تمساح","🐊")
name = string.gsub(name,"قرش","🦈")
name = string.gsub(name,"نمر","🐅")
name = string.gsub(name,"اخطبوط","🐙")
name = string.gsub(name,"سمكه","🐟")
name = string.gsub(name,"خفاش","🦇")
name = string.gsub(name,"اسد","🦁")
name = string.gsub(name,"فأر","🐭")
name = string.gsub(name,"ذئب","🐺")
name = string.gsub(name,"فراشه","🦋")
name = string.gsub(name,"عقرب","🦂")
name = string.gsub(name,"زرافه","🦒")
name = string.gsub(name,"قنفذ","🦔")
name = string.gsub(name,"تفاحه","🍎")
name = string.gsub(name,"باذنجان","🍆")
send(msg.chat_id_, msg.id_,"◍ اسرع واحد يدز معنى السمايل ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Maany"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Set:Maany"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Set:Maany"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"◍ الف مبروك لقد فزت \n◍ للعب مره اخره ارسل ~{ معاني }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Set:Maany"..msg.chat_id_,true)
end 
if text == "العكس" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
database:del(bot_id.."Tshak:Set:Aks"..msg.chat_id_)
katu = {"باي","فهمت","موزين","اسمعك","احبك","موحلو","نضيف","حاره","ناصي","جوه","سريع","ونسه","طويل","سمين","ضعيف","شريف","شجاع","رحت","عدل","نشيط","شبعان","موعطشان","خوش ولد","اني","هادئ"}
name = katu[math.random(#katu)]
database:set(bot_id.."Tshak:Set:Aks:Game"..msg.chat_id_,name)
name = string.gsub(name,"باي","هلو")
name = string.gsub(name,"فهمت","مافهمت")
name = string.gsub(name,"موزين","زين")
name = string.gsub(name,"اسمعك","ماسمعك")
name = string.gsub(name,"احبك","ماحبك")
name = string.gsub(name,"موحلو","حلو")
name = string.gsub(name,"نضيف","وصخ")
name = string.gsub(name,"حاره","بارده")
name = string.gsub(name,"ناصي","عالي")
name = string.gsub(name,"جوه","فوك")
name = string.gsub(name,"سريع","بطيء")
name = string.gsub(name,"ونسه","ضوجه")
name = string.gsub(name,"طويل","قزم")
name = string.gsub(name,"سمين","ضعيف")
name = string.gsub(name,"ضعيف","قوي")
name = string.gsub(name,"شريف","كواد")
name = string.gsub(name,"شجاع","جبان")
name = string.gsub(name,"رحت","اجيت")
name = string.gsub(name,"عدل","ميت")
name = string.gsub(name,"نشيط","كسول")
name = string.gsub(name,"شبعان","جوعان")
name = string.gsub(name,"موعطشان","عطشان")
name = string.gsub(name,"خوش ولد","موخوش ولد")
name = string.gsub(name,"اني","مطي")
name = string.gsub(name,"هادئ","عصبي")
send(msg.chat_id_, msg.id_,"◍ اسرع واحد يدز العكس ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Set:Aks:Game"..msg.chat_id_) or "").."" and not database:get(bot_id.."Tshak:Set:Aks"..msg.chat_id_) then
if not database:get(bot_id.."Tshak:Set:Aks"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,"◍ الف مبروك لقد فزت \n◍ للعب مره اخره ارسل ~{ العكس }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Set:Aks"..msg.chat_id_,true)
end 

if database:get(bot_id.."Tshak:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 20 then
send(msg.chat_id_, msg.id_,"◍ عذرآ لا يمكنك تخمين عدد اكبر من ال { 20 } خمن رقم ما بين ال{ 1 و 20 }\n")
return false  end 
local GETNUM = database:get(bot_id.."Tshak:GAMES:NUM"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
database:del(bot_id.."Tshak:SADD:NUM"..msg.chat_id_..msg.sender_user_id_)
database:del(bot_id.."Tshak:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_,5)  
send(msg.chat_id_, msg.id_,"◍ مبروك فزت ويانه وخمنت الرقم الصحيح\n◍ تم اضافة { 5 } من النقاط \n")
elseif tonumber(NUM) ~= tonumber(GETNUM) then
database:incrby(bot_id.."Tshak:SADD:NUM"..msg.chat_id_..msg.sender_user_id_,1)
if tonumber(database:get(bot_id.."Tshak:SADD:NUM"..msg.chat_id_..msg.sender_user_id_)) >= 3 then
database:del(bot_id.."Tshak:SADD:NUM"..msg.chat_id_..msg.sender_user_id_)
database:del(bot_id.."Tshak:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
send(msg.chat_id_, msg.id_,"◍ اوبس لقد خسرت في اللعبه \n◍ حظآ اوفر في المره القادمه \n◍ كان الرقم الذي تم تخمينه { "..GETNUM.." }")
else
send(msg.chat_id_, msg.id_,"◍ اوبس تخمينك غلط \n◍ ارسل رقم تخمنه مره اخرى ")
end
end
end
end
if text == "خمن" or text == "تخمين" then   
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
Num = math.random(1,20)
database:set(bot_id.."Tshak:GAMES:NUM"..msg.chat_id_,Num) 
send(msg.chat_id_, msg.id_,"\n◍ اهلا بك عزيزي في لعبة التخمين :\nٴ━━━━━━━━━━\n".."◍ ملاحظه لديك { 3 } محاولات فقط فكر قبل ارسال تخمينك \n\n".."◍ سيتم تخمين عدد ما بين ال {1 و 20} اذا تعتقد انك تستطيع الفوز جرب واللعب الان ؟ ")
database:setex(bot_id.."Tshak:GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end
end

if database:get(bot_id.."Tshak:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 6 then
send(msg.chat_id_, msg.id_,"◍ عذرا لا يوجد سواء { 6 } اختيارات فقط ارسل اختيارك مره اخرى\n")
return false  end 
local GETNUM = database:get(bot_id.."Tshak:Games:Bat"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
database:del(bot_id.."Tshak:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
send(msg.chat_id_, msg.id_,"◍ مبروك فزت وطلعت المحيبس بل ايد رقم { "..NUM.." }\n◍ لقد حصلت على { 3 }من نقاط يمكنك استبدالهن برسائل ")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_,3)  
elseif tonumber(NUM) ~= tonumber(GETNUM) then
database:del(bot_id.."Tshak:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
send(msg.chat_id_, msg.id_,"◍ للاسف لقد خسرت \n◍ المحيبس بل ايد رقم { "..GETNUM.." }\n◍ حاول مره اخرى للعثور على المحيبس")
end
end
end

if text == "محيبس" or text == "بات" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then   
Num = math.random(1,6)
database:set(bot_id.."Tshak:Games:Bat"..msg.chat_id_,Num) 
TEST = [[
*➀       ➁     ➂      ➃      ➄     ➅
↓      ↓     ↓      ↓     ↓     ↓
👊 ‹› 👊 ‹› 👊 ‹› 👊 ‹› 👊 ‹› 👊
◍ اختر لأستخراج المحيبس الايد التي تحمل المحيبس 
◍ الفائز يحصل على { 3 } من النقاط *
]]
send(msg.chat_id_, msg.id_,TEST)
database:setex(bot_id.."Tshak:SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end
end

if text == "المختلف" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
mktlf = {"😸","☠","🐼","🐇","🌑","🌚","◍","✨","⛈","🌥","⛄️","👨‍🔬","👨‍💻","👨‍◍","🧚‍♀","🧜‍♂","🧝‍♂","🙍‍♂","🧖‍♂","👬","🕒","🕤","⌛️","📅",};
name = mktlf[math.random(#mktlf)]
database:del(bot_id.."Tshak:Set:Moktlf:Bot"..msg.chat_id_)
database:set(bot_id.."Tshak::Set:Moktlf"..msg.chat_id_,name)
name = string.gsub(name,"😸","😹😹😹😹😹😹😹😹😸😹😹😹😹")
name = string.gsub(name,"☠","💀💀💀💀💀💀💀☠💀💀💀💀💀")
name = string.gsub(name,"🐼","👻👻👻🐼👻👻👻👻👻👻👻")
name = string.gsub(name,"🐇","🕊🕊🕊🕊🕊🐇🕊🕊🕊🕊")
name = string.gsub(name,"🌑","🌚🌚🌚🌚🌚🌑🌚🌚🌚")
name = string.gsub(name,"🌚","🌑🌑🌑🌑🌑🌚🌑🌑🌑")
name = string.gsub(name,"◍","🌟🌟🌟🌟🌟🌟🌟🌟◍🌟🌟🌟")
name = string.gsub(name,"✨","◍◍◍◍◍✨◍◍◍◍")
name = string.gsub(name,"⛈","🌨🌨🌨🌨🌨⛈🌨🌨🌨🌨")
name = string.gsub(name,"🌥","⛅️⛅️⛅️⛅️⛅️⛅️🌥⛅️⛅️⛅️⛅️")
name = string.gsub(name,"⛄️","☃☃☃☃☃☃⛄️☃☃☃☃")
name = string.gsub(name,"👨‍🔬","👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👨‍🔬👩‍🔬👩‍🔬👩‍🔬")
name = string.gsub(name,"👨‍💻","👩‍💻👩‍💻👩‍‍💻👩‍‍💻👩‍💻👨‍💻👩‍💻👩‍💻👩‍💻")
name = string.gsub(name,"👨‍◍","👩‍◍👩‍◍👩‍◍👩‍◍👩‍◍👩‍◍👨‍◍👩‍◍")
name = string.gsub(name,"👩‍🍳","👨‍🍳👨‍🍳👨‍🍳👨‍🍳👨‍🍳👩‍🍳👨‍🍳👨‍🍳👨‍🍳")
name = string.gsub(name,"🧚‍♀","🧚‍♂🧚‍♂🧚‍♂🧚‍♂🧚‍♀🧚‍♂🧚‍♂")
name = string.gsub(name,"🧜‍♂","🧜‍♀🧜‍♀🧜‍♀🧜‍♀🧜‍♀🧚‍♂🧜‍♀🧜‍♀🧜‍♀")
name = string.gsub(name,"🧝‍♂","🧝‍♀🧝‍♀🧝‍♀🧝‍♀🧝‍♀🧝‍♂🧝‍♀🧝‍♀🧝‍♀")
name = string.gsub(name,"🙍‍♂️","🙎‍♂️🙎‍♂️🙎‍♂️🙎‍♂️🙎‍♂️🙍‍♂️🙎‍♂️🙎‍♂️🙎‍♂️")
name = string.gsub(name,"🧖‍♂️","🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♂️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️")
name = string.gsub(name,"👬","👭👭👭👭👭👬👭👭👭")
name = string.gsub(name,"👨‍👨‍👧","👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👧👨‍👨‍👦👨‍👨‍👦")
name = string.gsub(name,"🕒","🕒🕒🕒🕒🕒🕒🕓🕒🕒🕒")
name = string.gsub(name,"🕤","🕥🕥🕥🕥🕥🕤🕥🕥🕥")
name = string.gsub(name,"⌛️","◍◍◍◍◍◍⌛️◍◍")
name = string.gsub(name,"📅","📆📆📆📆📆📆📅??📆")
send(msg.chat_id_, msg.id_,"◍ اسرع واحد يدز الاختلاف ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak::Set:Moktlf"..msg.chat_id_) or "").."" then 
if not database:get(bot_id.."Tshak:Set:Moktlf:Bot"..msg.chat_id_) then 
database:del(bot_id.."Tshak::Set:Moktlf"..msg.chat_id_)
send(msg.chat_id_, msg.id_,"◍ الف مبروك لقد فزت \n◍ للعب مره اخره ارسل ~{ المختلف }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Set:Moktlf:Bot"..msg.chat_id_,true)
end
if text == "امثله" then
if database:get(bot_id.."Tshak:Lock:Games"..msg.chat_id_) then
mthal = {"جوز","ضراطه","الحبل","الحافي","شقره","بيدك","سلايه","النخله","الخيل","حداد","المبلل","يركص","قرد","العنب","العمه","الخبز","بالحصاد","شهر","شكه","يكحله",};
name = mthal[math.random(#mthal)]
database:set(bot_id.."Tshak:Set:Amth"..msg.chat_id_,name)
database:del(bot_id.."Tshak:Set:Amth:Bot"..msg.chat_id_)
name = string.gsub(name,"جوز","ينطي____للماعده سنون")
name = string.gsub(name,"ضراطه","الي يسوق المطي يتحمل___")
name = string.gsub(name,"بيدك","اكل___محد يفيدك")
name = string.gsub(name,"الحافي","تجدي من___نعال")
name = string.gsub(name,"شقره","مع الخيل يا___")
name = string.gsub(name,"النخله","الطول طول___والعقل عقل الصخلة")
name = string.gsub(name,"سلايه","بالوجه امراية وبالظهر___")
name = string.gsub(name,"الخيل","من قلة___شدو على الچلاب سروج")
name = string.gsub(name,"حداد","موكل من صخم وجهه كال آني___")
name = string.gsub(name,"المبلل","___ما يخاف من المطر")
name = string.gsub(name,"الحبل","اللي تلدغة الحية يخاف من جرة___")
name = string.gsub(name,"يركص","المايعرف___يكول الكاع عوجه")
name = string.gsub(name,"العنب","المايلوح___يكول حامض")
name = string.gsub(name,"العمه","___إذا حبت الچنة ابليس يدخل الجنة")
name = string.gsub(name,"الخبز","انطي___للخباز حتى لو ياكل نصه")
name = string.gsub(name,"باحصاد","اسمة___ومنجله مكسور")
name = string.gsub(name,"شهر","امشي__ولا تعبر نهر")
name = string.gsub(name,"شكه","يامن تعب يامن__يا من على الحاضر لكة")
name = string.gsub(name,"القرد","__بعين امه غزال")
name = string.gsub(name,"يكحله","اجه___عماها")
send(msg.chat_id_, msg.id_,"◍ اسرع واحد يكمل المثل ~ {"..name.."}")
return false
end
end
if text == ""..(database:get(bot_id.."Tshak:Set:Amth"..msg.chat_id_) or "").."" then 
if not database:get(bot_id.."Tshak:Set:Amth:Bot"..msg.chat_id_) then 
database:del(bot_id.."Tshak:Set:Amth"..msg.chat_id_)
send(msg.chat_id_, msg.id_,"◍ الف مبروك لقد فزت \n◍ للعب مره اخره ارسل ~{ امثله }")
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id.."Tshak:Set:Amth:Bot"..msg.chat_id_,true)
end
if text == "تعطيل الالعاب" and Owner(msg) then   
database:del(bot_id.."Tshak:Lock:Games"..msg.chat_id_) 
send(msg.chat_id_, msg.id_,"\n◍ تم تعطيل الالعاب") 
end
if text == "تفعيل الالعاب" and Owner(msg) then  
database:set(bot_id.."Tshak:Lock:Games"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,"\n◍ تم تفعيل الالعاب") 
end
if text == 'الالعاب' or text == 'العاب' or text == 'العاب مطوره' then
local Text =[[
◍ اهلا بك في قسم الالعاب قم ..🎮
◍ بأختيار العبه التي تريدها ..🎮
◍ بضغط ع الزر بلاسفل ..🎮
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ 𝘾𝙃 - [𝙎𝙊𝙐𝙍𝘾𝙀 𝘼𝙇𝘼𝙕𝙄𝙕𝙔](t.me/BANDA1M) 
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '◍ العاب مطوره..🎮', callback_data=msg.sender_user_id_.."/hle11"},
},
{
{text = '◍ العاب السورس..🎮', callback_data=msg.sender_user_id_.."/hle22"},
},
{
{text = '◍.²₀²₁ ˝₀₄˝₁₃ | ₁₂:₀₀ 𝙿𝙼.◍', url="t.me/BANDA1M"}, 
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == 'رسائلي' then
local nummsg = database:get(bot_id..'VAMBAIR:messageUser'..msg.chat_id_..':'..msg.sender_user_id_) or 1
local Text = '◍ عدد رسائلك هنا *~ '..nummsg..'*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'مسح رسائلي' then
database:del(bot_id..'VAMBAIR:messageUser'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = '◍ تم مسح جميع رسائلك '
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'سحكاتي' or text == 'تعديلاتي' then
local edit = database:get(bot_id..'VAMBAIR:message_edit'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = '◍ عدد التعديلات هنا *~ '..edit..'*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'مسح سحكاتي' or text == 'مسح تعديلاتي' then
database:del(bot_id..'VAMBAIR:message_edit'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = '◍ تم مسح جميع تعديلاتك '
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'جهاتي' then
local addmem = database:get(bot_id.."VAMBAIR:Add:Memp"..msg.chat_id_..":"..msg.sender_user_id_) or 0
local Text = '◍ عدد جهاتك المضافه هنا *~ '..addmem..'*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'مسح جهاتي' then
database:del(bot_id..'VAMBAIR:Add:Memp'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = '◍ تم مسح جميع جهاتك المضافه '
send(msg.chat_id_, msg.id_,Text) 
end

if text == "نقاطي" then 
local Num = database:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_) or 0
if Num == 0 then 
Text = "◍ لم تلعب اي لعبه للحصول على جواهر"
else
Text = "◍ عدد جواهر التي رحبتها هي *~ { "..Num.." } مجوهره *"
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and text:match("^بيع نقاطي (%d+)$") then
local NUMPY = text:match("^بيع نقاطي (%d+)$") 
if tonumber(NUMPY) == tonumber(0) then
send(msg.chat_id_,msg.id_,"\n*◍ لا استطيع البيع اقل من 1 *") 
return false 
end
if tonumber(database:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_)) == tonumber(0) then
send(msg.chat_id_,msg.id_,"◍ ليس لديك جواهر من الالعاب \n◍ اذا كنت تريد ربح الجواهر \n◍ ارسل الالعاب وابدأ اللعب ! ") 
else
local NUM_GAMES = database:get(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_)
if tonumber(NUMPY) > tonumber(NUM_GAMES) then
send(msg.chat_id_,msg.id_,"\n◍ ليس لديك جواهر بهاذا العدد \n◍ لزيادة نقاطك في اللعبه \n◍ ارسل الالعاب وابدأ اللعب !") 
return false 
end
local NUMNKO = (NUMPY * 50)
database:decrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..msg.sender_user_id_,NUMPY)  
database:incrby(bot_id.."VAMBAIR:messageUser"..msg.chat_id_..":"..msg.sender_user_id_,NUMNKO)  
send(msg.chat_id_,msg.id_,"◍ تم خصم *~ { "..NUMPY.." }* من نقاطك \n◍ وتم اضافة* ~ { "..(NUMPY * 50).." } رساله الى رسالك *")
end 
return false 
end
if text ==("مسح") and Addictive(msg) and tonumber(msg.reply_to_message_id_) > 0 then
DeleteMessage(msg.chat_id_,{[0] = tonumber(msg.reply_to_message_id_),msg.id_})   
end   
if database:get(bot_id.."Tshak:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
database:del(bot_id.."Tshak:id:user"..msg.chat_id_)  
send(msg.chat_id_, msg.id_, "◍ تم الغاء الامر ") 
database:del(bot_id.."Tshak:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."Tshak:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = database:get(bot_id.."Tshak:id:user"..msg.chat_id_)  
database:del(bot_id.."Tshak:Msg_User"..msg.chat_id_..":"..msg.sender_user_id_) 
database:incrby(bot_id.."VAMBAIR:messageUser"..msg.chat_id_..":"..iduserr,numadded)  
send(msg.chat_id_, msg.id_,"◍ تم اضافة له {"..numadded.."} من الرسائل")  
end
if database:get(bot_id.."Tshak:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
database:del(bot_id.."Tshak:idgem:user"..msg.chat_id_)  
send(msg.chat_id_, msg.id_, "◍ تم الغاء الامر ") 
database:del(bot_id.."Tshak:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."Tshak:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = database:get(bot_id.."Tshak:idgem:user"..msg.chat_id_)  
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..iduserr,numadded)  
send(msg.chat_id_, msg.id_,"◍ تم اضافة له {"..numadded.."} من النقاط")  
end
------------------------------------------------------------
if text and text:match("^اضف رسائل (%d+)$") and msg.reply_to_message_id_ == 0 and Constructor(msg) then    
taha = text:match("^اضف رسائل (%d+)$")
database:set(bot_id.."Tshak:id:user"..msg.chat_id_,taha)  
database:setex(bot_id.."Tshak:numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_, "◍ ارسل لي عدد الرسائل الان") 
return false
end
if text and text:match("^اضف نقاط (%d+)$") and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
taha = text:match("^اضف نقاط (%d+)$")
database:set(bot_id.."Tshak:idgem:user"..msg.chat_id_,taha)  
database:setex(bot_id.."Tshak:gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_, "◍ ارسل لي عدد النقاط الان") 
return false
end
if text and text:match("^اضف نقاط (%d+)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
local Num = text:match("^اضف نقاط (%d+)$")
function reply(extra, result, success)
database:incrby(bot_id.."Tshak:Add:Num"..msg.chat_id_..result.sender_user_id_,Num)  
send(msg.chat_id_, msg.id_,"◍ تم اضافة له {"..Num.."} من النقاط")  
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},reply, nil)
return false
end
if text and text:match("^اضف رسائل (%d+)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
local Num = text:match("^اضف رسائل (%d+)$")
function reply(extra, result, success)
database:del(bot_id.."Tshak:Msg_User"..msg.chat_id_..":"..result.sender_user_id_) 
database:incrby(bot_id.."VAMBAIR:messageUser"..msg.chat_id_..":"..result.sender_user_id_,Num)  
send(msg.chat_id_, msg.id_, "\n◍ تم اضافة له {"..Num.."} من الرسائل")  
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},reply, nil)
return false
end

if text == "مسح المشتركين" and DevVAMBAIR(msg) then
local pv = database:smembers(bot_id..'VAMBAIR:UsersBot')  
local sendok = 0
for i = 1, #pv do
tdcli_function({ID='GetChat',chat_id_ = pv[i]},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = pv[i], action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,data) 
if data.ID and data.ID == "Ok"  then
print('\27[30;33m»» THE USER IS SAVE ME ↓\n»» '..pv[i]..'\n\27[1;37m')
else
print('\27[30;31m»» THE USER IS BLOCK ME ↓\n»» '..pv[i]..'\n\27[1;37m')
database:srem(bot_id..'VAMBAIR:UsersBot',pv[i])  
sendok = sendok + 1
end
if #pv == i then 
if sendok == 0 then
send(msg.chat_id_, msg.id_,'◍ لا يوجد مشتركين وهميين')   
else
local ok = #pv - sendok
send(msg.chat_id_, msg.id_,'*◍ عدد المشتركين الان ~ '..#pv..'\n◍ تم العثور على ~ '..sendok..' مشترك قام بحظر البوت\n◍ اصبح عدد المشتركين الان ~ '..ok..' مشترك *')   
end
end
end,nil)
end,nil)
end
return false
end
if text == "مسح الجروبات" and DevVAMBAIR(msg) then
local group = database:smembers(bot_id..'VAMBAIR:Chek:Groups')  
local w = 0
local q = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
print('\27[30;34m»» THE BOT IS NOT ADMIN ↓\n»» '..group[i]..'\n\27[1;37m')
database:srem(bot_id..'VAMBAIR:Chek:Groups',group[i])  
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'VAMBAIR:Chek:Groups',group[i])  
q = q + 1
print('\27[30;35m»» THE BOT IS LEFT GROUP ↓\n»» '..group[i]..'\n\27[1;37m')
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'VAMBAIR:Chek:Groups',group[i])  
q = q + 1
print('\27[30;36m»» THE BOT IS KICKED GROUP ↓\n»» '..group[i]..'\n\27[1;37m')
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'VAMBAIR:Chek:Groups',group[i])  
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
send(msg.chat_id_, msg.id_,'◍ لا توجد مجموعات وهميه ')   
else
local taha = (w + q)
local sendok = #group - taha
if q == 0 then
taha = ''
else
taha = '\n◍ تم ازالة ~ '..q..' مجموعات من البوت'
end
if w == 0 then
storm = ''
else
storm = '\n◍ تم ازالة ~'..w..' مجموعه لان البوت عضو'
end
send(msg.chat_id_, msg.id_,'*◍ عدد المجموعات الان ~ '..#group..' مجموعه '..storm..''..taha..'\n◍ اصبح عدد المجموعات الان ~ '..sendok..' مجموعات*\n')   
end
end
end,nil)
end
return false
end
if text == ("تحديث السورس") and DevVAMBAIR(msg) then  
send(msg.chat_id_,msg.id_,'◍ تم التحديث')
os.execute('rm -rf VAMBAIR.lua')
os.execute('rm -rf start.lua')
download_to_file('https://raw.githubusercontent.com/MahmoudM5/VAMBAIR/master/VAMBAIR.lua', 'VAMBAIR.lua') 
download_to_file('https://raw.githubusercontent.com/MahmoudM5/VAMBAIR/master/start.lua', 'start.lua') 
dofile('VAMBAIR.lua')  
return false
end


if text == 'تفعيل البوت الخدمي' and DevVAMBAIR(msg) then  
database:del(bot_id..'VAMBAIR:Free:Add:Bots') 
send(msg.chat_id_, msg.id_,'◍ تم تفعيل البوت الخدمي ') 
end
if text == 'تعطيل البوت الخدمي' and DevVAMBAIR(msg) then  
database:set(bot_id..'VAMBAIR:Free:Add:Bots',true) 
send(msg.chat_id_, msg.id_,'◍ تم تعطيل البوت الخدمي') 
end
if text and text:match("^تعين عدد الاعضاء (%d+)$") and DevVAMBAIR(msg) then
local Num = text:match("تعين عدد الاعضاء (%d+)$") 
database:set(bot_id..'VAMBAIR:Num:Add:Bot',Num) 
send(msg.chat_id_, msg.id_,'◍ تم وضع عدد الاعضاء *~'..Num..'* عضو')
end
if text =='الاحصائيات' and DevBot(msg) then
local Groups = database:scard(bot_id..'VAMBAIR:Chek:Groups')  
local Users = database:scard(bot_id..'VAMBAIR:UsersBot')  
send(msg.chat_id_, msg.id_,'◍ احصائيات البوت \n\n◍ عدد المجموعات *~ '..Groups..'\n◍ عدد المشتركين ~ '..Users..'*')
end
if text == 'جلب نسخه احتياطيه' and DevVAMBAIR(msg) then
local list = database:smembers(bot_id..'VAMBAIR:Chek:Groups')  
local t = '{"BOT_ID": '..bot_id..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = 'VAMBAIR Chat'
ASAS = database:smembers(bot_id.."VAMBAIR:Basic:Constructor"..v)
MNSH = database:smembers(bot_id.."VAMBAIR:Constructor"..v)
MDER = database:smembers(bot_id.."VAMBAIR:Manager"..v)
MOD = database:smembers(bot_id.."VAMBAIR:Mod:User"..v)
link = database:get(bot_id.."VAMBAIR:Link_Group"..v) or ''
if k == 1 then
t = t..'"'..v..'":{"VAMBAIR":"'..NAME..'",'
else
t = t..',"'..v..'":{"VAMBAIR":"'..NAME..'",'
end
if #ASAS ~= 0 then 
t = t..'"ASAS":['
for k,v in pairs(ASAS) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}' or ''
end
t = t..'}}'
local File = io.open('./VAM/'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(msg.chat_id_, msg.id_,'./VAM/'..bot_id..'.json', '◍ عدد مجموعات التي في البوت { '..#list..'}')
end
if text == 'المطور' or text == 'مطور' or text == 'المطورين' then
local Text_Dev = database:get(bot_id..'VAMBAIR:Text_Dev')
if Text_Dev then 
send(msg.chat_id_, msg.id_,Text_Dev)
else
tdcli_function ({ID = "GetUser",user_id_ = Id_Sudo},function(arg,result) 
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
sendText(msg.chat_id_,Name,msg.id_/2097152/0.5,'md')
end,nil)
end
end
if text == 'تفعيل @all' and Admin(msg) then   
redis:del(bot_id..'NightRang:tagall'..msg.chat_id_) 
Text = '\n اهلا عزيزي \n تم تفعيل امر @all' 
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل @all' and Admin(msg) then  
redis:set(bot_id..'NightRang:tagall'..msg.chat_id_,true) 
Text = '\nاهلا عزيزي \n تم تعطيل امر @all' 
send(msg.chat_id_, msg.id_,Text) 
end 
if text == ("@all") and Admin(msg) and not redis:get(bot_id..'NightRang:tagall'..msg.chat_id_) then
tdcli_function({ID="GetChannelFull",channel_id_ = msg.chat_id_:gsub('-100','')},function(argg,dataa) 
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub('-100',''), offset_ = 0,limit_ = dataa.member_count_
},function(ta,NightRang)
x = 0
tags = 0
local list = NightRang.members_
for k, v in pairs(list) do
tdcli_function({ID="GetUser",user_id_ = v.user_id_},function(arg,data)
if x == 5 or x == tags or k == 0 then
tags = x + 5
t = ""
end
x = x + 1
tagname = data.first_name_
tagname = tagname:gsub("[[]","")
t = t..", ["..tagname.."](tg://user?id="..v.user_id_..")"
if x == 5 or x == tags or k == 0 then
local Text = t:gsub(' ,','')
sendText(msg.chat_id_,Text,msg.id_/2097152/0.5,'md')
end
end,nil)
end
end,nil)
end,nil)
end
if text and text:match('@all (.*)') and Admin(msg) and not redis:get(bot_id..'NightRang:tagall'..msg.chat_id_) then
tdcli_function({ID="GetChannelFull",channel_id_ = msg.chat_id_:gsub('-100','')},function(argg,dataa) 
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub('-100',''), offset_ = 0,limit_ = dataa.member_count_
},function(ta,NightRang)
x = 0
tags = 0
local list = NightRang.members_
for k, v in pairs(list) do
tdcli_function({ID="GetUser",user_id_ = v.user_id_},function(arg,data)
if x == 5 or x == tags or k == 0 then
tags = x + 5
t = ""
end
x = x + 1
tagname = data.first_name_
tagname = tagname:gsub("]","")
tagname = tagname:gsub("[[]","")
t = t..", ["..tagname.."](tg://user?id="..v.user_id_..")"
if x == 5 or x == tags or k == 0 then
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(text:match('@all (.*)')..'\n'..t).."&parse_mode=Markdown&reply_to_message_id="..msg_id)
end
end,nil)
end
end,nil)
end,nil)
end
if text == 'الملفات' and DevVAMBAIR(msg) then
t = '◍ جميع الملفات : \n ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n'
i = 0
for v in io.popen('ls VAMBAIR_Files'):lines() do
if v:match(".lua$") then
i = i + 1
t = t..i..'*~ '..v..'*\n'
end
end
send(msg.chat_id_, msg.id_,t)
end
if text == "متجر الملفات" or text == 'المتجر' then
if DevVAMBAIR(msg) then
local Get_Files, res = https.request("https://raw.githubusercontent.com/MahmoudM5/VAMBAIR/master/getfile.json")
if res == 200 then
local Get_info, res = pcall(JSON.decode,Get_Files);
vardump(res.plugins_)
if Get_info then
local TextS = "\n◍ اهلا بك في متجر ملفات العزايزي \n◍ الملفات الموجوده حاليا \nꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ\n\n"
local TextE = "\nꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ\n◍ تدل علامة (✔) الملف مفعل\n".."◍ تدل علامة (◍) الملف معطل\n"
local NumFile = 0
for name,Info in pairs(res.plugins_) do
local Check_File_is_Found = io.open("VAMBAIR_Files/"..name,"r")
if Check_File_is_Found then
io.close(Check_File_is_Found)
CeckFile = "(✔)"
else
CeckFile = "(◍)"
end
NumFile = NumFile + 1
TextS = TextS..'*'..NumFile.."~⪼* {`"..name..'`} » '..CeckFile..'\n[- File Information]('..Info..')\n'
end
send(msg.chat_id_, msg.id_,TextS..TextE) 
end
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد اتصال من ال api \n") 
end
return false
end
end

if text and text:match("^(تعطيل ملف) (.*)(.lua)$") and DevVAMBAIR(msg) then
local name_t = {string.match(text, "^(تعطيل ملف) (.*)(.lua)$")}
local file = name_t[2]..'.lua'
local file_bot = io.open("VAMBAIR_Files/"..file,"r")
if file_bot then
io.close(file_bot)
t = "*◍ الملف » {"..file.."}\n◍ تم تعطيله وحذفه بنجاح \n✓*"
else
t = "*◍ بالتاكيد تم تعطيل وحذف ملف » {"..file.."} \n✓*"
end
local json_file, res = https.request("https://raw.githubusercontent.com/MahmoudM5/VAMBAIR/master/files_VAMBAIR/"..file)
if res == 200 then
os.execute("rm -fr VAMBAIR_Files/"..file)
send(msg.chat_id_, msg.id_,t) 
dofile('BANDA1M.lua')  
else
send(msg.chat_id_, msg.id_,"*◍ عذرا لا يوجد هاكذا ملف في المتجر *\n") 
end
return false
end
if text and text:match("^(تفعيل ملف) (.*)(.lua)$") and DevVAMBAIR(msg) then
local name_t = {string.match(text, "^(تفعيل ملف) (.*)(.lua)$")}
local file = name_t[2]..'.lua'
local file_bot = io.open("VAMBAIR_Files/"..file,"r")
if file_bot then
io.close(file_bot)
t = "*◍ بالتاكيد تم تنزيل وتفعيل ملف » {"..file.."} \n✓*"
else
t = "*◍ الملف » {"..file.."}\n◍ تم تنزيله وتفعيله بنجاح \n◍*"
end
local json_file, res = https.request("https://raw.githubusercontent.com/MahmoudM5/VAMBAIR/master/files_VAMBAIR/"..file)
if res == 200 then
local chek = io.open("VAMBAIR_Files/"..file,'w+')
chek:write(json_file)
chek:close()
send(msg.chat_id_, msg.id_,t) 
dofile('BANDA1M.lua')  
else
send(msg.chat_id_, msg.id_,"*◍ عذرا لا يوجد هاكذا ملف في المتجر *\n") 
end
return false
end
if text == "مسح جميع الملفات" and DevVAMBAIR(msg) then
os.execute("rm -fr VAMBAIR_Files/*")
send(msg.chat_id_,msg.id_,"◍ تم حذف جميع الملفات")
return false
end
if text == 'نقل الاحصائيات' and DevVAMBAIR(msg) then
local Users = database:smembers('VAMBAIR:'..bot_id.."userss")
local Groups = database:smembers('VAMBAIR:'..bot_id..'groups') 
for i = 1, #Groups do
database:sadd(bot_id..'VAMBAIR:Chek:Groups',Groups[i])  
local list1 = database:smembers('VAMBAIR:'..bot_id..'creatorbasic:'..Groups[i])
for k,v in pairs(list1) do
database:sadd(bot_id.."VAMBAIR:Basic:Constructor"..Groups[i], v)
end
local list2 = database:smembers('VAMBAIR:'..bot_id..'creator:'..Groups[i])
for k,v in pairs(list2) do
database:sadd(bot_id.."VAMBAIR:Constructor"..Groups[i], v)
end
local list3 = database:smembers('VAMBAIR:'..bot_id..'owners:'..Groups[i])
for k,v in pairs(list3) do
database:sadd(bot_id.."VAMBAIR:Manager"..Groups[i], v)
end
local list4 = database:smembers('VAMBAIR:'..bot_id..'mods:'..Groups[i])
for k,v in pairs(list4) do
database:sadd(bot_id.."VAMBAIR:Mod:User"..Groups[i], v)
end
database:set(bot_id.."VAMBAIR:Lock:tagservrbot"..Groups[i],true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..'VAMBAIR:'..lock..Groups[i],"del")    
end
end
for i = 1, #Users do
database:sadd(bot_id..'VAMBAIR:UsersBot',Users[i])  
end
send(msg.chat_id_, msg.id_,'◍ تم نقل : '..#Groups..' كروب\n◍ تم نقل : '..#Users..' مشترك \n◍ من التحديث القديم الى التحديث الجديد')
end
if text == 'حذف كليشه المطور' and DevVAMBAIR(msg) then
database:del(bot_id..'VAMBAIR:Text_Dev')
send(msg.chat_id_, msg.id_,'◍ تم حذف كليشه المطور')
end
if text == 'وضع كليشه المطور' and DevVAMBAIR(msg) then
database:set(bot_id..'VAMBAIR:Set:Text_Dev'..msg.chat_id_..':'..msg.sender_user_id_,true)
send(msg.chat_id_,msg.id_,'◍ ارسل الكليشه الان')
return false
end
if text and database:get(bot_id..'VAMBAIR:Set:Text_Dev'..msg.chat_id_..':'..msg.sender_user_id_) then
if text == 'الغاء' then 
database:del(bot_id..'VAMBAIR:Set:Text_Dev'..msg.chat_id_..':'..msg.sender_user_id_)
send(msg.chat_id_,msg.id_,'◍ تم الغاء حفظ كليشة المطور')
return false
end
database:set(bot_id..'VAMBAIR:Text_Dev',text)
database:del(bot_id..'VAMBAIR:Set:Text_Dev'..msg.chat_id_..':'..msg.sender_user_id_)
send(msg.chat_id_,msg.id_,'◍ تم حفظ كليشة المطور')
return false
end
if text == 'رفع النسخه الاحتياطيه' and DevVAMBAIR(msg) then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.document_ then 
local ID_FILE = result.content_.document_.document_.persistent_id_ 
local File_Name = result.content_.document_.file_name_
add_file(msg,msg.chat_id_,ID_FILE,File_Name)
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == "الساعه" then
local yytesj20 = "\n الساعه الان : "..os.date("%I:%M%p")
send(msg.chat_id_, msg.id_,yytesj20)
end

if text == "التاريخ" then
local cfhoog =  "\n التاريخ : "..os.date("%Y/%m/%d")
send(msg.chat_id_, msg.id_,cfhoog)
end

if text == "تحديث" and DevVAMBAIR(msg) then
dofile("VAMBAIR.lua")  
send(msg.chat_id_, msg.id_, "◍ تم التحديث")
end
-----Zhrfa--------
if text == "تعطيل الزخرفه" and Addictive(msg) then
send(msg.chat_id_, msg.id_, '◍ تم تعطيل الزخرفه')
database:set(bot_id.." amir:zhrf_Bots"..msg.chat_id_,"close")
end
if text == "تفعيل الزخرفه" and Addictive(msg) then
send(msg.chat_id_, msg.id_,'◍ تم تفعيل الزخرفه')
database:set(bot_id.." amir:zhrf_Bots"..msg.chat_id_,"open")
end
if text and text:match("^زخرفه (.*)$") and database:get(bot_id.." amir:zhrf_Bots"..msg.chat_id_) == "open" then
local TextZhrfa = text:match("^زخرفه (.*)$")
zh = https.request('https://rudi-dev.tk/Amir1/Boyka.php?en='..URL.escape(TextZhrfa)..'')
zx = JSON.decode(zh)
t = "\n◍ قائمه الزخرفه \n═───═🅐🅩🅘🅩🅐═───═\n"
i = 0
for k,v in pairs(zx.ok) do
i = i + 1
t = t..i.."-  `"..v.."` \n"
end
send(msg.chat_id_, msg.id_, t..'═───═🅐🅩🅘🅩🅐═───═\n◍ 𝘾𝙃 - [𝙎𝙊𝙐𝙍𝘾𝙀 𝘼𝙇𝘼𝙕𝙄𝙕𝙔](t.me/BANDA1M)  ')
end

-----
if text == 'السورس' or text == 'سورس' or text == 'ياسورس' or text == '"' then
local Text =[[
┍─━─━─┙[🅐🅩🅘🅩🅐](t.me/BANDA1M)┕─━─━─┑
◍ ᴡᴇʟᴄᴏᴍᴇ ᴛᴏ sᴏᴜʀᴄᴇ ᴀʟᴀᴢɪᴢʏ
◍ ᴛʜᴇ ʙᴇsᴛ sᴏᴜʀᴄᴇ ɪɴ ᴛᴇʟᴇɢʀᴀᴍ
┕─━─━─┑[🅐🅩🅘🅩🅐](t.me/BANDA1M)┍─━─━─┙
]]
keyboard = {} 
keyboard.inline_keyboard = {

{
{text = '◍ ᴅᴇᴠ ᴀʟᴀᴢɪᴢʏ', url = "https://t.me/alazizy"}
},
{
{text = '◍ ᴅᴇᴠ ᴀsʀᴀғ', url = "https://t.me/asera126"}
},
{
{text = '◍ ²₀²₁ ˝₀₄˝₁₃ | ₁₂:₀₀ ᴘᴍ', url = "https://t.me/BANDA1M"}
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/mmsst13/762&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
------------
if text == 'العزايزي' or text == 'عزايزي' or text == 'مصطفي محمد' or text == '"' then
local Text =[[
◍ العزايزي يمكنك التواصل معه 
◍ عن طريق معرفه في الاسفل ↓
]]
keyboard = {} 
keyboard.inline_keyboard = {

{
{text = '𝗗𝗘𝗩 𝗔𝗟𝗔𝗭𝗜𝗭𝗬🇪🇬', url = "https://t.me/alazizy"}
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/mmsst13/767&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == 'لولو' or text == 'يالولو' or text == 'lolo' or text == '"' then
local Text =[[
◍ لولو صاحبه السورس التواصل
◍ عن طريق معرفه في الاسفل ↓
]]
keyboard = {} 
keyboard.inline_keyboard = {

{
{text = '𝐋𝐎𝐋𝐎🇪🇬', url = "https://t.me/am_hamzaa"}
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/mmsst13/769&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == 'عمو اشرف' or text == 'الصعيدي' or text == 'عم اشرف' or text == '"' then
local Text =[[
◍ اشرف يمكنك التواصل معه 
◍ عن طريق معرفه في الاسفل ↓
]]
keyboard = {} 
keyboard.inline_keyboard = {

{
{text = 'اشرف الصعيدي🇪🇬', url = "https://t.me/asera126"}
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/mmsst13/768&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == 'رابط الحذف' or text == 'رابط حذف' or text == 'رابط حذف انستا' then
Text =[[
رابط الحذف في جميع مواقع التواصل فكر قبل لا تتسرع وتروح
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = ' ● رابط حذف تلي كرام ●.',url="https://my.telegram.org/auth?to=delete"}},
{{text = ' ● رابط حذف الانستا ●.',url="https://www.instagram.com/accounts/login/?next=/accounts/remove/request/permanent/"}},
{{text = '● رابط حذف فيسبوك ● .',url="https://www.facebook.com/help/deleteaccount"}},
{{text = ' ● رابط حذف سناب شات ● .',url="https://accounts.snapchat.com/accounts/login?continue=https%3A%2F%2Faccounts.snapchat.com%2Faccounts%2Fdeleteaccount"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
return false
end
if text == "نسبه جمالي" or text == "جمالي" then
if Sudo(msg) then
local function getpro(extra, result, success)
if result.photos_[0] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_," نسبه جمالك هي 500% \nعشان مطور وكدا لازم اطبله 😹♥\n" )
else
send(msg.chat_id_, msg.id_,'لا تمتلك صوره في حسابك', 1, 'md')
  end end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, getpro, nil)
else
local function getpro(extra, result, success)
local nspp = {"10","20","30","35","75","34","66","82","23","19","55","80","63","32","27","89","99","98","79","100","8","3","6","0",}
local rdbhoto = nspp[math.random(#nspp)]
if result.photos_[0] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_," نسبه جمالك هي "..rdbhoto.."🙄♥" )
else
send(msg.chat_id_, msg.id_,'لا تمتلك صوره في حسابك', 1, 'md')
  end end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, getpro, nil)
end
end
--------
if text == '/start' and not DevBOYKAW(msg) then  
local Text = [[ 
لتفعيل البوت عليك اضافته مشرف بكامل الصلاحيات 🗺💕
وعندما يتم رفعه مشرف سيتم رفع المشرفين والادمن تلقائيا 💕 
شكرا لك لاستخدام البوت 💕
]] 
keyboard = {}  
keyboard.inline_keyboard = { 
{{text = 'تابع جديدنا من فضلك ',url="t.me/BANDA1M"}}, 
{{text = 'لشراء نسخة من البوت ',url="t.me/alazizy"}}, 
} 
local msg_id = msg.id_/2097152/0.5 
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
--------
if text == 'انا مين' or text == 'مين انا' then
if DevBot(msg) then
send(msg.chat_id_, msg.id_,'◍ انت مطوري حبيبي..🥺♥️')
else
if BasicConstructor(msg) then
send(msg.chat_id_, msg.id_,'◍ انت المنشئ الاساسي ياسطا..😹💘')
else
if Constructor(msg) then 
send(msg.chat_id_, msg.id_,'◍ انت المنشئ ياروحي ..🥺💘')
else
if Owner(msg) then
send(msg.chat_id_, msg.id_,'◍ انت ادمن الله يسهلو..😹💘')
else 
if Addictive(msg) then 
send(msg.chat_id_, msg.id_,'◍ انت ادمن الله يسهلو..😹💘')
else
if Vips(msg) then 
send(msg.chat_id_, msg.id_,'◍ نت عضو مميز يعني متميز..😹💘')
else 
send(msg.chat_id_, msg.id_,'◍ انت عضو قمر هنا..😹💘')
end
end
end
end
end
end
end
----------
if not database:get(bot_id..'VAMBAIR:Reply:Mute'..msg.chat_id_) then
if text == 'هلو' then
TextReply = '◍ هلا بيك ياروحي..💛'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text then 
list = {'سلام عليكم'}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
send(msg.chat_id_,msg.id_, 'وعليكم السلام ..🖤🌚') 
return false
end
end
end
if text then 
list = {'علي النبي'}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
send(msg.chat_id_,msg.id_, 'عليه الصلاه والسلام..??🙂') 
return false
end
end
end
if text then 
list = {'متيقي'}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
send(msg.chat_id_,msg.id_, '◍ هتخدها فين ياوسخ..🙄💔') 
return false
end
end
end
if text then 
list = {'😔'}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
send(msg.chat_id_,msg.id_, 'متزعلش بحبك..😥♥️') 
return false
end
end
end
if text == 'سلام' then
TextReply = '◍ متبقاش تقطع الجوبات..😂💘'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'عامل اي' then
TextReply = '◍ عامل جمعيه..🙄💘'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'تمام' then
TextReply = '◍ دايما ياحبيبي..🌚💜'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'حصل' then
TextReply = '◍ محصلش بطل تطبيل..🙄💘'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'هايات' then
TextReply = '◍ مرحب برئيس اركان قلبي..🍂😌'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'هاي' then
TextReply = '◍ جاي تشقط صح..😹💘'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'زخرفه' then
TextReply = 'اكتب زخرفه + الاسم للزخرفته \n مثال زخرفه العزايزي\n️'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'بحبك' then
TextReply = '◍ بعشء امك..🥺💘'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'دي' then
TextReply = '◍ لا مش هي دي..😹🔥'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == '.' then
TextReply = '◍ خليهم نقططين عشاني..😹💘'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == '..' then
TextReply = '◍ خليهم تلات نقط طيب..😹💘'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == '...' then
TextReply = '◍ نقطهم فعينك بقي...??💘'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'بف' then
TextReply = '◍ عااا خدوني معاكم..😹💔'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'بكرهك' then
TextReply = '◍ ونا والله مش طايقك..😒💔'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == '😂😂😂' then
TextReply = '◍ بتضحك علي خيبتك..🙄💘'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'باي' then
TextReply = '◍ باي ياحته مني..🥺💘'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'متيجي' then
TextReply = '◍ تؤ تعاله انته..🥺💘'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'فين الادمن' then
TextReply = '◍ فلخاص بيخصخص..😂💘'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'بتحبني' then
TextReply = '◍ بدمنك ياحبيبي..🥺♥️'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'بتحب دي' then
TextReply = '◍ هي دي اشكال تتحب..😒💔'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == '🙄🙄' then
TextReply = '◍ سقف الجروب عاجبك..😂💜'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == '😒😒' then
TextReply = '◍ افرد وشك المعفن ده..😑💔'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text then 
list = {'😳😳'}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
send(msg.chat_id_,msg.id_, '◍ احيه..😳') 
return false
end
end
end
if text == 'نعم' then
TextReply = '◍ مين مؤدب ناوو..😹💘'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == '🙂🙂' then
TextReply = '◍ نت هتنكد لي طيب..🥺💔'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == '😹😹😹' then
TextReply = '◍ يجمال ضحكتك..🥺♥️'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'صباحو' then
TextReply = '◍ شبهك يارحي..🥺💘'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'صباح الخير' then
TextReply = '◍ انت الخير ياحبيبي..🌚💜'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'دا بوت' then
TextReply = '◍ احيه هو كان مفكرني انسان ولا اي..😹💜'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'قلبي' then
TextReply = '◍ تنشك في قلبك بتخوني..🙄💔'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'شوف' then
TextReply = '◍ مبشوفش..🙄💔'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'مساء الخير' then
TextReply = '◍ مساء النور يانور حياتي..🥺💜'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'بتعمل اي' then
TextReply = '◍ ونت مالك ياحشري..🙄💘'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'انت مين' then
TextReply = '◍ انا بوت وبحبك..🥺💘'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'البوت واقف' then
TextReply = '◍ لا انا شغال متحورش..😒💔'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'حلوه' then
TextReply = '◍ يحلات عيونك..💋♥️'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'حلو' then
TextReply = '◍ يحلات عيونك..🌚♥️'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'فين' then
TextReply = '◍ هنا فقلبي..😹♥️'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'بوسو' then
TextReply = '◍ اممح ..🥺💘💋'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'بوسها' then
TextReply = '◍ مش معترف بيها نها بنت اصلا..😹💘'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'هينها' then
TextReply = '◍ متستهلش ارد عليها اصلا..😹💜'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'شكرا' then
TextReply = '◍ العفو ياروحي..🌚💘'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'اوف' then
TextReply = '◍ يتي القمر زعلان من اي..🥺🔥'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'بخ' then
TextReply = '◍ يوه خضتني ياسمك اي..🥺💘'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text then 
list = {'انتي مين'}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
send(msg.chat_id_,msg.id_, '◍ انا وحده نسوان ونت مين..😂💘') 
return false
end
end
end
if text then 
list = {'كسمك'}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
send(msg.chat_id_,msg.id_, '◍ عيب ياوسخ..🙄💔') 
return false
end
end
end
if text == 'احا' then
TextReply = '◍ احا وحده مش كفايا..🙄💔'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'احا احا' then
TextReply = '◍ احتين مش دي النهايه..😂💘'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'بعشقك' then
TextReply = '◍ بدمنك ياعيوني..🥺💘'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'عيب' then
TextReply = '◍ سيب الواد يلعب..🙄💛'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'هه' then
TextReply = '◍ ضحكه مش سالكه زيك..😹💘'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
if text == 'حصلخير' then
TextReply = '◍ يتي كبرت وبقيت بتشبك الكلام..🥺💘'
send(msg.chat_id_, msg.id_,'['..TextReply..']')
return false
end
end


if text == 'تفعيل ردود السورس' and Owner(msg) then
database:del(bot_id..'VAMBAIR:Reply:Mute'..msg.chat_id_)
send(msg.chat_id_, msg.id_,'◍ تم تفعيل الردود')
return false
end

if text == 'تعطيل ردود السورس' and Owner(msg) then
database:set(bot_id..'VAMBAIR:Reply:Mute'..msg.chat_id_,true)
send(msg.chat_id_, msg.id_,'◍ تم تعطيل الردود')
return false
end
----------
if text and text:match("^ردد (.*)$") then
local Textxt = text:match("^ردد (.*)$")
send(msg.chat_id_, msg.id_, '['..Textxt..']')
end
----------
if text == "نسبه الحب" or text == "نسبه حب" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
database:set(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_,"sendlove")
Text = 'ارسل اسمك واسم الشخص الثاني،  \n مثال اسد و لبوى'
send(msg.chat_id_, msg.id_,Text) 
end
if text and text ~="نسبه الحب" and database:get(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_) == "sendlove" then
num = {"10","20","30","35","75","34","66","82","23","19","55","8","63","32","27","89","99","98","3","80","49","100","6","0",};
sendnum = num[math.random(#num)]
sl = 'نسبه حب '..text..' هي : '..sendnum..'%'
send(msg.chat_id_, msg.id_,sl) 
database:del(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_)
end
if text == "نسبه الكره" or text == "نسبه كره" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
database:set(bot_id..":"..msg.sender_user_id_..":krh_Bots"..msg.chat_id_,"sendkrhe")
Text = 'ارسل اسمك واسم الشخص الثاني،  \n مثال اسد و لبوى'
send(msg.chat_id_, msg.id_,Text) 
end
if text and text ~="نسبه الكره" and database:get(bot_id..":"..msg.sender_user_id_..":krh_Bots"..msg.chat_id_) == "sendkrhe" then
num = {"10","20","30","35","75","34","66","82","23","19","55","8","63","32","27","89","99","98","3","80","8","100","6","0",};
sendnum = num[math.random(#num)]
sl = 'نسبه كره '..text..' هي : '..sendnum..'%'
send(msg.chat_id_, msg.id_,sl) 
database:del(bot_id..":"..msg.sender_user_id_..":krh_Bots"..msg.chat_id_)
end
if text == "نسبه رجوله" or text == "نسبه الرجوله" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
database:set(bot_id..":"..msg.sender_user_id_..":rjo_Bots"..msg.chat_id_,"sendrjoe")
Text = 'ارسل اسم الشخص الذي تريد قياس نسبه رجولته \n مثال امير'
send(msg.chat_id_, msg.id_,Text) 
end
if text and text ~="نسبه رجوله" and database:get(bot_id..":"..msg.sender_user_id_..":rjo_Bots"..msg.chat_id_) == "sendrjoe" then
numj = {"10","20","30","35","75","34","66","82","23","19","55","80","63","32","27","89","99","98","79","100","8","3","6","0",};
sendnuj = numj[math.random(#numj)]
xl = 'نسبه رجوله '..text..' هي : \n '..sendnuj..'%'
send(msg.chat_id_, msg.id_,xl) 
database:del(bot_id..":"..msg.sender_user_id_..":rjo_Bots"..msg.chat_id_)
end
if text == "باد" or text == "اسئله محرجه" then 
local TWEET_Msg = { 
" لا تحقرون صغيره إن الجبال من الحصي🥵",
" عاوز تنزل ناو ولا لا ?🥵",
" لو جيسكا قالتلك بيو بيو هتوافق ?🥵",
" مين الممثله اللي نفسك تعمل معاها احيه ?🥵",
" لو جاتلك فرصه تمارسي الجنس المخفف راح توافقي او لا ?🥵",
"اخر مرهه غفلت حد وعملت معاه الجولاشه امته ?🥵 ",
" اي اكتر حاجه بتشدك لجسم الجنس الاخر ?🥵",
" بعتي نودز لكام ولد ?🥵",
" عمرك سكسكتي مع ولد ?🥵",
" بتسكسك مع كام بنت ?🥵",
"قبلتي صديقك قبل كدا ?🥵 ",
" عمرك مارست الجنس ?🥵",
" ما رأيك في اللون الاسود حينما ترتديه فتاه بيضاء ?🥵",
" اخر مره قبلت بنت ?🥵",
"اخر مره قبلتي ولد ?🥵 ",
" مشتهي شي ?🥵",
"اخر مره قمت بزياره المواقع الايباحيه ?🥵 ",
"بدك تمارسي العاده السريه من الامام ام الخلف ? 🥵",
"ما المكان المفضل لك في ممارسه الجنس ?🥵 ",
" متي قمت بممارسه العاده السريه اخر مره ?🥵",
" ما لون ملابسك الداخليه المفضل ?🥵",
"ما مقاس البرا التي ترتديها الان ?🥵 ",
" كم مرا نكت بنت ؟🥵",
"اخر مرا دخلت الحمام ؟🥵 ",
"فشخت كام بنت🥵  ",
" بلغت ولا لا 🥵",
" عايز تنيك ولا لا 🥵",
"حابه تفتحي تيزيك🥵  ",
"اخر مره سكستي امته 🥵 ",
"حابب تنيك خالتك 🥵 ",
} 
send(msg.chat_id_, msg.id_,'['..TWEET_Msg[math.random(#TWEET_Msg)]..']')  
return false 
end
if text == "بوستات" or text == "قولي" then 
local TWEET_Msg = { 
" أحياناً.. ويصبح الوهم حقيقه😪.",
" الجمال يلفت الأنظار لكن الطيبه تلفت القلوب🙂 .!",
"لا تحقرون صغيره إن الجبال من الحصي 💖",
"لا تمد عينك في يد غيرك 💕",
"‏ بعض الاِعتذارات يجب أن تُرفَضّ. 🌚.",
"‏ هل كانت كل الطرق تؤدي إليكِ، أم أنني كنتُ أجعلها كذلك. 🤫 .!",
"ويُرهقني أنّي مليء بما لا أستطيع قوله.✨ ",
"‏أَكَان عَلَيَّ أَنْ أغْرَس انيابي فِي قَلْبِك لتشعر بِي ؟. 😁",
"‏ إن الأمر ينتهي بِنا إلى أعتياد أي شيء. 😎",
"‏ بعض الاِعتذارات يجب أن تُرفَضّ. 😃",
"لا تظلم حتى لا تتظلم 😊",
"لا حياه للإنسان بلا نبات ☺️",
"لا تقف قصاد الريح ولا تمشي معها.... ❤️",
" لا تملح الا لمن يستحقاها ويحافظ عليها😛",
"لا يدخل الجنه من لايأمن من جازه بوائقه 😿.",
"لا دين لمن لا عهد له 💞 ",
"لا تظلم حتى لا تتظلم 🌚.",
"عامل الناس بأخلاقك ولا بأخلاقهم 💞⛷️",
"لا تقف قصاد الريح ولا تمشي معها.... 💚 ",
"‏ ‏أحببتك وأنا منطفئ، فما بالك وأنا في كامل توهجي ؟ 🙂 .!",
"‏من ترك أمرهُ لله، أعطاه الله فوق ما يتمنَّاه💙 ",
"‏ إنعدام الرّغبة أمام الشّيء الّذي أدمنته ، انتصار. »💛",
"‏ ‏كل العالم يهون بس الدنيا بينا تصفي 💙 ",
"‏ إن الأمر ينتهي بِنا إلى أعتياد أي شيء. 😚 ",
"‏ إنعدام الرّغبة أمام الشّيء الّذي أدمنته ، انتصار. 💝",
"‏ لا تعودني على دفء شمسك، إذا كان في نيتك الغروب .َ 🙂 .!",
"‏من علامات جمال المرأة .. بختها المايل ! ❤️",
"‏ علينا إحياء زَمن الرّسائل الورقيّة وسط هذه الفوضى الالكترونية العَارمة.💜 ",
"‏ كلما أتبع قلبي يدلني إليك . 😜",
"‏ انك الجميع و كل من احتل قلبي🫀🤍 ",
"‏ بس لما أنا ببقى فايق، ببقى أبكم له ودان.💖 ",
"‏ ‏ممكن اكون اختارت غلط بس والله حبيت بجد🖇️ ",
"‏ لا تعودني على دفء شمسك، إذا كان في نيتك الغروب .َ 💕",
" ‏ ‏تبدأ حياتك محاولاً فهم كل شيء، وتنهيها محاولاً النجاة من كل ما فهمت.💖",
"الجمال يلفت الأنظار لكن الطيبه تلفت القلوب 😁",
"كما تدين تدان 😊",
"عامل الناس بأخلاقك ولا بأخلاقهم 🙂",
"يسروا ولا تعسروا... ويشورا ولا تنفروا 💕",
" لا يدخل الجنه من لايأمن من جازه بوائقه💓",
" كل كتير عادي ميهمكش😂❤️",
"لا تملح الا لمن يستحقاها ويحافظ عليها 💞 ",
" الجمال يلفت الأنظار لكن الطيبه تلفت القلوب💞 ",
" خليك طبيعي مش نورم😇❤️ ",
" الدنيا حلوه متزعلش علي ناس ماتستاهلش🌝🏃‍♂️",
" العقل السليم ف البعد عن الحريم😇❤️",
"عيش الحياه يوم واحد 🙂 .! ",
"امشي كتير عشان تخس 🧐 .! ",
" اشرب ميه كتير 😎.",
"كُنْ لحوحاً فِي الدّعاءِ،فقدْ أوشكَ السّهمُ أنْ يُصيبَ. 💗",

} 
send(msg.chat_id_, msg.id_,'['..TWEET_Msg[math.random(#TWEET_Msg)]..']')  
return false 
end
if text == "صراحه" or text == "الصراحه" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
database:set(bot_id..":"..msg.sender_user_id_..":rkko_Bots"..msg.chat_id_,"sendrkkoe")
local LEADER_Msg = {
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
send(msg.chat_id_, msg.id_,'['..LEADER_Msg[math.random(#LEADER_Msg)]..']') 
return false
end
if text == "نكته" or text == "قولي نكته" or text == "عايز اضحك" then 
local TWEET_Msg = { 
" مرة واحد مصري دخل سوبر ماركت في الكويت عشان يشتري ولاعة..    راح عشان يحاسب بيقوله الولاعة ديه بكام؟   قاله دينار..  قاله منا عارف ان هي نار بس بكام 🤓😂", 
"بنت حبت تشتغل مع رئيس عصابة..   شغلها في غسيل الأموال 🤓😂 ", 
"واحد بيشتكي لصاحبه بيقوله أنا مافيش حد بيحبني ولا يفتكرني أبدًا، ومش عارف أعمل إيه.. قاله سهلة.. استلف من الناس فلوس هيسألوا عليك كل يوم! 🤓😂",
"ﻣﺮه واﺣﺪ ﻣﺴﻄﻮل ﻣﺎﺷﻰ ﻓﻰ اﻟﺸﺎرع ﻟﻘﻰ مذﻳﻌﻪ ﺑﺘﻘﻮﻟﻪ ﻟﻮ ﺳﻤﺤﺖ ﻓﻴﻦ اﻟﻘﻤﺮ؟    ﻗﺎﻟﻬﺎ اﻫﻮه..   ﻗﺎﻟﺘﻠﻮ ﻣﺒﺮوك ﻛﺴﺒﺖ ﻋﺸﺮﻳﻦ ﺟﻨﻴﻪ..   ﻗﺎﻟﻬﺎ ﻓﻰ واﺣﺪ ﺗﺎﻧﻰ ﻫﻨﺎك اﻫﻮه. 🤓😂",
"واحده ست سايقه على الجي بي اس..  قالها انحرفي قليلًا..   قلعت الطرحة. 🤓😂 ",
"مرة واحد غبي معاه عربية قديمة جدًا وبيحاول يبيعها وماحدش راضي يشتريها.. راح لصاحبه حكاله المشكلة.. صاحبه قاله عندي لك فكرة جهنمية هاتخليها تتباع الصبح.. أنت تجيب علامة مرسيدس وتحطها عليها. بعد أسبوعين صاحبه شافه صدفة قاله بعت العربية ولا لاء؟ قاله انت  مجنون؟ حد يبيع مرسيدس؟ 🤓😂",
"مره واحد بلديتنا كان بيدق مسمار فى الحائط فالمسمار وقع منه فقال له :تعالى ف مجاش, فقال له: تعالي ف مجاش. فراح بلديتنا رامي على المسمار شوية مسمامير وقال: هاتوه. 🤓😂",
"واحدة عملت حساب وهمي ودخلت تكلم جوزها منه.. ومبسوطة أوي وبتضحك.. سألوها بتضحكي على إيه؟ قالت لهم أول مرة يقول لي كلام حلو من ساعة ما اتجوزنا. 🤓😂",
"بنت حبت تشتغل مع رئيس عصابة..   شغلها في غسيل الأموال 🤓😂",
"مره واحد اشترى فراخ..   علشان يربيها فى قفص صدره.🤓😂",
"مرة واحد من الفيوم مات..   أهله صوصوا عليه.🤓😂",
"ﻣﺮه واﺣﺪ ﻣﺴﻄﻮل ﻣﺎﺷﻰ ﻓﻰ اﻟﺸﺎرع ﻟﻘﻰ مذﻳﻌﻪ ﺑﺘﻘﻮﻟﻪ ﻟﻮ ﺳﻤﺤﺖ ﻓﻴﻦ اﻟﻘﻤﺮ؟    ﻗﺎﻟﻬﺎ اﻫﻮه..   ﻗﺎﻟﺘﻠﻮ ﻣﺒﺮوك ﻛﺴﺒﺖ ﻋﺸﺮﻳﻦ ﺟﻨﻴﻪ..   ﻗﺎﻟﻬﺎ ﻓﻰ واﺣﺪ ﺗﺎﻧﻰ ﻫﻨﺎك اﻫﻮه.🤓😂",
"مره واحد شاط كرة فى المقص..   اتخرمت. 🤓😂",
"مرة واحد رايح لواحد صاحبه.. فا البواب وقفه بيقول له انت طالع لمين.. قاله طالع أسمر شوية لبابايا.. قاله يا أستاذ طالع لمين في العماره 🤓😂",
} 
send(msg.chat_id_, msg.id_,'['..TWEET_Msg[math.random(#TWEET_Msg)]..']')  
return false 
end
if text and text ~="صراحه" and database:get(bot_id..":"..msg.sender_user_id_..":rkko_Bots"..msg.chat_id_) == "sendrkkoe" then
numj = {"اي الكدب دا 😒","فعلا بتتكلم صح🤗","يجدع قول كلام غير دا😹","حصل اوماال😹◍","طب عيني ف عينك كدا 👀","انت صح🙂♥",};
sendnuj = numj[math.random(#numj)]
xl = ' ◍ '..text..' ◍ \n '..sendnuj..'.'
send(msg.chat_id_, msg.id_,xl) 
database:del(bot_id..":"..msg.sender_user_id_..":rkko_Bots"..msg.chat_id_)
end
if text == "نسبه الانوثه" or text == "نسبه انوثه" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
database:set(bot_id..":"..msg.sender_user_id_..":ano_Bots"..msg.chat_id_,"sendanoe")
Text = 'ارسل اسم الشخص الذي تريد قياس نسبه انوثتها \n مثال نونه'
send(msg.chat_id_, msg.id_,Text) 
end
if text and text ~="نسبه الانوثه" and database:get(bot_id..":"..msg.sender_user_id_..":ano_Bots"..msg.chat_id_) == "sendanoe" then
numj = {"10","20","30","35","75","34","66","82","23","19","55","80","63","32","27","89","99","98","79","100","8","3","6","0",};
sendnuj = numj[math.random(#numj)]
xl = 'نسبه الانوثه '..text..' هي : \n '..sendnuj..'%'
send(msg.chat_id_, msg.id_,xl) 
database:del(bot_id..":"..msg.sender_user_id_..":ano_Bots"..msg.chat_id_)
end
------------
if text == "كتبات" or text == "حكمه" or text == "قصيده" then 
local TWEET_Msg = { 
"‏من ترك أمرهُ لله، أعطاه الله فوق ما يتمنَّاه💙 ", 
"‏من علامات جمال المرأة .. بختها المايل ! ",
"‏ انك الجميع و كل من احتل قلبي🫀🤍",
"‏ ‏ لقد تْعَمقتُ بكَ كَثيراً والمِيمُ لام .♥️",
"‏ ‏ممكن اكون اختارت غلط بس والله حبيت بجد🖇️",
"‏ علينا إحياء زَمن الرّسائل الورقيّة وسط هذه الفوضى الالكترونية العَارمة.🔘💜",
"‏ يجي اي الصاروخ الصيني ده جمب الصاروخ المصري لما بيلبس العبايه السوده.🤩♥️",
"‏ كُنت أرقّ من أن أتحمّل كُل تلك القَسوة من عَينيك .🍍",
"‏أَكَان عَلَيَّ أَنْ أغْرَس انيابي فِي قَلْبِك لتشعر بِي ؟.",
"‏ : كُلما أتبع قلبي يدلني إليك .",
"‏ : أيا ليت من تَهواه العينُ تلقاهُ .",
"‏ ‏: رغبتي في مُعانقتك عميقة جداً .🥥",
"ويُرهقني أنّي مليء بما لا أستطيع قوله.✨",
"‏ من مراتب التعاسه إطالة الندم ع شيء إنتهى. 🔘 ",
"‏ ‏كل العالم يهون بس الدنيا بينا تصفي 💙",
"‏ بعض الاِعتذارات يجب أن تُرفَضّ.",
"‏ ‏تبدأ حياتك محاولاً فهم كل شيء، وتنهيها محاولاً النجاة من كل ما فهمت.",
"‏ إن الأمر ينتهي بِنا إلى أعتياد أي شيء.",
"‏ هل كانت كل الطرق تؤدي إليكِ، أم أنني كنتُ أجعلها كذلك.",
"‏ ‏هَتفضل توآسيهُم وآحد ورآ التآني لكن أنتَ هتتنسي ومحدِش هَيوآسيك.",
"‏ جَبَرَ الله قلوبِكُم ، وقَلبِي .🍫",
"‏ بس لما أنا ببقى فايق، ببقى أبكم له ودان.💖",
"‏ ‏مقدرش عالنسيان ولو طال الزمن 🖤",
"‏ أنا لستُ لأحد ولا احد لي ، أنا إنسان غريب أساعد من يحتاجني واختفي.",
"‏ ‏أحببتك وأنا منطفئ، فما بالك وأنا في كامل توهجي ؟",
"‏ لا تعودني على دفء شمسك، إذا كان في نيتك الغروب .َ",
"‏ وانتهت صداقة الخمس سنوات بموقف.",
"‏ ‏لا تحب أحداً لِدرجة أن تتقبّل أذاه.",
"‏ إنعدام الرّغبة أمام الشّيء الّذي أدمنته ، انتصار.",
"‏مش جايز , ده اكيد التأخير وارهاق القلب ده وراه عوضاً عظيماً !💙 ",
" مش جايز , ده اكيد التأخير وارهاق القلب ده وراه عوضاً عظيماً !💙",
"فـ بالله صبر  وبالله يسر وبالله عون وبالله كل شيئ ♥️. ",
"أنا بعتز بنفسي جداً كصاحب وشايف اللي بيخسرني ، بيخسر أنضف وأجدع شخص ممكن يشوفه . ",
"فجأه جاتلى قافله ‏خلتنى مستعد أخسر أي حد من غير ما أندم عليه . ",
"‏اللهُم قوني بك حين يقِل صبري... ",
"‏يارب سهِل لنا كُل حاجة شايلين هَمها 💙‏ ",
"انا محتاج ايام حلوه بقي عشان مش نافع كدا ! ",
"المشكله مش اني باخد قررات غلط المشكله اني بفكر كويس فيها قبل ما اخدها .. ",
"تخيل وانت قاعد مخنوق كدا بتفكر فالمزاكره اللي مزكرتهاش تلاقي قرار الغاء الدراسه .. ",
" مكانوش يستحقوا المعافرة بأمانه.",
"‏جمل فترة في حياتي، كانت مع اكثر الناس الذين أذتني نفسيًا. ",
" ‏إحنا ليه مبنتحبش يعني فينا اي وحش!",
"أيام مُمله ومستقبل مجهول ونومٌ غير منتظموالأيامُ تمرُ ولا شيَ يتغير ", 
"عندما تهب ريح المصلحه سوف ياتي الجميع رتكدون تحت قدمك ❤️. ",
"عادي مهما تعادي اختك قد الدنيا ف عادي ❤. ",
"بقيت لوحدي بمعنا اي انا اصلا من زمان لوحدي.❤️ ",
"- ‏تجري حياتنا بما لاتشتهي أحلامنا ! ",
"تحملين كل هذا الجمال، ‏ألا تتعبين؟",
"البدايات للكل ، والثبات للصادقين ",
"مُؤخرًا اقتنعت بالجملة دي جدا : Private life always wins. ",
" الافراط في التسامح بيخللي الناس تستهين بيك🍍",
"مهما كنت كويس فـَ إنت معرض لـِ الاستبدال.. ",
"فخوره بنفسي جدًا رغم اني معملتش حاجه فـ حياتي تستحق الذكر والله . ",
"‏إسمها ليلة القدر لأنها تُغير الأقدار ,اللهُمَّ غير قدري لحالٍ تُحبه وعوضني خير .. ",
"فى احتمال كبير انها ليلة القدر ادعوا لنفسكم كتير وأدعو ربنا يشفى كل مريض. 💙 ",
"أنِر ظُلمتي، وامحُ خطيئتي، واقبل توبتي وأعتِق رقبتي يا اللّٰه. إنكَ عفوٌّ تُحِبُّ العفوَ؛ فاعفُ عني 💛 ", 
} 
send(msg.chat_id_, msg.id_,'['..TWEET_Msg[math.random(#TWEET_Msg)]..']')  
return false 
end
if text == "انصحني" or text == "انصحنى" or text == "انصح" then 
local TWEET_Msg = { 
"عامل الناس بأخلاقك ولا بأخلاقهم", 
"الجمال يلفت الأنظار لكن الطيبه تلفت القلوب ", 
"الاعتذار عن الأخطاء لا يجرح كرامتك بل يجعلك كبير في نظر الناس ",
"لا ترجي السماحه من بخيل.. فما في البار لظمان ماء",
"لا تحقرون صغيره إن الجبال من الحصي",
"لا تستحي من إعطاء فإن الحرمان أقل منه ", 
"لا تظلم حتى لا تتظلم ",
"لا تقف قصاد الريح ولا تمشي معها ",
"لا تكسب موده التحكم الا بالتعقل",
"لا تمد عينك في يد غيرك ",
"لا تملح الا لمن يستحقاها ويحافظ عليها",
"لا حياه للإنسان بلا نبات",
"لا حياه في الرزق.. ولا شفاعه في الموت",
"كما تدين تدان",
"لا دين لمن لا عهد له ",
"لا سلطان على الدوق فيما يحب أو بكره",
"لا مروه لمن لادين له ",
"لا يدخل الجنه من لايأمن من جازه بوائقه",
"يسروا ولا تعسروا... ويشورا ولا تنفروا",
"يدهم الصدر ما يبني العقل الواسع ",
"أثقل ما يوضع في الميزان يوم القيامة حسن الخلق ",
"أجهل الناس من ترك يقين ما عنده لظن ما عند الناس ",
"أحياناً.. ويصبح الوهم حقيقه ",
"مينفعش تعاتب حد مبيعملش حساب لزعلك عشان متزعلش مرتين . ",
"السفر ومشاهده اماكن مختلفه وجديده ",
"عدم تضيع الفرص واسثمارها لحظه مجبئها ",
" اعطاء الاخرين اكثر من ما يتوقعون",
"معامله الناس بلطف ولكن عدم السماح لاحد بستغالال ذالك ",
"تكوين صدقات جديده مع الحفظ بلاصدقاء القودامي ",
"تعلم اصول المهنه بدلا من تضيع الوقت ف تعلم حيل المهنه ",
"مدح ع الاقل ثلاث اشخاص يوميا ",
"النظر ف عيون الشخاص عند مخاطبتهم ",
"التحلي بلسماح مع الاخرين او النفس ",
"الاكثار من قول كلمه شكرا ",
" مصافحه الاخرين بثبات وقوة ",
"الابتعاد عن المناطق السيئه السمعه لتجنب الاحداث السئه ",
" ادخار 10٪ع الاقل من الدخل",
" تجنب المخاوف من خلال التعلم من تجارب مختلفه",
" الحفاظ ع السمعه لانها اغلي ما يملك الانسان",
" تحويل الاعداء الي اصدقاء من خلال القيام بعمل جيد",
"لا تصدق كل ما تسمعع. ولا تنفق كل ما تمتلك . ولا تنم قدر ما ترغب ",
" اعتني بسمعتك جيدا فستثبت للك الايام انها اغلي ما تملك",
"حين تقول والدتك ستندم ع فعل ذالك ستندم عليه غالبا.. ",
" لا تخش العقبات الكبيره فخلفها تقع الفرص العظيمه",
"قد لا يتطلب الامر اكثر من شخص واحد لقلب حياتك رأس ع عقب ",
"اختر رفيقه حياتك بحرص فهو قرار سيشكل 90٪من سعادتك او بؤسك ",
" اقلب اداءك الاصدقاء بفعل شي جميل ومفجائ لهم",
"حين تدق الفرصه ع باباك ادعوها للبيت ",
"تعلم القواعد جيدا ثن اكسر بعدها ",
"احكم ع نجاحك من خلال قدرتك ع العطاء وليس الاخذ ",
" لا تتجاهل الشيطان مهما بدل ثيابه",
"ركز ع جعل الاشياء افضل وليس اكبر او اعظم ",
"كن سعيد  بما تمتلك واعمل لامتلاك ما تريد ",
"اعط الناس اكثر من ما يتوقعون ",
" لا تكن منشغل لدرجه عدم التعرف ع اصدقاء جدد",
"استحمه يوم العيد يمعفن🤓",
"مش تحب اي حد يقرب منك ",
" خليك مع البت راجل خليك تقيل🥥",
" انصح نفسك بنفسك بمت😆",
" كنت نصحت نفسي ياخويا😹", 
} 
send(msg.chat_id_, msg.id_,'['..TWEET_Msg[math.random(#TWEET_Msg)]..']')  
return false 
end
if text == "تويت" or text == "كت تويت" then
local TWEET_Msg = {
" انت حزين اول شخص تتصل عليه؟",
"متى تقرر تنسحب من أي علاقة ؟ ",
"تملك وسواس من شيء معين ؟ ",
"هل أنت من النوع الذي يواجه المشاكل أو من النوع الذي يهرب ؟ ",
" كم نسبة البيتوتية في شخصيتك؟",
"ردة فعلك لمن يتجاهلك بالرد متعمد؟ ",
" كلام ودك يوصل للشخص المطلوب ؟",
"أول شيء يخطر في بالك إذا سمعت كلمة نجوم ؟ ",
"مسلسل كرتوني له ذكريات جميلة عندك؟  ",
" عمرك ضحيت باشياء لاجل شخص م يسوى ؟",
" تجامل الناس ولا اللي بقلبك على لسانك؟",
"جربت شعور احد يحبك بس انت مو قادر تحبه؟ ",
"اخر كتاب قرآته",
"افضل يوم ف حياتك",
"حكمتك ف الحياه",
"لون عيونك",
"وش اسم اول شخص تعرفت عليه فالتلقرام ؟",
"عادي تتزوج من برا القبيلة؟",
" تفضّل النقاش الطويل او تحب الاختصار ؟",
"قد تخيلت شي في بالك وصار ؟",
"كم في حسابك البنكي ؟",
"سؤال ينرفزك ؟",
"أجمل شيء حصل معك خلال هذا الاسبوع ؟",
"أجمل شيء حصل معك خلال هذا الاسبوع ؟ ",
"الفلوس او الحب ؟ ",
" الارتباط سوشيال نهايته اي؟ ",
" ما السيء في هذه الحياة ؟ ",
" نسبة رضاك عن الأشخاص من حولك هالفترة",
" اي اخرتها يعني هتفضل معاها؟ ",
"كتابك المفضل",
"هوايتك المفضله",
"كت تويت ‏| تخيّل لو أنك سترسم شيء وحيد فيصبح حقيقة، ماذا سترسم؟",
"كت تويت | أكثر شيء يُسكِت الطفل برأيك؟",
"كت تويت | الحرية لـ ... ؟",
"كت تويت | قناة الكرتون المفضلة في طفولتك؟",
"كت تويت ‏| كلمة للصُداع؟",
"كت تويت ‏| ما الشيء الذي يُفارقك؟",
"كت تويت | موقف مميز فعلته مع شخص ولا يزال يذكره لك؟",
"كت تويت ‏| أيهما ينتصر، الكبرياء أم الحب؟",
"كت تويت | بعد ١٠ سنين ايش بتكون ؟",
"كت تويت ‏| مِن أغرب وأجمل الأسماء التي مرت عليك؟",
"‏كت تويت | عمرك شلت مصيبة عن شخص برغبتك ؟",
"كت تويت | أكثر سؤال وجِّه إليك مؤخرًا؟",
"‏كت تويت | ما هو الشيء الذي يجعلك تشعر بالخوف؟",
"‏كت تويت | وش يفسد الصداقة؟",
"‏كت تويت | شخص لاترفض له طلبا ؟",
"‏كت تويت | كم مره خسرت شخص تحبه؟.",
"‏كت تويت | كيف تتعامل مع الاشخاص السلبيين ؟",
"‏كت تويت | كلمة تشعر بالخجل اذا قيلت لك؟",
"‏كت تويت | جسمك اكبر من عٌمرك او العكسّ ؟!",
"‏كت تويت |أقوى كذبة مشت عليك ؟",
"‏كت تويت | تتأثر بدموع شخص يبكي قدامك قبل تعرف السبب ؟",
"كت تويت | هل حدث وضحيت من أجل شخصٍ أحببت؟",
"‏كت تويت | أكثر تطبيق تستخدمه مؤخرًا؟",
"‏كت تويت | ‏اكثر شي يرضيك اذا زعلت بدون تفكير ؟",
"‏كت تويت | وش محتاك عشان تكون مبسوط ؟",
"‏كت تويت | مطلبك الوحيد الحين ؟",
"‏كت تويت | هل حدث وشعرت بأنك ارتكبت أحد الذنوب أثناء الصيام؟",
"علاقتك مع اهلك",
"ثلاثة أشياء تحبها"
}
send(msg.chat_id_, msg.id_,'['..TWEET_Msg[math.random(#TWEET_Msg)]..']') 
return false
end
-----------
if text == 'الاوامر' or text == 'اوامر' or text == 'الأوامر' then
local Text =[[
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ قم بأختيار اللغه.. ↑↓
◍ Choose language.. ↑↓ 
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'english 𝅘𝅥𝅮', callback_data=msg.sender_user_id_.."/hlep"}, {text = 'عربي 𝅘𝅥𝅮', callback_data=msg.sender_user_id_.."/help"}, 
},
{
{text = '◍.²₀²₁ ˝₀₄˝₁₃ | ₁₂:₀₀ 𝙿𝙼.◍', url="t.me/BANDA1M"}, 
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text and text:match("ضع لقب (.*)") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructor(msg) then
local namess = text:match("ضع لقب (.*)")
function Function_Tshake(extra, result, success)
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم تععين لقب")  
https.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_invite_users=True")
https.request("https://api.telegram.org/bot"..token.."/setChatAdministratorCustomTitle?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_.."&custom_title="..namess)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^(ضع لقب) @(.*) (.*)$") and Constructor(msg) then
local username = {string.match(text, "^(ضع لقب) @(.*) (.*)$")}
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"◍ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end
Reply_Status(msg,result.id_,"reply","◍ تم تعيين لقب")  
https.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_invite_users=True")
https.request("https://api.telegram.org/bot"..token.."/setChatAdministratorCustomTitle?chat_id="..msg.chat_id_.."&user_id="..result.id_.."&custom_title="..username[3])
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username[2]}, Function_Tshake, nil)
return false
end

if text == ("تعديل الصلاحيات") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructor(msg) then
function Function_Tshake(extra, result, success)
local Text = "◍ اختر تعديل الصلاحيات"
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'تعديل الصلاحيات', callback_data='amr@'..msg.sender_user_id_..'/user@'..result.sender_user_id_.."/setiinginfo"}
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^تعديل الصلاحيات @(.*)$") and Constructor(msg) then
local username = text:match("^تعديل الصلاحيات @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"◍ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end
local Text = "◍ اختر تعديل الصلاحيات"
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'تعديل الصلاحيات', callback_data='amr@'..msg.sender_user_id_..'/user@'..result.id_.."/setiinginfo"}
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text == ("رفع مشرف") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructor(msg) then
function Function_Tshake(extra, result, success)
https.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_invite_users=True")
local Text = "◍ تم ترقيته مشرف"
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'تعديل الصلاحيات', callback_data='amr@'..msg.sender_user_id_..'/user@'..result.sender_user_id_.."/setiinginfo"}
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^رفع مشرف @(.*)$") and Constructor(msg) then
local username = text:match("^رفع مشرف @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"◍ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end
https.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_invite_users=True")
local Text = "◍ تم ترقيته مشرف"
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'تعديل الصلاحيات', callback_data='amr@'..msg.sender_user_id_..'/user@'..result.id_.."/setiinginfo"}
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end
if text == ("تنزيل مشرف") and tonumber(msg.reply_to_message_id_) ~= 0 and Constructor(msg) then
function Function_Tshake(extra, result, success)
Reply_Status(msg,result.sender_user_id_,"reply","◍ تم تنزيله من المشرفين")  
https.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_manage_chat=false&can_manage_voice_chats=false&can_manage_voice_chats=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_Tshake, nil)
return false
end
if text and text:match("^تنزيل مشرف @(.*)$") and Constructor(msg) then
local username = text:match("^تنزيل مشرف @(.*)$")
function Function_Tshake(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"◍ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end
Reply_Status(msg,result.id_,"reply","◍ تم تنزيله من المشرفين")  
https.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_manage_chat=false&can_manage_voice_chats=false&can_manage_voice_chats=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد حساب بهاذا المعرف")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_Tshake, nil)
return false
end

if text == 'م1 ◍' and Addictive(msg) then
Text = [[
◍ اوامر حمايه المجموعه
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
⏺┇قفل/فتح + الاوامر الادناه 
⏺┇قفل/فتح + الامر بالتقييد • بالطرد • بالكتم
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
◍ الروابط
◍ المعرف
◍ التاك
◍ الشارحه
◍ التعديل
◍ التثبيت
◍ المتحركه
◍ الملفات
◍ الصور

◍ الملصقات
◍ الفيديو
◍ الانلاين
◍ الدردشه
◍ التوجيه
◍ الاغاني
◍ الصوت
◍ الجهات
◍ الاشعارات

◍ الماركداون
◍ البوتات
◍ التكرار
◍ الكلايش
◍ السيلفي
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
◍ Ch ~⪼ [@BANDA1M]
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'م2 ◍' and Addictive(msg) then
Text = [[
🥈┇اوامر الادمنيه
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
▶️┇رفع/تنزيل مميز
◍ تاك للكل
◍ عدد الجروب
◍ كتم
◍ حظر
◍ طرد
◍ منع
◍ تقييد
⏺┇الغاء حظر
⏺┇الغاء كتم
⏺┇الغاء تقييد
⏺┇الغاء منع
📋┇المحظورين
📋┇المكتومين
📋┇المميزين
📋┇الصلاحيات
📋┇قائمه المنع

〽┇تثبيت
⏺┇الغاء تثبيت
📄┇الاعدادات

🗳┇الرابط
📃┇القوانين

👋🏻┇الترحيب
👋🏻┇تفعيل/تعطيل الترحيب
◍ اضف /مسح صلاحيه 
◍ وضع تكرار + العدد
💭┇ايدي
💭┇جهاتي
💭┇سحكاتي
💭┇رسائلي
💭┇كشف البوتات
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
◍ وضع + الاوامر الادناه
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
◍ اسم
◍ رابط
◍ صوره
◍ وصف
◍ قوانين
◍ ترحيب
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
◍ مسح + الاوامر الادناه
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
◍ قائمه المنع
◍ المحظورين
◍ المميزين
◍ المكتومين
◍ المطرودين
◍ القوانين
◍ البوتات
◍ الصوره
◍ الصلاحيات
◍ الرابط
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
◍ CH [@BANDA1M]
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'م3 ◍' and Owner(msg) then
Text = [[
🥇┇ اوامر المدراء
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
↕️┇رفع/تنزيل ادمن
↕️┇رفع/كشف القيود
↕️┇تنزيل الكل

◍ تفعيل/تعطيل الايدي بالصوره
◍ تفعيل/تعطيل الايدي
◍ تفعيل/تعطيل الردود العامه
◍ تفعيل/تعطيل اللعبه/الالعاب
◍ تفعيل/تعطيل الردود
◍ تفعيل/تعطيل اطردني
◍ تفعيل/تعطيل الرفع
◍ تفعيل/تعطيل الحظر/الطرد
◍ تفعيل/تعطيل الرابط/جلب الرابط
◍ تفعيل/تعطيل اوامر التحشيش

♨️┇تعين/مسح الايدي

🖇┇رفع الادمنيه
??┇اضف/حذف رد
📋┇الادمنيه
📋┇الردود

◍ مسح + عدد
◍ مسح الادمنيه
◍ مسح الردود
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
◍ لتغير ردود الايدي :- 
تغير رد المطور + النص
تغير رد المنشئ الاساسي + النص
تغير رد المنشئ + النص
تغير رد المدير + النص
تغير رد الادمن + النص
تغير رد المميز + النص
تغير رد العضو + النص
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
◍ CH [@BANDA1M]
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'م4 ◍' and Constructor(msg) then
Text = [[
🏅┇اوامر المنشئين الاساسين 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
↕️┇رفع/تنزيل منشئ
↕️┇المنشئين
◍ مسح المنشئين

🏅┇اوامر المنشئين
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
↕️┇رفع/تنزيل مدير
↕️┇المدراء
◍ مسح المدراء
◍ تعين/مسح الايدي
➕┇اضف/حذف امر
➕┇الاوامر المضافه
➕┇حذف/مسح الاوامر المضافه
➕┇اضف رسائل + العدد بالرد
➕┇اضف نقاط + العدد بالرد
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
◍ CH [@BANDA1M]
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'م5 ◍' and DevBot(msg) then
Text = [[
👁‍🗨┇اوامر المطور الاساسي  
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
↕️┇حظر عام
↕️┇الغاء العام
◍ مسح قائمه العام
🚧┇تغير اسم البوت
◍ اضف /تنزيل مطور 
👁‍🗨┇المطورين
◍ مسح المطورين
📋┇اضف/حذف رد عام 
📋┇مسح الردود العامه
📋┇الردود العامه 
📋┇وضع /حذف كليشه المطور 

◍ تحديث  + تحديث السورس 

◍ تفعيل/تعطيل البوت الخدمي 
◍ تعين عدد الاعضاء + العدد
◍ تفعيل/تعطيل المغادرة
◍ تفعيل/تعطيل الاذاعه 
◍ تفعيل/تعطيل ملف + اسم الملف
◍ الملفات 
◍ مسح جميع الملفات 
📄┇المتجر 
🏅┇اوامر المطور 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
👁‍🗨┇تفعيل /تعطيل

↕️┇رفع/تنزيل منشئ اساسي
↕️┇رفع منشئ 
◍ مسح المنشئين الاساسين
◍ المنشئين الاساسين 
➕┇غادر 
➕┇غادر + الايدي
➕┇اذاعه 
➕┇اذاعه بالتوجيه
➕┇اذاعه خاص 
➕┇اذاعه بالتثبيت 
➕┇الاحصائيات 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
◍ CH [@BANDA1M]
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'م6 ◍' and Addictive(msg) then
Text = [[
◍ اوامر التسليه …
===================
◍ رفع + تنزيل ← الامر
===================
◍ رفع + تنزيل ← متوحد 
◍ تاك للمتوحدين
√ مسح المتوحدين
===================
◍ رفع + تنزيل ← وتكه
◍ تاك للوتكات
√ مسح الوتكات
===================
◍ رفع + تنزيل ← كلب
◍ تاك للكلاب
√ مسح الكلاب
===================
◍ رفع + تنزيل ← قرد 
◍ تاك للقرود
√ مسح القرود
===================
◍ رفع + تنزيل ← بقره
◍ تاك للبقرات
√ مسح البقرات
===================
◍ رفع + تنزيل ← غبي
◍ تاك للاغبياء
√ مسح الاغبياء
===================
◍ رفع + تنزيل ← حمار
◍ تاك للحمير
√ مسح الحمير
===================
◍ رفع + تنزيل ← بقلبي +من قلبي 
◍ تاك للي بقلبي
√ مسح اللي بقلبي
===================
◍ رفع + تنزيل ← زوجتي
◍ تاك للزوجات
π مسح الزوجات
===================
◍ رفع + تنزيل ← مطلقه
◍ تاك للمطلقات
√ مسح المطلقات

彡 .[SOURCE VAMBAIR ◍](t.me/BANDA1M)
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'اوامر القفل' then
if Addictive(msg) then
local Texti = 'اوامر القفل والفتح ◍'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'قفل الاضافه ◍', callback_data=msg.sender_user_id_.."/lockjoine"},{text = 'فتح الاضافه ◍', callback_data=msg.sender_user_id_.."/unlockjoine"},
},
{
{text = 'قفل الدردشه ◍', callback_data=msg.sender_user_id_.."/lockchat"},{text = 'فتح الدردشه ◍', callback_data=msg.sender_user_id_.."/unlockchat"},
},
{
{text = 'قفل الدخول ◍', callback_data=msg.sender_user_id_.."/lock_joine"},{text = 'فتح الدخول ◍', callback_data=msg.sender_user_id_.."/unlock_joine"},
},
{
{text = 'قفل البوتات ◍', callback_data=msg.sender_user_id_.."/lockbots"},{text = 'فتح البوتات ◍', callback_data=msg.sender_user_id_.."/unlockbots"},
},
{
{text = 'قفل الاشعارات ◍', callback_data=msg.sender_user_id_.."/locktags"},{text = 'فتح الاشعارات ◍', callback_data=msg.sender_user_id_.."/unlocktags"},
},
{
{text = 'قفل التعديل ◍', callback_data=msg.sender_user_id_.."/lockedit"},{text = 'فتح التعديل ◍', callback_data=msg.sender_user_id_.."/unlockedit"},
},
{
{text = 'قفل الروابط ◍', callback_data=msg.sender_user_id_.."/locklink"},{text = 'فتح الروابط ◍', callback_data=msg.sender_user_id_.."/unlocklink"},
},
{
{text = 'قفل المعرفات ◍', callback_data=msg.sender_user_id_.."/lockusername"},{text = 'فتح المعرفات ◍', callback_data=msg.sender_user_id_.."/unlockusername"},
},
{
{text = 'قفل التاك ◍', callback_data=msg.sender_user_id_.."/locktag"},{text = 'فتح التاك ◍', callback_data=msg.sender_user_id_.."/unlocktag"},
},
{
{text = 'قفل الملصقات ◍', callback_data=msg.sender_user_id_.."/locksticar"},{text = 'فتح الملصقات ◍', callback_data=msg.sender_user_id_.."/unlocksticar"},
},
{
{text = 'قفل المتحركه ◍', callback_data=msg.sender_user_id_.."/lockgif"},{text = 'فتح المتحركه ◍', callback_data=msg.sender_user_id_.."/unlockgif"},
},
{
{text = 'قفل الفيديو ◍', callback_data=msg.sender_user_id_.."/lockvideo"},{text = 'فتح الفيديو ◍', callback_data=msg.sender_user_id_.."/unlockvideo"},
},
{
{text = 'قفل الصور ◍', callback_data=msg.sender_user_id_.."/lockphoto"},{text = 'فتح الصور ◍', callback_data=msg.sender_user_id_.."/unlockphoto"},
},
{
{text = 'قفل الاغاني ◍', callback_data=msg.sender_user_id_.."/lockvoise"},{text = 'فتح الاغاني ◍', callback_data=msg.sender_user_id_.."/unlockvoise"},
},
{
{text = 'قفل الصوت ◍', callback_data=msg.sender_user_id_.."/lockaudo"},{text = 'فتح الصوت ◍', callback_data=msg.sender_user_id_.."/unlockaudo"},
},
{
{text = 'قفل التوجيه ◍', callback_data=msg.sender_user_id_.."/lockfwd"},{text = 'فتح التوجيه ◍', callback_data=msg.sender_user_id_.."/unlockfwd"},
},
{
{text = 'قفل الملفات ◍', callback_data=msg.sender_user_id_.."/lockfile"},{text = 'فتح الملفات ◍', callback_data=msg.sender_user_id_.."/unlockfile"},
},
{
{text = 'قفل الجهات ◍', callback_data=msg.sender_user_id_.."/lockphone"},{text = 'فتح الجهات ◍', callback_data=msg.sender_user_id_.."/unlockphone"},
},
{
{text = 'قفل الكلايش ◍', callback_data=msg.sender_user_id_.."/lockposts"},{text = 'فتح الكلايش ◍', callback_data=msg.sender_user_id_.."/unlockposts"},
},
{
{text = 'قفل التكرار ◍', callback_data=msg.sender_user_id_.."/lockflood"},{text = 'فتح التكرار ◍', callback_data=msg.sender_user_id_.."/unlockflood"},
},
{
{text = 'قفل الفارسيه ◍', callback_data=msg.sender_user_id_.."/lockfarse"},{text = 'فتح الفارسيه ◍', callback_data=msg.sender_user_id_.."/unlockfarse"},
},
{
{text = 'قفل السب ◍', callback_data=msg.sender_user_id_.."/lockfshar"},{text = 'فتح السب ◍', callback_data=msg.sender_user_id_.."/unlockfshar"},
},
{
{text = 'قفل الانلاين ◍', callback_data=msg.sender_user_id_.."/lockinlene"},{text = 'فتح الانلاين ◍', callback_data=msg.sender_user_id_.."/unlockinlene"},
},

}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Texti).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
else
send(msg.chat_id_, msg.id_,'يجب ان يكون معك رتبه لاستخدام اوامر القفل') 
end 
end 
if text == 'اوامر التعطيل' then
if Addictive(msg) then
local Texti = 'تستطيع تعطيل وتفعيل عبر الازرار'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'تعطيل التنزيل ◍', callback_data=msg.sender_user_id_.."/lockdul"},{text = 'تفعيل التنزيل ◍', callback_data=msg.sender_user_id_.."/unlockdul"},
},
{
{text = 'تعطيل الرابط ◍', callback_data=msg.sender_user_id_.."/lock_links"},{text = 'تفعيل الرابط ◍', callback_data=msg.sender_user_id_.."/unlock_links"},
},
{
{text = 'تعطيل الترحيب ◍', callback_data=msg.sender_user_id_.."/lockwelcome"},{text = 'تفعيل الترحيب ◍', callback_data=msg.sender_user_id_.."/unlockwelcome"},
},
{
{text = 'تعطيل الردود العامه ◍', callback_data=msg.sender_user_id_.."/lockrepall"},{text = 'تفعيل الردود العامه ◍', callback_data=msg.sender_user_id_.."/unlockrepall"},
},
{
{text = 'تعطيل الايدي ◍', callback_data=msg.sender_user_id_.."/lockide"},{text = 'تفعيل الايدي ◍', callback_data=msg.sender_user_id_.."/unlockide"},
},
{
{text = 'تعطيل الايدي بالصوره ◍', callback_data=msg.sender_user_id_.."/lockidephoto"},{text = 'تفعيل الايدي بالصوره ◍', callback_data=msg.sender_user_id_.."/unlockidephoto"},
},
{
{text = 'تعطيل الحظر ◍', callback_data=msg.sender_user_id_.."/lockkiked"},{text = 'تفعيل الحظر ◍', callback_data=msg.sender_user_id_.."/unlockkiked"},
},
{
{text = 'تعطيل الرفع ◍', callback_data=msg.sender_user_id_.."/locksetm"},{text = 'تفعيل الرفع ◍', callback_data=msg.sender_user_id_.."/unlocksetm"},
},
{
{text = 'تعطيل اطردني ◍', callback_data=msg.sender_user_id_.."/lockkikedme"},{text = 'تفعيل اطردني ◍', callback_data=msg.sender_user_id_.."/unlockkikedme"},
},
{
{text = 'تعطيل الالعاب ◍', callback_data=msg.sender_user_id_.."/lockgames"},{text = 'تفعيل الالعاب ◍', callback_data=msg.sender_user_id_.."/unlockgames"},
},
{
{text = 'تعطيل الردود ◍', callback_data=msg.sender_user_id_..msg.sender_user_id_.."/lockrepgr"},{text = 'تفعيل الردود ◍', callback_data=msg.sender_user_id_.."/unlockrepgr"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Texti).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
else
send(msg.chat_id_, msg.id_,'يجب ان يكون معك رتبه للتحكم بالاوامر') 
end 
end
------------
if text == 'order' or text == 'orders' or text == 'hle' then
local Text =[[
◍ There are {5} orders to display.....................
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
◍ 1 ~⪼ To display protection orders
◍ 2 ~⪼ To view additives
◍ 3 ~⪼ To view managers
◍ 4 ~⪼ To view orders of originators
◍ 5 ~⪼ To view developers' orders
◍ m6 ~⪼ To view entertainment orders 
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
◍ CH [@BANDA1M]
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '1 ◍', callback_data=msg.sender_user_id_.."/hle11"},{text = '2 ◍', callback_data=msg.sender_user_id_.."/hle22"},{text = '3 ◍', callback_data=msg.sender_user_id_.."/hle33"},
},
{
{text = '4 ◍', callback_data=msg.sender_user_id_.."/hle44"},{text = '5 ◍', callback_data=msg.sender_user_id_.."/hle55"},
},
{
{text = '6 ◍', callback_data=msg.sender_user_id_.."/hle66"},
},
{
{text = 'Disabled orders ◍', callback_data=msg.sender_user_id_.."/homeaddrem"},{text = 'Lock orders ◍', callback_data=msg.sender_user_id_.."/homelocks"},
},
{
{text = ' Add the bot to your group ◍', url="https://t.me/UUOOO_BOT?startgroup=new"}, 
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end

if text == '1 ◍' and Addictive(msg) then
Text = [[
◍️ ❬ m 1 ❭ Orders Protect Group ⇊
════════ Me ════════
◍ ╖ Lock «Open + it
◍ ╜ Lock «» Open ❬ All ❭
════════ Me ════════
◍╖ Chat
◍╢ Knows
◍╢ Pictures
◍╢ videos
◍╢ Sticker
◍╢ files
Mobile moving
◍╢ Lift
◍╢ Audio
◍╢ Optiments
◍╢ Welcome
◍╢ The decorative
◍╢ Translate
◍╢ Responses
◍╢ Guidance
◍╢ Notifications
◍╢ Crown
◍╢ Delete link
◍╢ expulsion
◍╢ Games
◍╢ Novels
◍╢ towers
◍╢ Meanings of names
◍╜ Welcome
════════ Me ════════
════════ Me ════════
◍╖ Links
◍╢ Guidance
◍╢ popcorn
◍╢ Bots
◍╜ Prohibited
════════ Me ════════
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == '2 ◍' and Addictive(msg) then
Text = [[
◍╖ ❬ m 2 ❭ 2 ◍ entertainment orders ⇊
◍╜ Lifting «» Download + it
════════ Me ════════
◍╖ and Take
◍╢ Crown for Soutat
◍╜ Wipe Wattat
• • · · · · · · · · · · · · · · · · • • • • • • •
◍╖
◍╢ Crown for drapes
◍╜ Clear Docks
• • · · · · · · · · · · · · · · · · • • • • • • •
◍╖ Jeep
◍╢ Crown for bodies
◍╜ Scanning
• • · · · · · · · · · · · · · · · · • • • • • • •
◍╖ animal
◍╢ Crown for animals
◍╜ Animals
• • · · · · · · · · · · · · · · · · • • • • • • •
◍╖ failed
◍╢ Crown for failure
◍╜ Scan of failure
• • · · · · · · · · · · · · · · · · • • • • • • •
◍╖ Dermatology
◍╢ Crown for perforation
◍╜ Scanning
• • · · · · · · · · · · · · · · · · • • • • • • •
◍╖ Catte
◍╢ Crown for cats
◍╜ Cats survey
• • · · · · · · · · · · · · · · · · • • • • • • •
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == '3 ◍' and Owner(msg) then
Text = [[
◍╖ ❬ m 3 ❭ 3 ◍ Tall orders ⇊
◍╜ Lifting «» Download + it
════════ Me ════════

◍╖ my son
◍╢ Crown for children
◍╜ Survey sons
• • · · · · · · · · · · · · · · · · • • • • • • •

◍╢ Crown for girls
◍╜ Clear the girls
• • · · · · · · · · · · · · · · · · • • • • • • •

◍╜ Habayeb survey
• • · · · · · · · · · · · · · · · · • • • • • • •
◍╖ my husband
◍╢ Crown for couples
◍╜ Survey of couples
• • · · · · · · · · · · · · · · · · • • • • • • •
◍╖ My wife
◍╢ Crown for the wives
◍╜ Wipe waves
• • · · · · · · · · · · · · · · · · • • • • • • •
◍╖ Khayen
◍╢ Crown for him
◍╜ Clear the moon
• • · · · · · · · · · · · · · · · · • • • • • • •

◍╢ Crown for the two
◍╜ Khiennine survey
• • · · · · · · · · · · · · · · · · • • • • • • •
◍╖ Abit
◍╢ Crown for the mixture
◍╜ Survey
• • · · · · · · · · · · · · · · · · • • • • • • •

◍╢ Crown for Paradise
◍╜ Storage survey
• • · · · · · · · · · · · · · · · · • • • • • • •
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == '4 ◍' and Constructor(msg) then
Text = [[
◍ ❬ m 4 ❭ Orders of members ⇊
════════ Me ════════
🎤╖ غنيلي «» Age account
◍╢ Picture «»
◍╢ Quran
◍️╢ Settings
◍╢ Qatari
◍╢ Delete «» Sell ❬ Qatari
◍╢ My messages «» Delete ❬ My messages ❭
◍╢ Decorating «» Songs
◍╢ Movies «» Cartoon
◍╢ Translate + novels
◍╢ YouTube »» Games
◍╢ Weather + area
◍╢ Dark «link
◍╢ My name is «»
◍╢ My Juices «» Delete my juices
◍╢ Powers «» Ping
◍╢ Say + word
◍╢ Prohibited Words
◍╢ I am Maine
◍╢ Say + word
◍╢ Qatah «» dog
◍╢ Source «Developer
◍╢ link «hands
◍╢ Rank «» Revealed
◍╢ Reply you, Bot
◍╢ Any your opinion Yapot
◍╢ Hino «» Hinha
◍╢ Boso «» her pussy
◍╢ Mido «» »
◍╜ Delete link
════════ Me ════════
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == '5 ◍' and DevBot(msg) then
Text = [[
◍╖ ❬ m 5 ❭ Orders of developers ⇊
◍╜ Developer »⇊
════════ Me ════════
◍╖ Lifting «download ❬ owner ❭
◍╢ Change the group link
◍╢ Destination of groups
◍╢ Destination by guidance for groups
◍╢ A radio face
◍╢ Special radio
◍╢ A special guidance
◍️╢ Fix the installation
◍╢ bring back copy
◍╢ raise its backup copy
◍╢ Statistics
◍╢ Delete owners
◍╜ ❬ + ❭ All matters
════════ Me ════════
◍ «Basic Developer» ⇊
════════ Me ════════
◍╖ Add "» Delete a general response
◍╢ Lifting «download ❬ special year ❭
◍╢ Featured Survey
◍╢ General responses
◍╢ Delete public responses
◍╢ A special guidance
◍╢ Destination by guidance for groups
◍╢ Fix the installation
◍╢ A radio face
◍╢ bring «» raising ❬ ❬ ❬ ❬ ❬ ❬ ❬ ◍╢ ◍╢ ◍╢ ◍╢ ◍╢ ◍╢
◍╢ Statistics
◍╢ Lifting «download ❬ Developer ❭
◍╢ Developers «» Delete developers
◍╢ Put the name of the bot
◍╢ Change the departing message
◍╢ Prohibition «» Mute ❬ General ❭
◍╢ General makers
◍╢ Preventors General
◍╢ Canceling the general
◍╜ ❬ + ❭ All matters
════════ Me ════════
]]
send(msg.chat_id_, msg.id_,Text)
return false
end


end ---- Chat_Type = 'GroupBot' 
end ---- Chat_Type = 'GroupBot' 
if text == 'تفعيل' and DevBot(msg) then 
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,'◍ البوت ليس ادمن يرجى ترقيتي !') 
return false  
end
tdcli_function ({ ID = "GetChannelFull", channel_id_ = msg.chat_id_:gsub("-100","")}, function(arg,data)  
if tonumber(data.member_count_) < tonumber(database:get(bot_id..'VAMBAIR:Num:Add:Bot') or 0) and not DevVAMBAIR(msg) then
send(msg.chat_id_, msg.id_,'◍ عدد اعضاء المجموعه اقل من *~ {'..(database:get(bot_id..'VAMBAIR:Num:Add:Bot') or 0)..'* عضو')
return false
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
if database:sismember(bot_id..'VAMBAIR:Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,'◍ المجموعه مفعله سابقا ')
else
Reply_Status(msg,result.id_,'reply_Add','◍ تم تفعيل المجموعه ~ '..chat.title_..'')
database:sadd(bot_id..'VAMBAIR:Chek:Groups',msg.chat_id_)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NameChat = chat.title_
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub("`","") 
NameChat = NameChat:gsub("*","") 
NameChat = NameChat:gsub("{","") 
NameChat = NameChat:gsub("}","") 
local IdChat = msg.chat_id_
local NumMember = data.member_count_
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'لا يوجد'
end
Text = '◍ تم تفعيل مجموعه جديده\n'..
'\n◍ بواسطة ~ '..Name..''..
'\n◍ ايدي المجموعه ~ `'..IdChat..'`'..
'\n◍ عدد اعضاء المجموعه *~ '..NumMember..'*'..
'\n◍ اسم المجموعه ~ ['..NameChat..']'..
'\n◍ الرابط ~ ['..LinkGp..']'
if not DevVAMBAIR(msg) then
sendText(Id_Sudo,Text,0,'md')
end
end
end,nil) 
end,nil) 
end,nil)
end
if text == 'تعطيل' and DevBot(msg) then 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
if not database:sismember(bot_id..'VAMBAIR:Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,'◍ المجموعه معطله سابقا ')
else
Reply_Status(msg,result.id_,'reply_Add','◍ تم تعطيل المجموعه ~ '..chat.title_..'')
database:srem(bot_id..'VAMBAIR:Chek:Groups',msg.chat_id_)  
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NameChat = chat.title_
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub("`","") 
NameChat = NameChat:gsub("*","") 
NameChat = NameChat:gsub("{","") 
NameChat = NameChat:gsub("}","") 
local IdChat = msg.chat_id_
local AddPy = var
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'لا يوجد'
end
database:set(bot_id.."VAMBAIR:Private:Group:Link"..msg.chat_id_,LinkGp) 

Text = '◍ تم تعطيل مجموعه جديده\n'..
'\n◍ بواسطة ~ '..Name..''..
'\n◍ ايدي المجموعه ~ `'..IdChat..'`'..
'\n◍ اسم المجموعه ~ ['..NameChat..']'..
'\n◍ الرابط ~ ['..LinkGp..']'
if not DevVAMBAIR(msg) then
sendText(Id_Sudo,Text,0,'md')
end
end
end,nil) 
end,nil) 
end
if text == 'تفعيل' and not DevBot(msg) and not database:get(bot_id..'VAMBAIR:Free:Add:Bots') then 
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,'◍ البوت ليس ادمن يرجى ترقيتي !') 
return false  
end
tdcli_function ({ ID = "GetChannelFull", channel_id_ = msg.chat_id_:gsub("-100","")}, function(arg,data)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da and da.status_.ID == "ChatMemberStatusEditor" or da and da.status_.ID == "ChatMemberStatusCreator" then
if da and da.user_id_ == msg.sender_user_id_ then
if da.status_.ID == "ChatMemberStatusCreator" then
var = 'المنشئ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
var = 'الادمن'
else 
var= 'عضو'
end
if database:sismember(bot_id..'VAMBAIR:Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,'◍ المجموعه مفعله سابقا ')
else
if tonumber(data.member_count_) < tonumber(database:get(bot_id..'VAMBAIR:Num:Add:Bot') or 0) and not DevVAMBAIR(msg) then
send(msg.chat_id_, msg.id_,'◍ عدد اعضاء المجموعه اقل من *~ {'..(database:get(bot_id..'VAMBAIR:Num:Add:Bot') or 0)..'* عضو')
return false
end
Reply_Status(msg,result.id_,'reply_Add','◍ تم تفعيل المجموعه ~ '..chat.title_..'')
database:sadd(bot_id..'VAMBAIR:Chek:Groups',msg.chat_id_)  
database:sadd(bot_id..'VAMBAIR:Basic:Constructor'..msg.chat_id_, msg.sender_user_id_)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NumMember = data.member_count_
local NameChat = chat.title_
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub('"',"") 
NameChat = NameChat:gsub("`","") 
NameChat = NameChat:gsub("*","") 
NameChat = NameChat:gsub("{","") 
NameChat = NameChat:gsub("}","") 
local IdChat = msg.chat_id_
local AddPy = var
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'لا يوجد'
end
Text = '◍ تم تفعيل مجموعه جديده\n'..
'\n◍ بواسطة ~ '..Name..''..
'\n◍ موقعه في المجموعه ~ '..AddPy..'' ..
'\n◍ ايدي المجموعه ~ `'..IdChat..'`'..
'\n◍ عدد اعضاء المجموعه *~ '..NumMember..'*'..
'\n◍ اسم المجموعه ~ ['..NameChat..']'..
'\n◍ الرابط ~ ['..LinkGp..']'
if not DevVAMBAIR(msg) then
sendText(Id_Sudo,Text,0,'md')
end
end
end
end
end,nil)   
end,nil) 
end,nil) 
end,nil)
end

if Chat_Type == 'UserBot' then
if text == '/start' then  
if DevBOYKAW(msg) then
local Text = '◍ مرحبا بك في اوامر المطور الجاهزه'
local keyboard = {
{"تغير اسم البوت ◍"},
{'تفعيل التواصل ◍','تعطيل التواصل ◍'},
{'تفعيل البوت الخدمي ◍','تعطيل البوت الخدمي ◍'},
{'اذاعه بالتوجيه ◍','اذاعه بالتوجيه خاص ◍'},
{'اذاعه خاص ◍','المطورين ◍','اذاعه ◍'},
{'الاحصائيات ◍'},
{'مسح الجروبات ◍','مسح المشتركين ◍'},
{'مسح قائمه العام ◍','مسح المطورين ◍'},
{'تحديث السورس ◍','تحديث ◍'},
{'قائمه العام ◍'},
{'جلب نسخه احتياطيه ◍'},
{'الغاء ◍'}
}
send_inline_key(msg.chat_id_,Text,keyboard)
else
if not database:get(bot_id..'VAMBAIR:Start:Time'..msg.sender_user_id_) then
local start = database:get(bot_id.."Start:Bot")  
if start then 
Test = start
else
Test = '◍ مرحبا انا بوت حماية كروبات\n◍ وضيفتي حماية المجموعات من السبام والتفليش والخ...\n◍ لتفعيل البوت اضفني الى مجموعاتك قم برفعي مشرف ثم ارسل تفعيل \n◍ معرف المطور ['..UserName..']'
end 
send(msg.chat_id_, msg.id_, Test) 
end
end
database:setex(bot_id..'VAMBAIR:Start:Time'..msg.sender_user_id_,60,true)
return false
end
if not DevBOYKAW(msg) and not database:sismember(bot_id..'BaN:In:User',msg.sender_user_id_) and not database:get(bot_id..'Texting:In:Bv') then
send(msg.sender_user_id_,msg.id_,'◍ تمت ارسال رسالتك الى المطور ~ ['..UserName..']')    
tdcli_function({ID ="GetChat",chat_id_=Id_Sudo},function(arg,chat)  
tdcli_function({ID ="GetChat",chat_id_=msg.sender_user_id_},function(arg,chat)  
tdcli_function({ID="ForwardMessages",chat_id_=Id_Sudo,from_chat_id_= msg.sender_user_id_,message_ids_={[0]=msg.id_},disable_notification_=1,from_background_=1},function(arg,data) 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,ta) 
if data and data.messages_ and data.messages_[0] ~= false and data.ID ~= "Error" then
if data and data.messages_ and data.messages_[0].content_.sticker_ then
sendText(Id_Sudo,'◍ تم ارسال الملصق من ~ ['..string.sub(ta.first_name_,0, 40)..'](tg://user?id='..ta.id_..')',0,'md') 
return false
end;end;end,nil);end,nil);end,nil);end,nil);end
if DevBOYKAW(msg) and msg.reply_to_message_id_ ~= 0  then    
tdcli_function({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)},function(extra, result, success) 
if result.forward_info_.sender_user_id_ then     
id_user = result.forward_info_.sender_user_id_    
end     
tdcli_function ({ID = "GetUser",user_id_ = id_user},function(arg,data) 
if text == 'حظر' then
sendText(Id_Sudo,'◍ لشخص » ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')'..'\n◍ تم حظره من التواصل ',msg.id_/2097152/0.5,'md')
database:sadd(bot_id..'BaN:In:User',data.id_)  
return false  
end 
if text =='الغاء الحظر' then
sendText(Id_Sudo,'◍ الشخص » ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')'..'\n◍ تم الغاء حظره من التواصل ',msg.id_/2097152/0.5,'md')
database:srem(bot_id..'BaN:In:User',data.id_)  
return false  
end 
tdcli_function({ID='GetChat',chat_id_ = id_user},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = id_user, action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,ta) 
if ta.code_ == 400 or ta.code_ == 5 then
send(msg.chat_id_, msg.id_,'\n◍ فشل ارسال رسالتك لان العضو قام بحظر البوت') 
return false  
end 
if text then    
send(id_user,msg.id_,text)    
Text = '◍ تمت ارسال الرساله اليه .. '
elseif msg.content_.ID == 'MessageSticker' then    
sendSticker(id_user, msg.id_, msg.content_.sticker_.sticker_.persistent_id_)   
Text = '◍ تمت ارسال الملصق اليه .. '
elseif msg.content_.ID == 'MessagePhoto' then    
sendPhoto(id_user, msg.id_,msg.content_.photo_.sizes_[0].photo_.persistent_id_,(msg.content_.caption_ or ''))    
Text = '◍ تمت ارسال الصوره اليه .. '
elseif msg.content_.ID == 'MessageAnimation' then    
sendDocument(id_user, msg.id_, msg.content_.animation_.animation_.persistent_id_)    
Text = '◍ تمت ارسال المتحركه اليه .. '
elseif msg.content_.ID == 'MessageVoice' then    
sendVoice(id_user, msg.id_, msg.content_.voice_.voice_.persistent_id_)    
Text = '◍ تمت ارسال البصمه اليه .. '
end     
sendText(Id_Sudo,Text..'\n'..'◍ ~ ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')',0,'md') 
end,nil);end,nil);end,nil);end,nil);end 
if DevBOYKAW(msg) then
if text == 'تفعيل التواصل ◍' then  
database:del(bot_id..'Texting:In:Bv') 
send(msg.chat_id_, msg.id_,'◍ تم تفعيل التواصل ') 
end
if text == 'تعطيل التواصل ◍' then  
database:set(bot_id..'Texting:In:Bv',true) 
send(msg.chat_id_, msg.id_,'◍ تم تعطيل التواصل ') 
end
if text =='الاحصائيات ◍' then
local Groups = database:scard(bot_id..'VAMBAIR:Chek:Groups')  
local Users = database:scard(bot_id..'VAMBAIR:UsersBot')  
send(msg.chat_id_, msg.id_,'◍ احصائيات البوت \n\n◍ عدد المجموعات *~ '..Groups..'\n◍ عدد المشتركين ~ '..Users..'*')
end
if text == "مسح المشتركين ◍" then
local pv = database:smembers(bot_id..'VAMBAIR:UsersBot')  
local sendok = 0
for i = 1, #pv do
tdcli_function({ID='GetChat',chat_id_ = pv[i]},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = pv[i], action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,data) 
if data.ID and data.ID == "Ok"  then
print('\27[30;33m»» THE USER IS SAVE ME ↓\n»» '..pv[i]..'\n\27[1;37m')
else
print('\27[30;31m»» THE USER IS BLOCK ME ↓\n»» '..pv[i]..'\n\27[1;37m')
database:srem(bot_id..'VAMBAIR:UsersBot',pv[i])  
sendok = sendok + 1
end
if #pv == i then 
if sendok == 0 then
send(msg.chat_id_, msg.id_,'◍ لا يوجد مشتركين وهميين')   
else
local ok = #pv - sendok
send(msg.chat_id_, msg.id_,'*◍ عدد المشتركين الان ~ '..#pv..'\n◍ تم العثور على ~ '..sendok..' مشترك قام بحظر البوت\n◍ اصبح عدد المشتركين الان ~ '..ok..' مشترك *')   
end
end
end,nil)
end,nil)
end
return false
end
if text == "مسح الجروبات ◍" then
local group = database:smembers(bot_id..'VAMBAIR:Chek:Groups')  
local w = 0
local q = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
print('\27[30;34m»» THE BOT IS NOT ADMIN ↓\n»» '..group[i]..'\n\27[1;37m')
database:srem(bot_id..'VAMBAIR:Chek:Groups',group[i])  
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'VAMBAIR:Chek:Groups',group[i])  
q = q + 1
print('\27[30;35m»» THE BOT IS LEFT GROUP ↓\n»» '..group[i]..'\n\27[1;37m')
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'VAMBAIR:Chek:Groups',group[i])  
q = q + 1
print('\27[30;36m»» THE BOT IS KICKED GROUP ↓\n»» '..group[i]..'\n\27[1;37m')
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'VAMBAIR:Chek:Groups',group[i])  
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
send(msg.chat_id_, msg.id_,'◍ لا توجد مجموعات وهميه ')   
else
local taha = (w + q)
local sendok = #group - taha
if q == 0 then
taha = ''
else
taha = '\n◍ تم ازالة ~ '..q..' مجموعات من البوت'
end
if w == 0 then
storm = ''
else
storm = '\n◍ تم ازالة ~'..w..' مجموعه لان البوت عضو'
end
send(msg.chat_id_, msg.id_,'*◍ عدد المجموعات الان ~ '..#group..' مجموعه '..storm..''..taha..'\n◍ اصبح عدد المجموعات الان ~ '..sendok..' مجموعات*\n')   
end
end
end,nil)
end
return false
end
if text == 'تفعيل البوت الخدمي ◍' then
database:del(bot_id..'VAMBAIR:Free:Add:Bots') 
send(msg.chat_id_, msg.id_,'\n◍ تم تفعيل البوت الخدمي ') 
end
if text == 'تعطيل البوت الخدمي ◍' then
database:set(bot_id..'VAMBAIR:Free:Add:Bots',true) 
send(msg.chat_id_, msg.id_,'\n◍ تم تعطيل البوت الخدمي') 
end
if text=="اذاعه خاص ◍" and msg.reply_to_message_id_ == 0 then
if database:get(bot_id.."VAMBAIR:Status:Bc") and not DevBOYKAW(msg) then 
send(msg.chat_id_, msg.id_,"◍ الاذاعه معطله من قبل المطور الاساسي")
return false
end
database:setex(bot_id.."VAMBAIR:VAMBAIR:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"◍ ارسل لي سواء ~ { ملصق, متحركه, صوره, رساله }\n◍ للخروج ارسل الغاء ") 
return false
end 
if text=="اذاعه ◍" and msg.reply_to_message_id_ == 0 then
if database:get(bot_id.."VAMBAIR:Status:Bc") and not DevBOYKAW(msg) then 
send(msg.chat_id_, msg.id_,"◍ الاذاعه معطله من قبل المطور الاساسي")
return false
end
database:setex(bot_id.."VAMBAIR:VAMBAIR:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"◍ ارسل لي سواء ~ { ملصق, متحركه, صوره, رساله }\n◍ للخروج ارسل الغاء ") 
return false
end  
if text=="اذاعه بالتوجيه ◍" and msg.reply_to_message_id_ == 0  then
if database:get(bot_id.."VAMBAIR:Status:Bc") and not DevBOYKAW(msg) then 
send(msg.chat_id_, msg.id_,"◍ الاذاعه معطله من قبل المطور الاساسي")
return false
end
database:setex(bot_id.."VAMBAIR:VAMBAIR:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"◍ ارسل لي التوجيه الان") 
return false
end 
if text=="اذاعه بالتوجيه خاص ◍" and msg.reply_to_message_id_ == 0  then
if database:get(bot_id.."VAMBAIR:Status:Bc") and not DevBOYKAW(msg) then 
send(msg.chat_id_, msg.id_,"◍ الاذاعه معطله من قبل المطور الاساسي")
return false
end
database:setex(bot_id.."VAMBAIR:VAMBAIR:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_,"◍ ارسل لي التوجيه الان") 
return false
end 
if text == "تفعيل الاذاعه ◍" then
database:del(bot_id.."VAMBAIR:Status:Bc") 
send(msg.chat_id_, msg.id_,"\n◍ تم تفعيل الاذاعه " ) 
return false
end 
if text == "تعطيل الاذاعه ◍" then
database:set(bot_id.."VAMBAIR:Status:Bc",true) 
send(msg.chat_id_, msg.id_,"\n◍ تم تعطيل الاذاعه") 
return false
end 
if text == "تفعيل المغادره ◍" then
database:del(bot_id.."VAMBAIR:Left:Bot"..msg.chat_id_)  
send(msg.chat_id_, msg.id_,"◍ تم تفعيل مغادرة البوت") 
return false 
end
if text == "تغير اسم البوت ◍"  then 
if DevBOYKAW(msg) then
database:setex(bot_id.."VAMBAIR:Set:Name:Bot"..msg.sender_user_id_,300,true) 
send(msg.chat_id_, msg.id_,"◍ ارسل لي الاسم الان ")  
end
return false
end
if text == "تعطيل المغادره ◍" then
database:set(bot_id.."VAMBAIR:Left:Bot"..msg.chat_id_,true)   
send(msg.chat_id_, msg.id_, "◍ تم تعطيل مغادرة البوت") 
return false 
end
if text and database:get(bot_id..'Start:Bots') then
if text == 'الغاء ◍' then   
send(msg.chat_id_, msg.id_,"◍ تم الغاء حفظ كليشه ستارت") 
database:del(bot_id..'Start:Bots') 
return false
end
database:set(bot_id.."Start:Bot",text)  
send(msg.chat_id_, msg.id_,'◍ تم حفظ كليشه ستارت') 
database:del(bot_id..'Start:Bots') 
return false
end
if text == 'ضع كليشه ستارت ◍' then
database:set(bot_id..'Start:Bots',true) 
send(msg.chat_id_, msg.id_,'◍ ارسل لي الكليشه الان') 
return false
end
if text == 'حذف كليشه ستارت ◍' then
database:del(bot_id..'Start:Bot') 
send(msg.chat_id_, msg.id_,'◍ تم حذف كليشه ستارت') 
end
if text == ("مسح قائمه العام ◍") and DevBOYKAW(msg) then
database:del(bot_id.."VAMBAIR:GBan:User")
send(msg.chat_id_, msg.id_, "\n◍ تم مسح قائمه العام")
return false
end
if text == ("مسح المطورين ◍") and DevBOYKAW(msg) then
database:del(bot_id.."VAMBAIR:Sudo:User")
send(msg.chat_id_, msg.id_, "\n◍ تم مسح قائمة المطورين  ")
end
if text == ("قائمه العام ◍") and DevBOYKAW(msg) then
local list = database:smembers(bot_id.."VAMBAIR:GBan:User")
t = "\n◍ قائمة المحظورين عام \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "◍ لا يوجد محظورين عام"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("المطورين ◍") and DevBOYKAW(msg) then
local list = database:smembers(bot_id.."VAMBAIR:Sudo:User")
t = "\n◍ قائمة مطورين البوت \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."VAMBAIR:User:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "◍ لا يوجد مطورين"
end
send(msg.chat_id_, msg.id_, t)
end
if text == 'جلب نسخه احتياطيه ◍' then
local list = database:smembers(bot_id..'VAMBAIR:Chek:Groups')  
local t = '{"BOT_ID": '..bot_id..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = 'VAMBAIR Chat'
ASAS = database:smembers(bot_id.."VAMBAIR:Basic:Constructor"..v)
MNSH = database:smembers(bot_id.."VAMBAIR:Constructor"..v)
MDER = database:smembers(bot_id.."VAMBAIR:Manager"..v)
MOD = database:smembers(bot_id.."VAMBAIR:Mod:User"..v)
link = database:get(bot_id.."VAMBAIR:Link_Group"..v) or ''
if k == 1 then
t = t..'"'..v..'":{"VAMBAIR":"'..NAME..'",'
else
t = t..',"'..v..'":{"VAMBAIR":"'..NAME..'",'
end
if #ASAS ~= 0 then 
t = t..'"ASAS":['
for k,v in pairs(ASAS) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}' or ''
end
t = t..'}}'
local File = io.open('./VAM/'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(msg.chat_id_, msg.id_,'./VAM/'..bot_id..'.json', '◍ عدد مجموعات التي في البوت { '..#list..'}')
end
if text == "تحديث السورس ◍" then
send(msg.chat_id_,msg.id_,'◍ تم التحديث')
os.execute('rm -rf VAMBAIR.lua')
os.execute('rm -rf start.lua')
download_to_file('https://raw.githubusercontent.com/MahmoudM5/VAMBAIR/master/VAMBAIR.lua', 'VAMBAIR.lua') 
download_to_file('https://raw.githubusercontent.com/MahmoudM5/VAMBAIR/master/start.lua', 'start.lua') 
dofile('VAMBAIR.lua')  
return false
end
if text == "تحديث ◍" then
dofile("VAMBAIR.lua")  
send(msg.chat_id_, msg.id_, "◍ تم التحديث")
end
end
end-- Chat_Type = 'UserBot' 
end
end
function tdcli_update_callback(data)
if data.ID == "UpdateNewCallbackQuery" then
tahaj = data
local Chat_id = data.chat_id_
local Msg_id = data.message_id_
local msg_idd = Msg_id/2097152/0.5
local Text = data.payload_.data_
if Text and Text:match('(.*)/help1') then
if tonumber(Text:match('(.*)/help1')) == tonumber(data.sender_user_id_) then
local Teext =[[
◍ قائمة اوامر الحماية..↑↓
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ قـفـل او فـتـح + الامــر.
◍ قفل او فتح الامر بالتقييد.
◍ قفل او فتح الامر بالـطرد.
◍ قـفل او فتح الامر بالكتم.
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ الـروابـط. 
◍ المعرفات.
◍ الشاررحه.
◍ التـعديل.
◍ التـثبيت.
◍ المتحركه.
◍ المـلفات.
◍ الـصـور.
◍ الـتـاك.
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ المـلصقات.
◍ الاشعارات.
◍ الـدردشه.
◍ الفـيديو.
◍ لاننلاين.
◍ التوجيه.
◍ الاغاني.
◍ الصوت.
◍ الجهات.
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ المـاركداون.
◍ الكـلايش.
◍ الممنوعه.
◍ السيلفي.
◍ البوتات.
◍ التكرار.
◍ السب.
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ 𝘾𝙃 - [𝙎𝙊𝙐𝙍𝘾𝙀 𝘼𝙇𝘼𝙕𝙄𝙕𝙔](t.me/BANDA1M) 
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '☊.رجوع.☊', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/help2') then
if tonumber(Text:match('(.*)/help2')) == tonumber(data.sender_user_id_) then
local Teext =[[
◍ قائمة اوامر الادمنية..↑↓
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع او تنزيل مميز.
◍ عدد الجروب.
◍ الغاء تقـييد.
◍ المحظورين.
◍ المـكتومين.
◍ الصتلاحيات.
◍ قائمه الـمنع.
◍ الغاء حظر.
◍ تاك للكل.
◍ الغاء كتم.
◍ الغاء منع.
◍ المميزين.
◍ تقييد.
◍ كـتـم.
◍ حـظر.
◍ طـرد.
◍ مـنع.
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ الغاء تثـبيت.
◍ تـثـبـيـت.
◍ الاعدادات.
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ الرابط.
◍ القوانين.
◍ الترحيب.
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ تفعيل او تعطيل الترحيب.↑↓
◍ اضف او مسح صلاحيه.↑↓
◍ وضع تكرار + العدد.↑↓
◍ كشف البوتات.↑↓
◍ ايـدي.
◍ جهـاتي.
◍ رسائـلي.
◍ سحكاتي.
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
        ╔═══════════════╗        
             ◍ وضع + الاوامر الادناه..↑↓
        ╚═══════════════╝        
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ اسـم.
◍ رابـط.
◍ صـوره.
◍ وصـف.
◍ قـوانين.
◍ ترحـيب.
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
        ╔═══════════════╗        
             ◍ مسح + الاوامر الادناه..↑↓
        ╚═══════════════╝        
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ قائمه المـنع.
◍ الصـلاحيات.
◍ المـحظورين.
◍ المـكتومين.
◍ المطرودين.
◍ الممـيزين.
◍ القـوانين.
◍ البـوتات.
◍ الصـوره.
◍ الرابـط.
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ 𝘾𝙃 - [𝙎𝙊𝙐𝙍𝘾𝙀 𝘼𝙇𝘼𝙕𝙄𝙕𝙔](t.me/BANDA1M) 
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '☊.رجوع.☊', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/help3') then
if tonumber(Text:match('(.*)/help3')) == tonumber(data.sender_user_id_) then
local Teext =[[
◍ ❬ م3 ❭ اوامر الاعضاء ⇊
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ ← حساب العمر
◍ قرءان
◍ الاعدادات
◍ نقاطي
◍ حذف «← بيع ❬ نقاطي ❭
◍ رسائلي «← حذف ❬ رسائلي ❭
◍ «← الالعاب
◍ العزايزي «← الرابط
◍ اسمي «← الرتبه
◍ جهاتي «← حذف جهاتي
◍ قول + الكلمه
◍ انا مين «← انا فين
◍ قول + الكلمه
◍ قطه «← كلب 
◍ اطردني «← اكتمني
◍ سورس «← المطور
◍ الرابط «← ايدي
◍ رتبتي «← كشف
◍ [اسم البوت] بتحب دا
◍ هينو «← هينها
◍ بوسو «← بوسها
◍ بتحب دي «← بتحب ده
◍ فيمبر «←  
◍ رابط الحذف
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'الاوامر الرئيسيه ◍', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/help4') then
if tonumber(Text:match('(.*)/help4')) == tonumber(data.sender_user_id_) then
local Teext =[[
◍ قائمة اوامر المدراء والمنشئ..↑↓
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع او تنزيل ادمن
◍ رفع او كشف القيود
◍ تنزيل الكل
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ تفعيل او تعطيل الايدي بالصوره
◍ تفعيل او تعطيل الايدي
◍ تفعيل او تعطيل الردود العامه
◍ تفعيل او تعطيل الالعاب
◍ تفعيل او تعطيل الردود
◍ تفعيل او تعطيل اطردني
◍ تفعيل او تعطيل الرفع
◍ تفعيل او تعطيل الحظر
◍ تفعيل او تعطيل الرابط
◍ تفعيل او تعطيل اوامر التسليه
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
        ╔═══════════════╗        
             ◍ تعين او مسح الايدي..↑↓
        ╚═══════════════╝        
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع الادمنيه
◍ اضف او حذف رد
◍ الادمنيه
◍ الردود
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ مسح + عدد
◍ مسح الادمنيه
◍ مسح الردود
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
        ╔═══════════════╗        
             ◍ اوامر المنشئين الاساسين..↑↓
        ╚═══════════════╝        
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع او تنزيل منشئ
◍ مسح المنشئين
◍ المنشئين
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
        ╔═══════════════╗        
             ◍ اوامر المنشئين..↑↓
        ╚═══════════════╝        
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ حذف او مسح الاوامر المضافه
◍ اضف مجوهرات + العدد بالرد
◍ اضف رسائل + العدد بالرد
◍ تعين او مسح الايدي
◍ اضف او حذف امر
◍ رفع/تنزيل مدير
◍ الاوامر المضافه
◍ مسح المدراء
◍ الـمـدراء
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ 𝘾𝙃 - [𝙎𝙊𝙐𝙍𝘾𝙀 𝘼𝙇𝘼𝙕𝙄𝙕𝙔](t.me/BANDA1M) 
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '☊.رجوع.☊', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/help5') then
if tonumber(Text:match('(.*)/help5')) == tonumber(data.sender_user_id_) then
local Teext =[[
◍ قائمة اوامر المطورين..↑↓
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
        ╔═══════════════╗        
             ◍ المـطور الـعـادي..↑↓
        ╚═══════════════╝        
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ اذاعه بالتوجيه للمجموعات
◍ اذاعه موجهه بالتـثبيت
◍ جلب نسخه احتياطيه
◍ اذاعه بالتوجيه خاص
◍ رفع نسخه احتياطيه
◍ تغيير رابط الجروب
◍ رفع او تنزيل مالك
◍ اذاعه بالمجموعات
◍ اذاعه بالتـثبيت
◍ حذف المالكين
◍ اذاعه خـاص
◍ الاحصائيات
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
        ╔═══════════════╗        
             ◍ المطور الاساسي..↑↓
        ╚═══════════════╝        
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ جلب او رفع نسخه احتياطيه
◍ اذاعه بالتوجيه للمجموعات
◍ رفع او تنزيل  مميز عام 
◍ اذاعه موجهه بالتثبيت
◍ اضف او حذف رد عام
◍ اذاعه بالتوجيه خاص
◍ تغيير رساله المغادره
◍ مسح المميزين عام
◍ حذف الردود العامه
◍ رفع او تنزيل مطور 
◍ حذف المطورين
◍ حظر او كتم عام 
◍ المكتومين  عام 
◍ المحظورين عام
◍ ضع اسم للبوت
◍ اذاعه بالتثبيت
◍ الاحصائيات
◍ المطورين 
◍ الغاء العام
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ 𝘾𝙃 - [𝙎𝙊𝙐𝙍𝘾𝙀 𝘼𝙇𝘼𝙕𝙄𝙕𝙔](t.me/BANDA1M) 
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '☊.رجوع.☊', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/help6') then
if tonumber(Text:match('(.*)/help6')) == tonumber(data.sender_user_id_) then
local Teext =[[
◍ قائمة اوامر التسليه..↑↓
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل ← الامر
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل ← متوحد 
◍ تاك للمتوحدين
◍ مسح المتوحدين
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل ← رقاصه
◍ تاك للرقصات
◍ مسح الرقصات
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل ← ابني
◍ تاك لولادي
◍ مسح ولادي
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل ← بنتي
◍ تاك لبناتي
◍ مسح بناتي
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل ← قطتي
◍ تاك للقطط
◍ مسح القطط
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل ← دكري
◍ تاك للدكراتي
◍ مسح دكراتي
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل ← فاشل
◍ تاك للفشله
◍ مسح الفشله
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل ← حيوان
◍ تاك للحيونات
◍ مسح الحيوانات
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل ← خاينه
◍ تاك للخينات
◍ مسح الخينات
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل ← عبيط
◍ تاك للعبايط
◍ مسح العبايط
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل ← خاين
◍ تاك للخونه
◍ مسح الخونه
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل ← مراتي
◍ تاك لمرتاتي
◍ مسح مرتاتي
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل ← شاذ
◍ تاك للشواذ
◍ مسح الشواذ
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل ← خطبتي
◍ تاك لخطبتي
◍ مسح خطبتي
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل ← علق
◍ تاك للعلوق
◍ مسح العلوق
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل ← مزه
◍ تاك للمزز
◍ مسح المزز
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل ← وتكه
◍ تاك للوتكات
◍ مسح الوتكات
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل ← كلب
◍ تاك للكلاب
◍ مسح الكلاب
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل ← قرد 
◍ تاك للقرود
◍ مسح القرود
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل ← بقره
◍ تاك للبقرات
◍ مسح البقرات
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل ← غبي
◍ تاك للاغبياء
◍ مسح الاغبياء
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل ← حمار
◍ تاك للحمير
◍ مسح الحمير
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل 
◍ بقلبي او من قلبي
◍ تاك للي بقلبي
◍ مسح اللي بقلبي
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل ← زوجتي
◍ تاك للزوجات
◍ مسح الزوجات
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ رفع + تنزيل ← مطلقه
◍ تاك للمطلقات
◍ مسح المطلقات
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ 𝘾𝙃 - [𝙎𝙊𝙐𝙍𝘾𝙀 𝘼𝙇𝘼𝙕𝙄𝙕𝙔](t.me/BANDA1M) 
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '☊.رجوع.☊', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/help') and Addictive(tahaj) then
if tonumber(Text:match('(.*)/help')) == tonumber(data.sender_user_id_) then
local Teext =[[
◍ اهلا بك في قسم الاوامر ..↑↓
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ اليك الاوامر الخاص بسورس العزايزي .
◍ اختر الامر الذي تريده من الازرار بلاسفل .
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ 𝘾𝙃 - [𝙎𝙊𝙐𝙍𝘾𝙀 𝘼𝙇𝘼𝙕𝙄𝙕𝙔](t.me/BANDA1M) 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '◍ اوامر الحمايه .', callback_data=data.sender_user_id_.."/help1"},{text = '◍ اوامر الادمنيه .', callback_data=data.sender_user_id_.."/help2"},
},
{
{text = '◍ اوامر الاداره .', callback_data=data.sender_user_id_.."/help4"},{text = '◍ اوامر المطور .', callback_data=data.sender_user_id_.."/help5"},
},
{
{text = '◍ اوامر التسليه .', callback_data=data.sender_user_id_.."/help6"},
},
{
{text = '◍ اوامر التعطيل .', callback_data=data.sender_user_id_.."/homeaddrem"},{text = '◍ اوامر القفل .', callback_data=data.sender_user_id_.."/homelocks"},
},
{
{text = '☊.رجوع.☊', callback_data=data.sender_user_id_.."/hlee"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end

if Text and Text:match('(.*)/hlee') and Addictive(tahaj) then
if tonumber(Text:match('(.*)/hlee')) == tonumber(data.sender_user_id_) then
local Teext =[[
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ قم بأختيار اللغه.. ↑↓
◍ Choose language.. ↑↓ 
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'english 𝅘𝅥𝅮 ', callback_data=data.sender_user_id_.."/hlep"},{text = 'عربي 𝅘𝅥𝅮', callback_data=data.sender_user_id_.."/help"},
},
{
{text = '◍.²₀²₁ ˝₀₄˝₁₃ | ₁₂:₀₀ 𝙿𝙼.◍', url="t.me/BANDA1M"}, 
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end

if Text and Text:match('(.*)/hle11') then
if tonumber(Text:match('(.*)/hle11')) == tonumber(data.sender_user_id_) then
local Teext =[[
◍ اهلا بك في قسم العاب مطوره..🎮
◍ من فضلك اختار اللعبه وثم ..🎮
◍ قم باختيار شات للعب ..🎮
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ 𝘾𝙃 - [𝙎𝙊𝙐𝙍𝘾𝙀 𝘼𝙇𝘼𝙕𝙄𝙕𝙔](t.me/BANDA1M) 
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '◍ سباق سيارات 🦅',url="https://t.me/gamee?game=F1Racer"}},
{{text = '◍ سباق الدراجات 🦅', url="http://t.me/gamee?game=motofx"}},
{{text = '◍ القط المجنون 🦅', url="http://t.me/gamee?game=CrazyCat"}},
{{text = '◍السمك الشائك 🦅', url="http://t.me/gamee?game=SpikyFish3"}},
{{text = '◍ فلابي بيرد 🦅', url="http://t.me/awesomebot?game=FlappyBird"}},
{{text = '◍ كرة قدم 🦅', url="https://t.me/gamee?game=FootballStar"}},
{{text = '◍ ركل الكره 🦅', url="http://t.me/gamee?game=KeepitUP"}},
{{text = '◍ اطلاق النار 🦅', url="http://t.me/gamee?game=NeonBlaster"}},
{{text = '◍ المجوهرات 🦅', url="http://t.me/gamee?game=DiamondRows"}},
{{text = '◍ ورق 🦅', url="https://t.me/gamee?game=Hexonix"}},
{{text = '◍ لعبة 2048 🦅', url="https://t.me/awesomebot?game=g2048"}},
{{text = '◍ جمع المياه 🦅', url="https://t.me/gamee?game=BlockBuster"}},
{{text = '◍ لا تجعلها تسقط 🦅', url="https://t.me/gamee?game=Touchdown"}},
{{text = '◍ تشابه 🦅', url="https://t.me/gamee?game=DiamondRows"}},
{{text = '◍ تحداني فالرياضيات 🦅', url="https://t.me/gamebot?game=MathBattle"}},
{{text = '☊.²₀²₁ ˝₀₄˝₁₃ | ₁₂:₀₀ 𝙿𝙼.☊', url="t.me/BANDA1M"}},
}  
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/hle22') then
if tonumber(Text:match('(.*)/hle22')) == tonumber(data.sender_user_id_) then
local Teext =[[
◍ قائمه العاب السورس
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ لعبة السمايلات ← سمايلات
◍ لعبة المختلف ← المختلف
◍ لعبة الصراحه ← صراحه
◍ لعبة بوستات ← بوستات
◍ لعبة كت تويت ← تويت
◍ لعبة كت تويت ← تويت
◍ لعبة منشورات ← كتبات
◍ لعبة العكس ← العكس 
◍ لعبة الحزوره ← حزوره
◍ لعبة انصح ← انصحني
◍ لعبه الاسرع ← الاسرع
◍ لعبة المعاني ← معاني
◍ لعبة التخمين ← خمن
◍ لعبة الامثله ← امثله
◍ لعبه النكت← نكته
◍ لعبة البـات ← بات
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ 𝘾𝙃 - [𝙎𝙊𝙐𝙍𝘾𝙀 𝘼𝙇𝘼𝙕𝙄𝙕𝙔](t.me/BANDA1M) 
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '☊.²₀²₁ ˝₀₄˝₁₃ | ₁₂:₀₀ 𝙿𝙼.☊', url="t.me/BANDA1M"}, 
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/hle33') then
if tonumber(Text:match('(.*)/hle33')) == tonumber(data.sender_user_id_) then
local Teext =[[
◍ ❬ m 3 ❭ 3 ◍ Tall orders ⇊
◍ Lifting «← Download + it
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ my son
◍ Crown for children
◍ Survey sons
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ Crown for girls
◍ Clear the girls
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
        ╔═══════════════╗        
             ◍ Habayeb survey..↑↓
        ╚═══════════════╝        
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ my husband
◍ Crown for couples
◍ Survey of couples
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ My wife
◍ Crown for the wives
◍ Wipe waves
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ Khayen
◍ Crown for him
◍ Clear the moon
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ Crown for the two
◍ Khiennine survey
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ Abit
◍ Crown for the mixture
◍ Survey
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ Crown for Paradise
◍ Storage survey
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ 𝘾𝙃 - [𝙎𝙊𝙐𝙍𝘾𝙀 𝘼𝙇𝘼𝙕𝙄𝙕𝙔](t.me/BANDA1M) 
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '☊.BACK.☊', callback_data=data.sender_user_id_.."/hlep"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/hle44') then
if tonumber(Text:match('(.*)/hle44')) == tonumber(data.sender_user_id_) then
local Teext =[[
◍ ❬ m 4 ❭ Orders of members ⇊
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ Age account
◍ Picture «←
◍ Quran
◍ Settings
◍ Qatari
◍ Delete «← Sell ❬ Qatari
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ My messages «← Delete 
◍ Decorating «← Songs
◍ Movies «← Cartoon
◍ Translate + novels
◍ YouTube ← Games
◍ Weather + area
◍ Dark «link
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ My name is 
◍ My Juices «← Delete my juices
◍ Powers «← Ping
◍ Say + word
◍ Prohibited Words
◍ I am Maine
◍ Say + word
◍ Qatah «← dog
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ Source «Developer
◍ link «hands
◍ Rank «← Revealed
◍ Reply you, Bot
◍ Any your opinion Yapot
◍ Hino «← Hinha
◍ Boso «← her pussy
◍ Mido «← ←
◍ Delete link
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ 𝘾𝙃 - [𝙎𝙊𝙐𝙍𝘾𝙀 𝘼𝙇𝘼𝙕𝙄𝙕𝙔](t.me/BANDA1M) 
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '☊.BACK.☊', callback_data=data.sender_user_id_.."/hlep"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/hle55') then
if tonumber(Text:match('(.*)/hle55')) == tonumber(data.sender_user_id_) then
local Teext =[[
◍ ❬ m 5 ❭ Orders of developers ⇊
◍ Developer ←⇊
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ Lifting «download ❬ owner ❭
◍ Change the group link
◍ Destination of groups
◍ Destination by guidance for groups
◍ A radio face
◍ Special radio
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ A special guidance
◍ Fix the installation
◍ bring back copy
◍ raise its backup copy
◍ Statistics
◍ Delete owners
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
        ╔═══════════════╗        
             ◍ Basic Developer..↑↓
        ╚═══════════════╝        
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ Add "← Delete a general response
◍ Lifting «download ❬ special year ❭
◍ Featured Survey
◍ General responses
◍ Delete public responses
◍ A special guidance
◍ Destination by guidance for groups
◍ Fix the installation
◍ A radio face
◍ bring «← raising 
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ Statistics
◍ Lifting «download ❬ Developer ❭
◍ Developers «← Delete developers
◍ Put the name of the bot
◍ Change the departing message
◍ Prohibition «← Mute ❬ General ❭
◍ General makers
◍ Preventors General
◍ Canceling the general
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ 𝘾𝙃 - [𝙎𝙊𝙐𝙍𝘾𝙀 𝘼𝙇𝘼𝙕𝙄𝙕𝙔](t.me/BANDA1M) 
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '☊.BACK.☊', callback_data=data.sender_user_id_.."/hlep"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/hle66') then
if tonumber(Text:match('(.*)/hle66')) == tonumber(data.sender_user_id_) then
local Teext =[[
◍ ❬ m 2 ❭ 2 ◍ entertainment orders ⇊
◍ Lifting «← Download + it
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ and Take
◍ Crown for Soutat
◍ Wipe Wattat
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ Crown for drapes
◍ Clear Docks
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ Jeep
◍ Crown for bodies
◍ Scanning
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ animal
◍ Crown for animals
◍ Animals
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ failed
◍ Crown for failure
◍ Scan of failure
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ Dermatology
◍ Crown for perforation
◍ Scanning
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ Catte
◍ Crown for cats
◍ Cats survey
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ 𝘾𝙃 - [𝙎𝙊𝙐𝙍𝘾𝙀 𝘼𝙇𝘼𝙕𝙄𝙕𝙔](t.me/BANDA1M) 
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '☊.BACK.☊', callback_data=data.sender_user_id_.."/hlep"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/hlep') and Addictive(tahaj) then
if tonumber(Text:match('(.*)/hlep')) == tonumber(data.sender_user_id_) then
local Teext =[[
◍ Welcome to the orders section.. ↑↓
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ You can use the buttons..↑↓
◍ By putting pressure on them..↑↓
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╸
◍ 𝘾𝙃 - [𝙎𝙊𝙐𝙍𝘾𝙀 𝘼𝙇𝘼𝙕𝙄𝙕𝙔](t.me/BANDA1M) 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '◍ protection', callback_data=data.sender_user_id_.."/hle11"},{text = '◍ addictive', callback_data=data.sender_user_id_.."/hle22"},
},
{
{text = '◍ Administration', callback_data=data.sender_user_id_.."/hle44"},{text = '◍ Developer', callback_data=data.sender_user_id_.."/hle55"},
},
{
{text = '◍ Disabled orders', callback_data=data.sender_user_id_.."/homeaddrem"},{text = '◍ Lock orders', callback_data=data.sender_user_id_.."/homelocks"},
},
{
{text = '☊.BACK.☊', callback_data=data.sender_user_id_.."/hlee"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end

if Text and Text:match('(.*)/lockdul') and Owner(data) then
if tonumber(Text:match('(.*)/lockdul')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم تعطيل التنزيل '
database:set(bot_id..'dw:bot:api'..Chat_id,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lock_links') and Addictive(data) then
if tonumber(Text:match('(.*)/lock_links')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم تعطيل الرابط '
database:del(bot_id.."VAMBAIR:Link_Group"..Chat_id) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockwelcome') and Addictive(data) then
if tonumber(Text:match('(.*)/lockwelcome')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم تعطيل الترحيب '
database:del(bot_id.."VAMBAIR:Chek:Welcome"..Chat_id) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockwelcome') and Owner(data) then
if tonumber(Text:match('(.*)/lockwelcome')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم تعطيل الردود العامه '
database:set(bot_id.."VAMBAIR:Reply:Sudo"..Chat_id,true)   
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockide') and Owner(data) then
if tonumber(Text:match('(.*)/lockide')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم تعطيل الايدي '
database:set(bot_id..'VAMBAIR:Lock:ID:Bot'..Chat_id,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockidephoto') and Owner(data) then
if tonumber(Text:match('(.*)/lockidephoto')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم تعطيل الايدي بالصوره '
database:set(bot_id..'VAMBAIR:Lock:ID:Bot:Photo'..Chat_id,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockkiked') and Constructor(data) then
if tonumber(Text:match('(.*)/lockkiked')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم تعطيل الحظر '
database:set(bot_id.."Add:Group:Cheking"..Chat_id,"true")
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/locksetm') and Constructor(data) then
if tonumber(Text:match('(.*)/locksetm')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم تعطيل الرفع '
database:set(bot_id.."Add:Group:Cheking"..Chat_id,"true")
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockkikedme') and Owner(data) then
if tonumber(Text:match('(.*)/lockkikedme')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم تعطيل اطردني '
database:set(bot_id.."VAMBAIR:Kick:Me"..Chat_id,true)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockgames') and Owner(data) then
if tonumber(Text:match('(.*)/lockgames')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم تعطيل الالعاب '
database:del(bot_id.."Tshak:Lock:Games"..Chat_id) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockrepgr') and Owner(data) then
if tonumber(Text:match('(.*)/lockrepgr')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم تعطيل الردود '
database:set(bot_id.."VAMBAIR:Reply:Manager"..Chat_id,true)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
end
if Text and Text:match('(.*)/unlockdul') and Owner(data) then
if tonumber(Text:match('(.*)/unlockdul')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم تفعيل التنزيل '
database:del(bot_id..'dw:bot:api'..Chat_id) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlock_links') and Addictive(data) then
if tonumber(Text:match('(.*)/unlock_links')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم تفعيل الرابط '
database:set(bot_id.."VAMBAIR:Link_Group"..Chat_id,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockwelcome') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockwelcome')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم تفعيل الترحيب '
database:set(bot_id.."VAMBAIR:Chek:Welcome"..Chat_id,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockrepall') and Owner(data) then
if tonumber(Text:match('(.*)/unlockrepall')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم تفعيل الردود العامه '
database:del(bot_id.."VAMBAIR:Reply:Sudo"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockide') and Owner(data) then
if tonumber(Text:match('(.*)/unlockide')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم تفعيل الايدي '
database:del(bot_id..'VAMBAIR:Lock:ID:Bot'..Chat_id) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockidephoto') and Owner(data) then
if tonumber(Text:match('(.*)/unlockidephoto')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم تفعيل الايدي بالصوره '
database:del(bot_id..'VAMBAIR:Lock:ID:Bot:Photo'..Chat_id) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockkiked') and Constructor(data) then
if tonumber(Text:match('(.*)/unlockkiked')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم تفعيل الحظر '
database:del(bot_id.."Ban:Cheking"..Chat_id)
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlocksetm') and Constructor(data) then
if tonumber(Text:match('(.*)/unlocksetm')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم تفعيل الرفع '
database:set(bot_id.."Add:Group:Cheking"..Chat_id,"true")
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockkikedme') and Owner(data) then
if tonumber(Text:match('(.*)/unlockkikedme')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم تفعيل اطردني '
database:del(bot_id.."VAMBAIR:Kick:Me"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockgames') and Owner(data) then
if tonumber(Text:match('(.*)/unlockgames')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم تفعيل الالعاب '
database:set(bot_id.."Tshak:Lock:Games"..Chat_id,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockrepgr') and Owner(data) then
if tonumber(Text:match('(.*)/unlockrepgr')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم تفعيل الردود '
database:del(bot_id.."VAMBAIR:Reply:Manager"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homeaddrem"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/homeaddrem') and Owner(data) then
if tonumber(Text:match('(.*)/homeaddrem')) == tonumber(data.sender_user_id_) then
local Texti = 'تستطيع تعطيل وتفعيل عبر الازرار'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'تعطيل التنزيل ◍', callback_data=data.sender_user_id_.."/lockdul"},{text = 'تفعيل التنزيل ◍', callback_data=data.sender_user_id_.."/unlockdul"},
},
{
{text = 'تعطيل الرابط ◍', callback_data=data.sender_user_id_.."/lock_links"},{text = 'تفعيل الرابط ◍', callback_data=data.sender_user_id_.."/unlock_links"},
},
{
{text = 'تعطيل الترحيب ◍', callback_data=data.sender_user_id_.."/lockwelcome"},{text = 'تفعيل الترحيب ◍', callback_data=data.sender_user_id_.."/unlockwelcome"},
},
{
{text = 'تعطيل الردود العامه ◍', callback_data=data.sender_user_id_.."/lockrepall"},{text = 'تفعيل الردود العامه ◍', callback_data=data.sender_user_id_.."/unlockrepall"},
},
{
{text = 'تعطيل الايدي ◍', callback_data=data.sender_user_id_.."/lockide"},{text = 'تفعيل الايدي ◍', callback_data=data.sender_user_id_.."/unlockide"},
},
{
{text = 'تعطيل الايدي بالصوره ◍', callback_data=data.sender_user_id_.."/lockidephoto"},{text = 'تفعيل الايدي بالصوره ◍', callback_data=data.sender_user_id_.."/unlockidephoto"},
},
{
{text = 'تعطيل الحظر ◍', callback_data=data.sender_user_id_.."/lockkiked"},{text = 'تفعيل الحظر ◍', callback_data=data.sender_user_id_.."/unlockkiked"},
},
{
{text = 'تعطيل الرفع ◍', callback_data=data.sender_user_id_.."/locksetm"},{text = 'تفعيل الرفع ◍', callback_data=data.sender_user_id_.."/unlocksetm"},
},
{
{text = 'تعطيل اطردني ◍', callback_data=data.sender_user_id_.."/lockkikedme"},{text = 'تفعيل اطردني ◍', callback_data=data.sender_user_id_.."/unlockkikedme"},
},
{
{text = 'تعطيل الالعاب ◍', callback_data=data.sender_user_id_.."/lockgames"},{text = 'تفعيل الالعاب ◍', callback_data=data.sender_user_id_.."/unlockgames"},
},
{
{text = 'تعطيل الردود ◍', callback_data=data.sender_user_id_.."/lockrepgr"},{text = 'تفعيل الردود ◍', callback_data=data.sender_user_id_.."/unlockrepgr"},
},
{
{text = '☊.رجوع.☊', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Texti)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(.*)/lockjoine') and Addictive(data) then
if tonumber(Text:match('(.*)/lockjoine')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم قفل الاضافه '
database:set(bot_id.."Tshake:Lock:AddMempar"..Chat_id,"kick")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockchat') and Owner(tahaj) then
if tonumber(Text:match('(.*)/lockchat')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم قفل الدردشه '
database:set(bot_id.."VAMBAIR:Lock:text"..Chat_id,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lock_joine') and Addictive(data) then
if tonumber(Text:match('(.*)/lock_joine')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم قفل الدخول '
database:set(bot_id.."VAMBAIR:Lock:Join"..Chat_id,"kick")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockbots') and Addictive(data) then
if tonumber(Text:match('(.*)/lockbots')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم قفل البوتات '
database:set(bot_id.."VAMBAIR:Lock:Bot:kick"..Chat_id,"del")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/locktags') and Addictive(data) then
if tonumber(Text:match('(.*)/locktags')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم قفل الاشعارات '
database:set(bot_id.."VAMBAIR:Lock:tagservr"..Chat_id,true)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockedit') and Owner(tahaj) then
if tonumber(Text:match('(.*)/lockedit')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم قفل التعديل '
database:set(bot_id.."VAMBAIR:Lock:edit"..Chat_id,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/locklink') and Addictive(data) then
if tonumber(Text:match('(.*)/locklink')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم قفل الروابط '
database:set(bot_id.."VAMBAIR:Lock:Link"..Chat_id,"del")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockusername') and Addictive(data) then
if tonumber(Text:match('(.*)/lockusername')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم قفل المعرفات '
database:set(bot_id.."VAMBAIR:Lock:User:Name"..Chat_id,"del") 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockusername') and Addictive(data) then
if tonumber(Text:match('(.*)/lockusername')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم قفل التاك '
database:set(bot_id.."VAMBAIR:Lock:hashtak"..Chat_id,"del")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/locksticar') and Addictive(data) then
if tonumber(Text:match('(.*)/locksticar')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم قفل الملصقات '
database:set(bot_id.."VAMBAIR:Lock:Sticker"..Chat_id,"del")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockgif') and Addictive(data) then
if tonumber(Text:match('(.*)/lockgif')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم قفل المتحركات '
database:set(bot_id.."VAMBAIR:Lock:Animation"..Chat_id,"del")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockvideo') and Addictive(data) then
if tonumber(Text:match('(.*)/lockvideo')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم قفل الفيديو '
database:set(bot_id.."VAMBAIR:Lock:Video"..Chat_id,"del")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockphoto') and Addictive(data) then
if tonumber(Text:match('(.*)/lockphoto')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم قفل الصور '
database:set(bot_id.."VAMBAIR:Lock:Photo"..Chat_id,"del")    
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockvoise') and Addictive(data) then
if tonumber(Text:match('(.*)/lockvoise')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم قفل الاغاني '
database:set(bot_id.."VAMBAIR:Lock:Audio"..Chat_id,"del")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockaudo') and Addictive(data) then
if tonumber(Text:match('(.*)/lockaudo')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم قفل الصوت '
database:set(bot_id.."VAMBAIR:Lock:vico"..Chat_id,"del")    
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockfwd') and Addictive(data) then
if tonumber(Text:match('(.*)/lockfwd')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم قفل التوجيه '
database:set(bot_id.."VAMBAIR:Lock:forward"..Chat_id,'del')  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockfile') and Addictive(data) then
if tonumber(Text:match('(.*)/lockfile')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم قفل الملفات '
database:set(bot_id.."VAMBAIR:Lock:Document"..Chat_id,"del")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockphone') and Addictive(data) then
if tonumber(Text:match('(.*)/lockphone')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم قفل الجهات '
database:set(bot_id.."VAMBAIR:Lock:Contact"..Chat_id,"del")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockposts') and Addictive(data) then
if tonumber(Text:match('(.*)/lockposts')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم قفل الكلايش '
database:set(bot_id.."VAMBAIR:Lock:Spam"..Chat_id,"del")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockflood') and Addictive(data) then
if tonumber(Text:match('(.*)/lockflood')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم قفل التكرار '
database:hset(bot_id.."VAMBAIR:flooding:settings:"..Chat_id ,"flood","del")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockfarse') and Addictive(data) then
if tonumber(Text:match('(.*)/lockfarse')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم قفل الفارسيه '
database:set(bot_id..'lock:Fars'..Chat_id,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockfshar') and Addictive(data) then
if tonumber(Text:match('(.*)/lockfshar')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم قفل السب '
database:set(bot_id..'lock:Fshar'..Chat_id,true) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/lockinlene') and Addictive(data) then
if tonumber(Text:match('(.*)/lockinlene')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم قفل الانلاين '
database:set(bot_id.."VAMBAIR:Lock:Inlen"..Chat_id,"del")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
end
if Text and Text:match('(.*)/unlockjoine') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockjoine')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم فتح الاضافه '
database:del(bot_id.."VAMBAIR:Lock:AddMempar"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockchat') and Owner(data) then
if tonumber(Text:match('(.*)/unlockchat')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم فتح الدردشه '
database:del(bot_id.."VAMBAIR:Lock:text"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlock_joine') and Addictive(data) then
if tonumber(Text:match('(.*)/unlock_joine')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم فتح الدخول '
database:del(bot_id.."VAMBAIR:Lock:Join"..Chat_id) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockbots') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockbots')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم فتح البوتات '
database:del(bot_id.."VAMBAIR:Lock:Bot:kick"..Chat_id)   
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlocktags') and Addictive(data) then
if tonumber(Text:match('(.*)/unlocktags')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم فتح الاشعارات '
database:del(bot_id.."VAMBAIR:Lock:tagservr"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockedit') and Owner(data) then
if tonumber(Text:match('(.*)/unlockedit')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم فتح التعديل '
database:del(bot_id.."VAMBAIR:Lock:edit"..Chat_id) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlocklink') and Addictive(data) then
if tonumber(Text:match('(.*)/unlocklink')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم فتح الروابط '
database:del(bot_id.."VAMBAIR:Lock:Link"..Chat_id) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockusername') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockusername')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم فتح المعرفات '
database:del(bot_id.."VAMBAIR:Lock:User:Name"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlocktag') and Addictive(data) then
if tonumber(Text:match('(.*)/unlocktag')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم فتح التاك '
database:del(bot_id.."VAMBAIR:Lock:hashtak"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlocksticar') and Addictive(data) then
if tonumber(Text:match('(.*)/unlocksticar')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم فتح الملصقات '
database:del(bot_id.."VAMBAIR:Lock:Sticker"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockgif') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockgif')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم فتح المتحركات '
database:del(bot_id.."VAMBAIR:Lock:Animation"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockvideo') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockvideo')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم فتح الفيديو '
database:del(bot_id.."VAMBAIR:Lock:Video"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockphoto') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockphoto')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم فتح الصور '
database:del(bot_id.."VAMBAIR:Lock:Photo"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockvoise') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockvoise')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم فتح الاغاني '
database:del(bot_id.."VAMBAIR:Lock:Audio"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockaudo') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockaudo')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم فتح الصوت '
database:del(bot_id.."VAMBAIR:Lock:vico"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockfwd') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockfwd')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم فتح التوجيه '
database:del(bot_id.."VAMBAIR:Lock:forward"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockfile') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockfile')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم فتح الملفات '
database:del(bot_id.."VAMBAIR:Lock:Document"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockphone') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockphone')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم فتح الجهات '
database:del(bot_id.."VAMBAIR:Lock:Contact"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockposts') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockposts')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم فتح الكلايش '
database:del(bot_id.."VAMBAIR:Lock:Spam"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockflood') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockflood')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم فتح التكرار '
database:hdel(bot_id.."VAMBAIR:flooding:settings:"..Chat_id ,"flood")  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockfarse') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockfarse')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم فتح الفارسيه '
database:del(bot_id..'lock:Fars'..Chat_id) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockfshar') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockfshar')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم فتح السب '
database:del(bot_id..'lock:Fshar'..Chat_id) 
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/unlockinlene') and Addictive(data) then
if tonumber(Text:match('(.*)/unlockinlene')) == tonumber(data.sender_user_id_) then
local Textedit = '• تم فتح الانلاين '
database:del(bot_id.."VAMBAIR:Lock:Inlen"..Chat_id)  
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'القائمة الرئيسيه ◍', callback_data=data.sender_user_id_.."/homelocks"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Textedit)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end
elseif Text and Text:match('(.*)/homelocks') and Addictive(data) then
if tonumber(Text:match('(.*)/homelocks')) == tonumber(data.sender_user_id_) then
local Texti = 'اوامر القفل والفتح ◍'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'قفل الاضافه ◍', callback_data=data.sender_user_id_.."/lockjoine"},{text = 'فتح الاضافه ◍', callback_data=data.sender_user_id_.."/unlockjoine"},
},
{
{text = 'قفل الدردشه ◍', callback_data=data.sender_user_id_.."/lockchat"},{text = 'فتح الدردشه ◍', callback_data=data.sender_user_id_.."/unlockchat"},
},
{
{text = 'قفل الدخول ◍', callback_data=data.sender_user_id_.."/lock_joine"},{text = 'فتح الدخول ◍', callback_data=data.sender_user_id_.."/unlock_joine"},
},
{
{text = 'قفل البوتات ◍', callback_data=data.sender_user_id_.."/lockbots"},{text = 'فتح البوتات ◍', callback_data=data.sender_user_id_.."/unlockbots"},
},
{
{text = 'قفل الاشعارات ◍', callback_data=data.sender_user_id_.."/locktags"},{text = 'فتح الاشعارات ◍', callback_data=data.sender_user_id_.."/unlocktags"},
},
{
{text = 'قفل التعديل ◍', callback_data=data.sender_user_id_.."/lockedit"},{text = 'فتح التعديل ◍', callback_data=data.sender_user_id_.."/unlockedit"},
},
{
{text = 'قفل الروابط ◍', callback_data=data.sender_user_id_.."/locklink"},{text = 'فتح الروابط ◍', callback_data=data.sender_user_id_.."/unlocklink"},
},
{
{text = 'قفل المعرفات ◍', callback_data=data.sender_user_id_.."/lockusername"},{text = 'فتح المعرفات ◍', callback_data=data.sender_user_id_.."/unlockusername"},
},
{
{text = 'قفل التاك ◍', callback_data=data.sender_user_id_.."/locktag"},{text = 'فتح التاك ◍', callback_data=data.sender_user_id_.."/unlocktag"},
},
{
{text = 'قفل الملصقات ◍', callback_data=data.sender_user_id_.."/locksticar"},{text = 'فتح الملصقات ◍', callback_data=data.sender_user_id_.."/unlocksticar"},
},
{
{text = 'قفل المتحركه ◍', callback_data=data.sender_user_id_.."/lockgif"},{text = 'فتح المتحركه ◍', callback_data=data.sender_user_id_.."/unlockgif"},
},
{
{text = 'قفل الفيديو ◍', callback_data=data.sender_user_id_.."/lockvideo"},{text = 'فتح الفيديو ◍', callback_data=data.sender_user_id_.."/unlockvideo"},
},
{
{text = 'قفل الصور ◍', callback_data=data.sender_user_id_.."/lockphoto"},{text = 'فتح الصور ◍', callback_data=data.sender_user_id_.."/unlockphoto"},
},
{
{text = 'قفل الاغاني ◍', callback_data=data.sender_user_id_.."/lockvoise"},{text = 'فتح الاغاني ◍', callback_data=data.sender_user_id_.."/unlockvoise"},
},
{
{text = 'قفل الصوت ◍', callback_data=data.sender_user_id_.."/lockaudo"},{text = 'فتح الصوت ◍', callback_data=data.sender_user_id_.."/unlockaudo"},
},
{
{text = 'قفل التوجيه ◍', callback_data=data.sender_user_id_.."/lockfwd"},{text = 'فتح التوجيه ◍', callback_data=data.sender_user_id_.."/unlockfwd"},
},
{
{text = 'قفل الملفات ◍', callback_data=data.sender_user_id_.."/lockfile"},{text = 'فتح الملفات ◍', callback_data=data.sender_user_id_.."/unlockfile"},
},
{
{text = 'قفل الجهات ◍', callback_data=data.sender_user_id_.."/lockphone"},{text = 'فتح الجهات ◍', callback_data=data.sender_user_id_.."/unlockphone"},
},
{
{text = 'قفل الكلايش ◍', callback_data=data.sender_user_id_.."/lockposts"},{text = 'فتح الكلايش ◍', callback_data=data.sender_user_id_.."/unlockposts"},
},
{
{text = 'قفل التكرار ◍', callback_data=data.sender_user_id_.."/lockflood"},{text = 'فتح التكرار ◍', callback_data=data.sender_user_id_.."/unlockflood"},
},
{
{text = 'قفل الفارسيه ◍', callback_data=data.sender_user_id_.."/lockfarse"},{text = 'فتح الفارسيه ◍', callback_data=data.sender_user_id_.."/unlockfarse"},
},
{
{text = 'قفل السب ◍', callback_data=data.sender_user_id_.."/lockfshar"},{text = 'فتح السب ◍', callback_data=data.sender_user_id_.."/unlockfshar"},
},
{
{text = 'قفل الانجليزيه ◍', callback_data=data.sender_user_id_.."/lockenglish"},{text = 'فتح الانجليزيه ◍', callback_data=data.sender_user_id_.."/unlockenglish"},
},
{
{text = 'قفل الانلاين ◍', callback_data=data.sender_user_id_.."/lockinlene"},{text = 'فتح الانلاين ◍', callback_data=data.sender_user_id_.."/unlockinlene"},
},
{
{text = '☊.رجوع.☊', callback_data=data.sender_user_id_.."/help"},
},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Texti)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
end
if Text and Text:match('(%d+)/UnKed@(%d+):(%d+)') then
local ramsesadd = {string.match(Text,"^(%d+)/UnKed@(%d+):(%d+)$")}

if tonumber(ramsesadd[2]) == tonumber(ramsesadd[3]) then
if tonumber(ramsesadd[1]) == tonumber(data.sender_user_id_) then
DeleteMessage(data.chat_id_, {[0] = Msg_id})  
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. data.chat_id_ .. "&user_id=" .. data.sender_user_id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
end
end
end

end

if data.ID == "UpdateChannel" then 
if data.channel_.status_.ID == "ChatMemberStatusKicked" then 
database:srem(bot_id..'VAMBAIR:Chek:Groups','-100'..data.channel_.id_)  
end
end
if (data.ID == "UpdateNewMessage") then
local msg = data.message_
local text = msg.content_.text_
if msg.date_ and msg.date_ < tonumber(os.time() - 30) then
print("OLD MESSAGE")
return false
end
if text == 'تعطيل تحقق' and Addictive(msg) then   
database:del(bot_id..'VAMBAIR:nwe:mem:group'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,'\n تم تعطيل تحقق' ) 
end
if text == 'تفعيل تحقق' and Addictive(msg) then  
database:set(bot_id..'VAMBAIR:nwe:mem:group'..msg.chat_id_,'true') 
send(msg.chat_id_, msg.id_,'\nتم تفعيل تحقق' ) 
end 

if msg.content_.ID == "MessageChatJoinByLink" and database:get(bot_id..'VAMBAIR:nwe:mem:group'..msg.chat_id_) == 'true'then
numphoto = {'3','8','9','6'}
numphotoid = numphoto[math.random(#numphoto)]
local numjoine = (numphotoid + 3)
local Texti = 'اختر اللجابه الصحيحه \n'..numphotoid..' + 3 ='
local nu1 = (5 + numphotoid)
local nu2 = (7 + numphotoid)
local nu3 = (1 + numphotoid)

keyboard = {} 
keyboard.inline_keyboard = {
{
{text = nu1, callback_data=msg.sender_user_id_.."/lockjoine"},{text = nu2, callback_data=msg.sender_user_id_.."/unlockjoine"},
},
{
{text =numjoine, callback_data=msg.sender_user_id_.."/UnKed@"..numjoine..":"..numjoine},{text = nu3, callback_data=msg.sender_user_id_.."/unlockjoine"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Texti).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_)
return false
end
if msg.sender_user_id_ and Muted_Groups(msg.chat_id_,msg.sender_user_id_) then 
DeleteMessage(msg.chat_id_, {[0] = msg.id_})  
return false  
end
--------------------------------------------------------------------------------------------------------------
if tonumber(msg.sender_user_id_) ~= tonumber(bot_id) then  
if msg.sender_user_id_ and Ban_Groups(msg.chat_id_,msg.sender_user_id_) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false  
end
--------------------------------------------------------------------------------------------------------------
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and Ban_Groups(msg.chat_id_,msg.content_.members_[0].id_) then 
Kick_Group(msg.chat_id_,msg.content_.members_[0].id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end
--------------------------------------------------------------------------------------------------------------
if msg.sender_user_id_ and Ban_All_Groups(msg.sender_user_id_) then 
Kick_Group(msg.chat_id_,msg.sender_user_id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false 
end
--------------------------------------------------------------------------------------------------------------
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and Ban_All_Groups(msg.content_.members_[0].id_) then 
Kick_Group(msg.chat_id_,msg.content_.members_[0].id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_})  
end 
end
------------------------------------------------------------------------
if msg.content_.ID == "MessageChatDeletePhoto" or msg.content_.ID == "MessageChatChangePhoto" or msg.content_.ID == "MessagePinMessage" or msg.content_.ID == "MessageChatJoinByLink" or msg.content_.ID == "MessageChatAddMembers" or msg.content_.ID == "MessageChatChangeTitle" or msg.content_.ID == "MessageChatDeleteMember" then   
if database:get(bot_id.."VAMBAIR:Lock:tagservr"..msg.chat_id_) then  
DeleteMessage(msg.chat_id_,{[0] = msg.id_})       
return false
end    
end   
if text and not database:sismember(bot_id..'VAMBAIR:Spam:Group'..msg.sender_user_id_,text) then
database:del(bot_id..'VAMBAIR:Spam:Group'..msg.sender_user_id_) 
end
------------------------------------------------------------------------
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
database:set(bot_id..'VAMBAIR:User:Name'..msg.sender_user_id_,data.username_)
end;end,nil)   
------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then  
database:set(bot_id.."VAMBAIR:Who:Added:Me"..msg.chat_id_..":"..msg.content_.members_[0].id_,msg.sender_user_id_)
local mem_id = msg.content_.members_  
local Bots = database:get(bot_id.."VAMBAIR:Lock:Bot:kick"..msg.chat_id_) 
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and not Addictive(msg) and Bots == "kick" then   
https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_)
Get_Info = https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local Json_Info = JSON.decode(Get_Info)
if Json_Info.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_}) tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah) local admins = tah.members_ for i=0 , #admins do if tah.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not is_Addictive(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil)  
end
end     
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then  
local mem_id = msg.content_.members_  
local Bots = database:get(bot_id.."VAMBAIR:Lock:Bot:kick"..msg.chat_id_) 
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and not Addictive(msg) and Bots == "del" then   
Get_Info = https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local Json_Info = JSON.decode(Get_Info)
if Json_Info.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_}) tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah) local admins = tah.members_ for i=0 , #admins do if tah.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not is_Addictive(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil)  
end
end     
end
end
------------------------------------------------------------------------
if text and database:get(bot_id.."VAMBAIR:Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
local NewCmmd = database:get(bot_id.."VAMBAIR:Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
if NewCmmd then
database:del(bot_id.."VAMBAIR:Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
database:del(bot_id.."VAMBAIR:Set:Cmd:Group:New"..msg.chat_id_)
database:srem(bot_id.."VAMBAIR:List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,"◍ تم ازالة الامر من المجموعه")  
else
send(msg.chat_id_, msg.id_,"◍ لا يوجد امر بهاذا الاسم تاكد من الامر واعد المحاوله")  
end
database:del(bot_id.."VAMBAIR:Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
------------------------------------------------------------------------
if data.message_.content_.text_ then
local NewCmmd = database:get(bot_id.."VAMBAIR:Set:Cmd:Group:New1"..msg.chat_id_..":"..data.message_.content_.text_)
if NewCmmd then
data.message_.content_.text_ = (NewCmmd or data.message_.content_.text_)
end
end
local Name_Bot = (database:get(bot_id.."VAMBAIR:Name:Bot") or "العزايزي")
if not database:get(bot_id.."VAMBAIR:Fun_Bots"..msg.chat_id_) then
if text ==  ""..Name_Bot..' اي رأيك ف دا' and tonumber(msg.reply_to_message_id_) > 0 then     
function FunBot(extra, result, success) 
local Fun = {'زي الزفت','ونا مالي يعم','م تدخلنيش ما بينكو 🙄' }
send(msg.chat_id_, result.id_,''..Fun[math.random(#Fun)]..'')   
end   
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, FunBot, nil)
return false
end  
if text == ""..Name_Bot..' بتحب دا' and tonumber(msg.reply_to_message_id_) > 0 then    
function FunBot(extra, result, success) 
local Fun = {"ونا مالي يعم 😹","لا لا مش عاجبني 😹","زفت علي دماغك 😹🙂"}
send(msg.chat_id_,result.id_,''..Fun[math.random(#Fun)]..'') 
end  
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, FunBot, nil)
return false
end    
end
if text and text:match('^'..Name_Bot..' ') then
data.message_.content_.text_ = data.message_.content_.text_:gsub('^'..Name_Bot..' ','')
end
if text == "هينه" or text == "هينو" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"اصلا دا اقل من انك ترد عليه 😹😒","فكك منه عيل جربوع 😹😹","احظره واريح دماغي؟ 😹"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == "بوسو" or text == "بوسه" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"مووووووووواححح????","تؤ عيب 😊","مش ادام الناس يوهه🙄","ي واد ي شقي عيب 😹♥","خد محح ◍♥","لا كفايه كدا 😂","عاوزني ابوس دا؟  احاا","غور بشكلك دا يعم 😒"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
--------
if text == "تعطيل الابراج" and Addictive(msg) then
send(msg.chat_id_, msg.id_, '◍ تم تعطيل الابراج')
database:set(bot_id.." amir:brj_Bots"..msg.chat_id_,"close")
end
if text == "تفعيل الابراج" and Addictive(msg) then
send(msg.chat_id_, msg.id_,'◍ تم تفعيل الابراج')
database:set(bot_id.." amir:brj_Bots"..msg.chat_id_,"open")
end
if text and text:match("^برج (.*)$") and database:get(bot_id.." amir:brj_Bots"..msg.chat_id_) == "open" then
local Textbrj = text:match("^برج (.*)$")
gk = https.request('https://apiabs.ml/brg.php?brg='..URL.escape(Textbrj)..'')
br = JSON.decode(gk)
i = 0
for k,v in pairs(br.ok) do
i = i + 1
t = v.."\n"
end
send(msg.chat_id_, msg.id_, t)
end
if text == "تعطيل حساب العمر" and Addictive(msg) then
send(msg.chat_id_, msg.id_, '◍ تم تعطيل حساب العمر')
database:set(bot_id.." amir:age_Bots"..msg.chat_id_,"close")
end
if text == "تعطيل حساب العمر" and Addictive(msg) then
send(msg.chat_id_, msg.id_, '◍ تم تعطيل حساب العمر')
database:set(bot_id.." amir:age_Bots"..msg.chat_id_,"close")
end
if text == "تفعيل حساب العمر" and Addictive(msg) then
send(msg.chat_id_, msg.id_,'◍ تم تفعيل حساب العمر')
database:set(bot_id.." amir:age_Bots"..msg.chat_id_,"open")
end
if text and text:match("^احسب (.*)$") and database:get(bot_id.." amir:age_Bots"..msg.chat_id_) == "open" then
local Textage = text:match("^احسب (.*)$")
ge = https.request('https://rudi-dev.tk/Amir3/Boyka.php?age='..URL.escape(Textage)..'')
ag = JSON.decode(ge)
i = 0
for k,v in pairs(ag.ok) do
i = i + 1
t = v.."\n"
end
send(msg.chat_id_, msg.id_, t)
end
------------------------------------------------------------------------
VAMBAIR_Started_Bot(msg,data)
VAMBAIR_Files(msg)
elseif (data.ID == "UpdateMessageEdited") then
local msg = data
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.message_id_)},function(extra, result, success)
database:incr(bot_id..'VAMBAIR:message_edit'..result.chat_id_..result.sender_user_id_)
local Text = result.content_.text_
if database:get(bot_id.."VAMBAIR:Lock:edit"..msg.chat_id_) and not Text and not BasicConstructor(result) then
Reply_Status(result,result.sender_user_id_,"reply","◍ قام بالتعديل على الميديا")  
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
end
local text = result.content_.text_
if not Addictive(result) then
------------------------------------------------------------------------
if text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."VAMBAIR:Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."VAMBAIR:Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."VAMBAIR:Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."VAMBAIR:Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("[hH][tT][tT][pP][sT]") or text and text:match("[tT][eE][lL][eE][gG][rR][aA].[Pp][Hh]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa].[Pp][Hh]") then
if database:get(bot_id.."VAMBAIR:Lock:Link"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("(.*)(@)(.*)") then
if database:get(bot_id.."VAMBAIR:Lock:User:Name"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end
------------------------------------------------------------------------
if text and text:match("@") then
if database:get(bot_id.."VAMBAIR:Lock:User:Name"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("(.*)(#)(.*)") then
if database:get(bot_id.."VAMBAIR:Lock:hashtak"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("#") then
if database:get(bot_id.."VAMBAIR:Lock:hashtak"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("/") then
if database:get(bot_id.."VAMBAIR:Lock:Cmd"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end 
if text and text:match("(.*)(/)(.*)") then
if database:get(bot_id.."VAMBAIR:Lock:Cmd"..msg.chat_id_) then
DeleteMessage(result.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text then
local VAMBAIR_Msg = database:get(bot_id.."VAMBAIR:Add:Filter:Rp2"..text..result.chat_id_)   
if VAMBAIR_Msg then    
Reply_Status(result,result.sender_user_id_,"reply","◍ "..VAMBAIR_Msg)  
DeleteMessage(result.chat_id_, {[0] = data.message_id_})     
return false
end
end
end
end,nil)
------------------------------------------------------------------------
elseif (data.ID == "UpdateMessageSendSucceeded") then
local msg = data.message_
local text = msg.content_.text_
local Get_Msg_Pin = database:get(bot_id..'VAMBAIR:Msg:Pin:Chat'..msg.chat_id_)
if Get_Msg_Pin ~= nil then
if text == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) if d.ID == 'Ok' then;database:del(bot_id..'VAMBAIR:Msg:Pin:Chat'..msg.chat_id_);end;end,nil)   
elseif (msg.content_.sticker_) then 
if Get_Msg_Pin == msg.content_.sticker_.sticker_.persistent_id_ then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'VAMBAIR:Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
if (msg.content_.animation_) then 
if msg.content_.animation_.animation_.persistent_id_ == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'VAMBAIR:Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
if (msg.content_.photo_) then
if msg.content_.photo_.sizes_[0] then
id_photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
id_photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
id_photo = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
id_photo = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
if id_photo == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'VAMBAIR:Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
end
end
if (data.ID == "UpdateOption" and data.value_.value_ == "Ready") then
print('\27[30;32m»» يرجى الاننتضار لحين مسح المجموعات الوهميه ««\n\27[1;37m')
local list = database:smembers(bot_id..'VAMBAIR:UsersBot')  
for k,v in pairs(list) do 
tdcli_function({ID='GetChat',chat_id_ = v},function(arg,data) end,nil) 
end 
local list = database:smembers(bot_id..'VAMBAIR:Chek:Groups') 
for k,v in pairs(list) do 
tdcli_function({ID='GetChat',chat_id_ = v},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=v,user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
database:srem(bot_id..'VAMBAIR:Chek:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'VAMBAIR:Chek:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'VAMBAIR:Chek:Groups',v)  
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'VAMBAIR:Chek:Groups',v)   
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusEditor" then
database:sadd(bot_id..'VAMBAIR:Chek:Groups',v)  
end end,nil)
end;end;end
