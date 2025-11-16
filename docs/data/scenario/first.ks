*start
*title
;メッセージレイヤを非表示にしておく
@layopt layer=message0 visible=false

[title name="ここにはなにもないよ"]

;背景画像を設定
[image layer="base" page="fore" storage=back.jpg]

[locate x=300 y=600 ]
[button graphic="start.png" target=*first]

[locate x=800 y=600 ]
[button graphic="load.png" target=*loadmenu]

[s]

;つづきからボタンが押された場合。ロード画面を表示
*loadmenu
[cm]
[showload]

[jump target=*title]
[s]

;ストーリー最初から
*first
[cm]
[freeimage layer=1]
@layopt layer=message0 visible=true


[title name="ここにはなにもないよ"]
[hidemenubutton]
[wait time=200]
[freeimage layer="base"]


俺は必定を認めない。[l][r]

俺は運命を認めない。[l][r]

俺には、この世の変数の"全て"を認識することはできない。[l][r]
どうしようもなく不自由な俺では、世界を解いてあげられない。[l][r]
だから信じている...そう、[l][r]


[link target=*tag_A1] →奇跡も、魔法も、あるんだよ。 [endlink][r]
[link target=*tag_A1] →この世は奇跡でできている。概ね、どうでもよい奇跡で。[endlink][r]
[s]


*tag_A1
[cm]
[position height=160 top=430]
[font shadow="0xFF0000"]というのは、誰の戯言だったか。[resetfont][p]
[jump target=*tag_S1]


*tag_S1
[position layer=message0 width=1080 height=190 top=482 left=100 ]
[cm]
[bg storage=school13.png time=3000]

[ptext name="chara_name_area" layer=message0 width="200" color=white x=100 y=445 size=30]
[chara_config ptext="chara_name_area"]
[eval exp="$('.chara_name_area').css('pointer-events','none')"]

[button name="role_button" role="skip" graphic="button/skip2.png" x=1180 y=490]
[button name="role_button" role="save" graphic="button/save2.png" x=1180 y=520]
[button name="role_button" role="load" graphic="button/load2.png" x=1180 y=550]
[button name="role_button" role="backlog" graphic="button/log2.png" x=1180 y=580]
[button name="role_button" role="window" graphic="button/close2.png" x=1180 y=610]
[button name="role_button" role="menu" graphic="button/menu2.png" x=1180 y=640]


鐘がなる。[l][r]
今日も遅刻だ。[l][r]
女神様の話はいつも長いんだ。[l][r]

;ガロアの設定
[chara_new name="garoa" storage="pose_ushirode_garoa.png" jname="？？？"]
[chara_show name="garoa"]
;ガロアの表情の登録
[chara_face name="garoa" face="syani" storage="pose_syanikamaeru_garoa.png"]
[chara_face name="garoa" face="nihil" storage="nihil_smile_garoa.png"]
[chara_face name="garoa" face="magao" storage="face_magao_garoa.png"]
[chara_face name="garoa" face="kakusei" storage="kids_chuunibyou_garoa.png"]


#
重役出勤ならぬ、重役登校かね。君も。[l][r]
[cm]


;表情の適応
[chara_mod name="garoa" face="syani"]

#
こいつは...[l][r]
誰だっけ？[l][r]
[cm]

#garoa
我々のような"持つ者"は苦労するね。[l][r]
使命の遂行だけでなく、こんなごっこ遊びにも付き合わなければならないなんて。[l][r]
[cm]

#
...
うん。何をいっているかわからない[l][r]
きっと、うん。そういう時期なんだろう。僕にもあったよ。[l][r]
ここは...[l][r]

[cm]
[link target=*tag_S2] →ああ。女神様も酷なことを課すよな。 [endlink][r]
[link target=*tag_S3] →（無言で立ち去る...）[endlink][r]
[s]

*tag_S2

#garoa:nihil
[cm]
.......[l][r]
やはり...君は...![p]
[chara_hide name="garoa" ]
[jump target=*tag_S4]
[cm]


*tag_S3
#garoa
[cm]
..............[l][r]
今日こそ...私は超えてみせる。[p]

[chara_hide name="garoa" ]
[cm]
[jump target=*tag_S4]


*tag_S4

[position layer=message0 width=1080 height=190 top=482 left=100 ]
[bg time="2000" bg storage="cultural_club_room_1.jpg" method="bounceInDown"]
[ptext name="chara_name_area" layer=message0 width="200" color=white x=100 y=445 size=30]
[chara_config ptext="chara_name_area"]
[eval exp="$('.chara_name_area').css('pointer-events','none')"]

#
時は飛んで、午後。[l][r]
俺はいつもここで過ごすと決めている。[l][r]
すごすというよりも待っている、というべきか。[l][r]

[cm]

;彼女のステファニーの定義
[chara_new name="stf" storage="bosabosa_syomen_stefany.png" jname="ステフ"]
[chara_show name="stf"]
;ステフの表情の登録
[chara_face name="stf" face="megami" storage="megami.png"]

#stf
相も変わらずここで時間を潰しているのね。[l][r]
[cm]

#
そう。彼女こそが俺の動機。[l][r]
名をステファニー。ステフと俺はよんでいる。[l][r]

[cm]
[link target=*tag_S5] →君への愛が変わらないように、毎日会いに行くと決めているだけさ。 [endlink][r]
[link target=*tag_S6] →今日は早いな。[endlink][r]
[s]

*tag_S5
[cm]
#stf
変わらないんじゃないの。準静的なのよ。[l][r]
みんなそう。[l]
分解能が低いことに気付かないの。[l][r]
[cm]

#
「ほう？」[l][r]
俺はいつもこうして相槌をうつ。[l][r]
これだ。[l]
俺が求めているのは、この世界観。[l][r]

#stf
瞬きでサンプリングして、一呼吸でダイナミクスを語るの。[l][r]
.......[l]
人を推し量るのに、心はあまりにもチープなセンサーだって。[l][r]
[cm]
[chara_hide name="stf" ]

#
そう言うと彼女はすぐさま部屋を出てしまった。[l][r]
あれは一体どういう意味だったのだろうか。[l][r]
.....[l]
まぁ、彼女は"患っている者"の一人。[l][r]
いちいち言動を気にしていても仕方がない。[l]そこが良いんだ。[l][r]


[cm]
[jump target=*tag_S7]

*tag_S6
[cm]
#stf
最近、日が暮れるのが早いでしょう？[l][r]
だから、早めに来たの。彼が隠れてしまう前に。[l][r]
.......[l]
最後の挨拶をしておきたくて。[l][r]
[cm]
[chara_hide name="stf" ]

#
.......[l]
彼？[l][r]
誰のことだろうか。[l]
彼女が患っている人なんていただろうか。[l][r]
.....[l]
まぁ彼女の奇怪な言動は今に始まったことじゃないからな....................[l][r]
[cm]
俺は机に額を付けて、眠ることにした。[l]
[cm]

[jump target=*tag_S8]

*tag_S7
[position layer=message0 width=1080 height=190 top=482 left=100 ]
[bg time="2000" bg storage="school_evening08-1024x683.png" method="lightSpeedIn"]
[ptext name="chara_name_area" layer=message0 width="200" color=white x=100 y=445 size=30]
[chara_config ptext="chara_name_area"]
[eval exp="$('.chara_name_area').css('pointer-events','none')"]
さて、夕暮れである。[l][r]
これからどうするか...[l][r]
[cm]

[link target=*tag_S71] →ゲームセンターにでかける。 [endlink][r]
[link target=*tag_S9] →屋上へいってみる。[endlink][r]
[link target=*tag_S72] →帰宅する。[endlink][r]
[s]


*tag_S71
[cm]
行こうと思った....[l][r]
が、[l]お金がなかった...[l][r]
やりなおし！！！[l][r]
[cm]
[jump target=*tag_S7]

*tag_S72
[cm]
特にすることもないので、帰って寝る準備でもしよう。[l][r]
[chara_show name="garoa"]
#garoa:syani
[cm]
.......[l][r]
残念だよ...本当に..[p]
[chara_hide name="garoa" ]
[cm]


[position layer=message0 width=1080 height=190 top=482 left=100 ]
[bg time="2000" bg storage="_single_room3_4.jpg" method="fadeIn"]
[ptext name="chara_name_area" layer=message0 width="200" color=white x=100 y=445 size=30]
[chara_config ptext="chara_name_area"]
[eval exp="$('.chara_name_area').css('pointer-events','none')"]

[cm]
#
少しはやいが、もう寝る時間だ。[l][r]
枕元にはペンとノート、それにボイスレコーダーもセットした。[l][r]
後は耳栓をつければ、寝る準備は完全に整う。[l][r]
これが俺のルーティンというやつだ。[l][r]
[cm]
[jump target=*tag_S73]

*tag_S73
[cm]
[freeimage layer="base"]
その日........[l][r]
俺は[l]夢を見なかった[l]。[l][r]
[cm]

[position layer=message0 width=1080 height=190 top=482 left=100 ]
[bg time="4000" bg storage="_school_rooftop_1.jpg" method="fadeIn"]
[ptext name="chara_name_area" layer=message0 width="200" color=white x=100 y=445 size=30]
[chara_config ptext="chara_name_area"]
[eval exp="$('.chara_name_area').css('pointer-events','none')"]
[cm]
翌朝。[l][r]
ステフは...[l]空に魅入られてしまった。[l][r]
彼女を縛る体は[l][r]
[freeimage layer="base"]
もうない。[l][r]
[chara_show name="garoa"]
[chara_hide name="garoa" ]
[cm]
【BAD END】[l]
[jump target=*start]


*tag_S8
[position layer=message0 width=1080 height=190 top=482 left=100 ]
[bg time="2000" bg storage="_cultural_club_room_4.jpg" method="lightSpeedIn"]
[ptext name="chara_name_area" layer=message0 width="200" color=white x=100 y=445 size=30]
[chara_config ptext="chara_name_area"]
[eval exp="$('.chara_name_area').css('pointer-events','none')"]

[cm]
起きるとあたりはすっかり暗くなっていた。[l][r]
「そりゃ誰もいないよな。」[l][r]
さて、どうするか...[l][r]
[cm]

[link target=*tag_S81] →星を眺めに屋上へ行く。[endlink][r]
[link target=*tag_S73] →このまま残り、寝る。[endlink][r]
[s]

*tag_S81
[position layer=message0 width=1080 height=190 top=482 left=100 ]
[bg time="2000" bg storage="_school_rooftop_3.jpg" method="fadeIn"]
[ptext name="chara_name_area" layer=message0 width="200" color=white x=100 y=445 size=30]
[chara_config ptext="chara_name_area"]
[eval exp="$('.chara_name_area').css('pointer-events','none')"]
[cm]
おや。[l]どうやら先駆者がいたようだ。[l][r]
[cm]
[chara_show name="garoa"]
#garoa
遅いよ。[l][r]
もう始めてしまうところだった。[l][r]
私が君に勝ったという[l]、"祝砲"を[l][r]
[cm]
#garoa:syani
#garoa:nihil
君は気付いたんだね。[l][r]
私の[l]意図n[r]
[cm]

#
「なぜそこに彼女がいる...!」[l][r]
[cm]
[chara_show name="stf"]
なぜ彼女がここにいる。[l][r]
彼女が他の男に[l]
拘束されているこの状況だけで[l][r]
俺を怒らせるには十分だった。[l][r]
[cm]

#garoa:syani
愚問だろう。[l][r]
これは勝者を明らかにするための舞台装置さ。[l][r]
私が君を乗り越えたとき！[l][r]
[cm]
#garoa:kakusei
この女は殺す![l][r]
[chara_hide name="stf" ]

#
[cm]
「もう[l]喋らなくていいよ。お前。」[l][r]
お前の名前も、[l]動機も[l]、道理も[l][r]
「全て必要ない。」[l][r]
[cm]

#garoa:kakusei
そうさ。[l][r]
我々の間に[l]、言葉は不要なんだよ。[l][r]
始めようか。[l]
女をかけた、このつまらない決闘を！！！！[l][r]
[cm]
[jump target=*tag_L1]


*tag_S9
[position layer=message0 width=1080 height=190 top=482 left=100 ]
[bg time="2000" bg storage="_school_rooftop_2.jpg" method="fadeIn"]
[ptext name="chara_name_area" layer=message0 width="200" color=white x=100 y=445 size=30]
[chara_config ptext="chara_name_area"]
[eval exp="$('.chara_name_area').css('pointer-events','none')"]
[cm]
おや。[l]どうやら先駆者がいたようだ。[l][r]
[cm]
[chara_show name="garoa"]
#garoa
流石だ。[l][r]
そうでなくては、挑戦にならない。[l][r]
私から"女神"を奪った君への[l]、"挑戦"に[l][r]
[cm]
#garoa:syani
#garoa:nihil
一つゲームをしようじゃないか。[l][r]
君が勝てば、[l]私は消えよう。[l][r]
[cm]

#
こいつは一体なにを言っているのか。[l][r]
そもそも誰なんだ、この男は。[l]いや、問題はそこじゃない。[l]
[cm]
「なぜそこに彼女がいる...!」[l][r]
[cm]
[chara_show name="stf"]
なぜ彼女がここにいる。[l][r]
彼女が他の男に[l]
拘束されているこの状況だけで[l][r]
この男と戦う動機としては十分だった。[l][r]
[cm]

#garoa:syani
それは愚問だろう。[l][r]
これは勝者を明らかにするための舞台装置さ。[l][r]
私が君を乗り越えたとき！[l][r]
[cm]
#garoa:kakusei
この女は殺す！[l][r]
[chara_hide name="stf" ]

#
[cm]
「もう喋らなくていいよ。お前。」[l][r]
お前の名前も、[l]動機も[l]、道理も[l][r]
「全て必要ない。」[l][r]
[cm]

#garoa:kakusei
そうかね？[l][r]
では始めよう！[l]
女をかけた、このつまらない戦いを！！！！[l][r]
[cm]
[jump target=*tag_L2]

*tag_L1
[position layer=message0 width=1080 height=190 top=482 left=100 ]
[bg time="2000" bg storage="_school_rooftop_3.jpg" method="fadeIn"]
[ptext name="chara_name_area" layer=message0 width="200" color=white x=100 y=445 size=30]
[chara_config ptext="chara_name_area"]
[eval exp="$('.chara_name_area').css('pointer-events','none')"]
[cm]

#garoa:kakusei
    
Q.　πの近似値として最も精度が高いのはどれだい？[l][r]
[cm]

[locate x=100 y=100]
[button graphic="Q1_batu1.png" target=*tag_dead]

[locate x=400 y=100]
[button graphic="Q1_batu2.png" target=*tag_dead]

[locate x=700 y=100]
[button graphic="Q1_batu3.png" target=*go1]
[s]


*go1
[cm]
#garoa:kakusei

Q.　体K=Q(\sqrt(2))について。Q上のガロア群G=Gal(K/Q)はどの群と同型？[l][r]

[link target=*true_end1] →C2(位数2の巡回群)。[endlink][r]
[link target=*tag_dead] →C3(位数4の巡回群)。[endlink][r]
[link target=*tag_dead] →C4(位数4の巡回群)。[endlink][r]
[s]

*tag_L2
[position layer=message0 width=1080 height=190 top=482 left=100 ]
[bg time="2000" bg storage="_school_rooftop_2.jpg" method="fadeIn"]
[ptext name="chara_name_area" layer=message0 width="200" color=white x=100 y=445 size=30]
[chara_config ptext="chara_name_area"]
[eval exp="$('.chara_name_area').css('pointer-events','none')"]
[cm]

#garoa:kakusei
    
Q.　πの近似値として最も精度が高いのはどれだい？[l][r]
[cm]

[locate x=100 y=100]
[button graphic="Q1_batu1.png" target=*tag_dead]

[locate x=400 y=100]
[button graphic="Q1_batu2.png" target=*tag_dead]

[locate x=700 y=100]
[button graphic="Q1_batu3.png" target=*go2]
[s]

*go2
[cm]
#garoa:kakusei

Q.　体L=Q(\sqrt【3】{2})について。ガロア群G=Gal(L/Q)の位数は？[l][r]

[link target=*true_end2] →1[endlink][r]
[link target=*tag_dead] →2[endlink][r]
[link target=*tag_dead] →3[endlink][r]
[s]


*tag_dead
[cm]
[chara_hide name="garoa" ]
[freeimage layer="base"]
#
失敗だ、女神様。[l][r]
[chara_show name="stf"]
[chara_hide name="stf" ]
[cm]
【DEAD END】[l]

[jump target=*start]


*true_end2
#garoa:nihil
[cm]
私の負けだ。[l][r]
どうやら私の授かった"真理"も、後世に受け継がれていたらしい。[l][r]
[cm]

#
「授かった[l]、だと？」[l][r]
何を言っている。[l]まさかこいつも俺と同じ祝福を受けているのか？[l][r]
[cm]

#
「お前は一体[l]何者なんだ。」[l][r]
[cm]

#garoa
私はエコー。[l][r]
君が生まれるずっと前に、数の真理を目指したものの残響。[l][r]
道半ばで敗れたことへの未練...[l][r]

[cm]
#garoa:nihil
[chara_hide name="garoa" ]
君は、[l]抗えよ。運命に。[l][r]
[cm]

#
.....[l]
あいつが消えるのと同時に、突如意識が朦朧とする。[l][r]
しかし...[l]まだ気を失うわけにはいかない。[l][r]
彼女のもとにいかなければ...[l][r]
[cm]

[chara_show name="stf"]
[cm]

#stf
必要ないわ。[l][r]
テストは終了したもの。[l][r]
[cm]

#stf:megami
[font shadow="0xFF0000"]あのときは失敗してしまったけれど。[l][r][resetfont]
もう器を壊すようなことはしないわ。[l][r]
[cm]

[freeimage layer="base"]
それじゃあ、今後とも宜しく。[l][r]
『***』[l][r]
いえ、[l]
"数学の魔術師さん。"[l][r]
[chara_hide name="stf" ]
[cm]
#
【END】[l][r]

[jump target=*start]


*true_end1
#garoa:nihil
[cm]
私の負けだ。[l][r]
どうやら私の授かった"真理"も、後世に受け継がれていたらしい。[l][r]
[cm]

#
「授かった[l]、だと？」[l][r]
何を言っている。[l]まさかこいつも俺と同じ祝福を受けているのか？[l][r]
[cm]

#
「お前は一体[l]何者なんだ。」[l][r]
[cm]

#garoa
私はエコー。[l][r]
君が生まれるずっと前に、数の真理を目指したものの残響。[l][r]
道半ばで敗れたことへの未練...[l][r]

[cm]
#garoa:nihil
[chara_hide name="garoa" ]
夢の世界で、[l]また会おう。[l][r]
[cm]

#
.....[l]
あいつが消えるのと同時に、突如意識が朦朧とする。[l][r]

[chara_show name="stf"]
[cm]

#stf
面白いショーだったわ。[l][r]
あなたはやはり優秀な器。[l][r]
半世紀待っただけのことはあるわね。[l][r]
[cm]

#stf:megami
それじゃあ、今後とも宜しく。[l][r]
『***』[l][r]
[freeimage layer="base"]
いえ、[l]
"数学の魔術師さん。"[l][r]
[chara_hide name="stf" ]
#
[cm]
【END】[l][r]

[jump target=*start]




