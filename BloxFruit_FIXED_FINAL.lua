--[[
================================================================================
  BLOX FRUITS SCRIPT - FULLY DEOBFUSCATED
  Original size: 414,738 bytes (1 line)
  Deobfuscated : 1029635 bytes, 14223 lines
================================================================================
OBFUSCATION LAYERS (all resolved):
  [1] ASCII85 string encoding  - 2334 strings decoded (100%)
  [2] String table shuffling   - 3-pass reversal reversed
  [3] j(N) index lookups       - 6,915 calls replaced with literals
  [4] Single-char variables    - Renamed where identifiable
REMAINING OBFUSCATION (requires runtime analysis):
  [5] State machine control flow - Binary search tree over ~16M states
      The state variable (P) jumps between numeric states via assignments.
      This is deeply nested: if P<8282351 then if P<4143772 then ...
      Full de-flattening requires symbolic execution or runtime tracing.
FEATURES IDENTIFIED (from string analysis):
  AUTO FARM       : Auto Farm, Auto Second/Third Sea Quest, Auto Boss
  TELEPORT        : Teleport to Islands, Teleport to NPCs, CFrame teleport
  ESP             : Player ESP, Chest ESP, Island ESP, NPC ESP
  AUTO QUEST      : Bartilo Quest, Accept/Abandon Quest, Auto Bones/Cakes
  RACE            : Auto Race Evolve V2/V3/V4, Auto Cyborg/Ghoul Race
  FRUIT           : Auto Roll Fruit, Auto Store/Unstore, Auto Collect
  MASTERY         : Auto Mastery Swords, Auto Sword Mastery
  RAIDS           : Auto Law/Pirate/Factory Raid, Auto Complete Raid
  MISC            : Auto Fishing, Auto Sail, Auto Pray, No Fog, Auto Hop
VARIABLE LEGEND (state machine variables):
  P  = state (the main state machine counter)
  U  = global lookup table (game modules, services, etc.)
  B  = upvalue array (closure arguments: B[1]=arg1, B[2]=arg2, ...)
  n  = assert / data store (n[key]=value for closures)
  k  = config table (k[1]=setting values)
  S  = unpack function
  I  = string.gsub (used for table unpacking in closures)
NOTE: This script is a Roblox exploit script for Blox Fruits.
      Running it may result in account bans.
================================================================================
--]]
local function j(j)
return U[j-54247]
end
for j,P in ipairs({{1 do
2334}, {1
153}, {154,2334}})do
    while P[1]<P[2]do do
        U[P[1]],U[P[2]],P[1],P[2]=U[P[2]],U[P[1]],P[1]+1,P[2]-1
    end
end
do
    local j=U
    local P={}
    local function I(U)
    local j={}
    local P=1
    local I=#U
    while P<=I do
        local k=string.sub(U,P,P)
        if k=="z"then then
            table.insert(j,string.char(0,0,0,0))P=P+1
        elseif k:match("%s")then
            P=P+1
        else
            local k={}
            local B=0
            while B<5 and P+B<=I do
                local j=string.sub(U,P+B,P+B)
                if j=="z"or j==" "or j=="\n"or j=="\r"then then
                    break
                end
                k[#k+1]=j B=B+1
            end
local c=#k
            for U=c+1,5,1 do
                k[#k+1]="u"
            end
local s=0
            for U=1,5,1 do
                s=s*85+(string.byte(k[U])-33)
            end
local X=c-1
            for U=3,3-(X-1),-1 do
                local P=math.floor(s/256^U)%256 table.insert(j,string.char(P))
            end
            P=P+c
        end
end
    return table.concat(j)
end
for U=1,#j,1 do
    local P=j[U]
    if type(P)=="string"then then
        j[U]=I(P)
    end
end
end
return(
function(U,I,k,B,c,s,X,d,m,Y,b,A,E,r,f,T,S,l,F,p,Z,W,P,w,n)Z,r,A,m,d,b,T,w,l,E,Y,S,P,F,f,p,n,W=
function(U,j)
local I=E(j)
local k=
function(k,B,c,s,X,n)
return P(U,{k,B
c
s,X
n},j,I)
end
return k
end
,{},
function(U,j)
local I=E(j)
local k=
function(k,B,c,s,X)
return P(U,{k,B,c,s,X},j,I)
end
return k
end
,
function(U)
local j,P=1,U[1]
while P do
    r[P],j=r[P]-1,1+j
    if r[P]==0 then
        r[P],n[P]=nil,nil
    end
    P=U[j]
end
end
,0,
function(U,j)
local I=E(j)
local k=
function(k)
return P(U,{k},j,I)
end
return k
end
,
function(U,j)
local I=E(j)
local k=
function(...)
return P(U,{...},j,I)
end
return k
end
,
function(U,j)
local I=E(j)
local k=
function(k,B,c)
return P(U,{k,B
c},j,I)
end
return k
end
,
function(U)r[U]=r[U]-1
if 0==r[U]then then
    r[U],n[U]=nil,nil
end
end
,
function(U)
for j=1,#U,1 do
    r[U[j]]=1+r[U[j]]
end
if k then
    local P=k(true)
    local I=c(P)I["__index"],I["__gc"],I["__len"]=U,m,
    function()
    return-2669351
end
return P
else
    return B({},{["__gc"]=m,["__index"]=U,["__len"]=
    function()
    return-2669351
end
})
end
end
,
function(U,j)
local I=E(j)
local k=
function(k,B,c,s)
return P(U,{k,B,c,s},j,I)
end
return k
end
,
function()d=d+1 r[d]=1
return d
end
,
function(P,k,B,c)
local Ad={}
local X,z,cd,t,nd,K,N,Xd,e,d,kd,ld,Id,jd,Td,G,M,L,Ed,Sd,o,Yd,H,q,rd,a,D,Pd,Bd,dd,h,r,i,g,x,y,u,Ud,md,m,Q,v,E,C,J,sd,bd,R,V,O
while P do
    if P<8282351 then
        if P<4143772 then
            if P<2156735 then
                if P<1099324 then
                    if P<588020 then
                        if P<345072 then
                            if P<175078 then
                                if P<116379 then
                                    if P<84946 then
                                        if P<38958 then
                                            if P<8126 then
                                                if P<6030 then
                                                    K="Health"P=6482801 g=O[K]K=0 h=g>K v=h
                                                else
                                                    P=1846976 d=n[B[2]]m="n"E=U[m]r=d==E X=r
                                                end
                                            elseif P<18201 then
                                                    d="Dressrosa"r=n[B[1]]X=r[d]d=8 E=d r="BartiloPlates"P=X[r]d=1 X=1 m=d d=0 N=m<d d=X-m r=P P=4069340
                                                else
                                                    X={}P=U["ovECZjZyHCJen"]
                                                end
end
                                        elseif P<71078 then
                                                if P<47612 then
                                                    r="task"X=U[r]r="wait"P=X[r]r=.5 X=P(r)X=1 r=2 d=r r=1 E=r r=0 m=E<r r=X-E P=5281021
                                                else
                                                    H,o=G(Q,H)P=H and 15654935 or 6652714
                                                end
                                            else
                                                H=n[B[3]]m=P O="Flower1"Q=H[O]H="Transparency"G=Q[H]Q=1 N=G~=Q E=N P=N and 3808044 or 11687574
                                            end
end
                                    elseif P<97446 then
                                            if P<89905 then
                                                if P<86921 then
                                                    X="FireInvoke"P=U[X]r="ArenaTrainer"X={P(r)}X={I(X)}P=U["rIUbaJHZxlc3iQ"]
                                                else
                                                    H="_WorldOrigin"Q=n[B[5]]G=Q[H]Q="Locations"P=4170560 N=G[Q]Q="Prehistoric Island"G="FindFirstChild"G=N[G]G=G(N,Q)m=G
                                                end
                                            elseif P<95054 then
                                                    P=15912610
                                                else
                                                    N="Character"m=n[B[3]]E=m[N]m="Humanoid"d=E[m]E="Sit"X=d[E]P=not X P=P and 14192469 or 6647663
                                                end
end
                                        elseif P<114282 then
                                                if P<109181 then
                                                    r="Handle"X=n[B[2]]P=X[r]d="FindFirstChild"r=S()E="ESPquantumONYX"n[r]=P X=n[r]d=X[d]d=d(X,E)P=not d P=P and 1745286 or 999614
                                                else
                                                    r="task"X=U[r]r="wait"E="Character"P=X[r]X=P()d=n[B[2]]r=d[E]P=r and 14217496 or 11642805 X=r
                                                end
                                            else
                                                o=n[B[3]]v="RefreshDesc"v=o[v]g="\n"X={}h=g..H m=nil H=nil E=nil d=nil i=N..h N=nil r=nil v=v(o,i)P=U["V0kww0LQc5XR"]
                                            end
end
                                    end
                                elseif P<151296 then
                                        if P<139621 then
                                            if P<121339 then
                                                if P<117352 then
                                                    N=P Q="Ability"G=d==Q m=G P=G and 790603 or 9329064
                                                else
                                                    r=k[1]X=0 P=r<=X P=P and 14504415 or 4046307
                                                end
                                            elseif P<137622 then
                                                    P=14871190
                                                else
                                                    E="Disconnect"d=n[B[3]]E=d[E]P=10846260 E=E(d)d=nil n[B[3]]=d
                                                end
end
                                        elseif P<145221 then
                                                if P<142348 then
                                                    o="tostring"O=U[o]g="Data"h=G[g]g="Race"i=h[g]P=4797235 h="Value"v=i[h]o=O(v)O="Skypiea"H=o==O X=H
                                                else
                                                    r=nil X={}P=U["UtsfhTDziR4MWx"]
                                                end
                                            else
                                                r=k[1]d=r r=nil X="ESPPlayer"P=n[B[1]]P[X]=d X="PlayerESP"P=U[X]X=P()P=U["881hvKbpsxOUPf"]X={}
                                            end
end
                                    elseif P<160681 then
                                            if P<158381 then
                                                if P<156178 then
                                                    r="Temple of Time"X=n[B[2]]P=X[r]X="Parent"r=n[B[3]]P[X]=r P=10548846
                                                else
                                                    X="IslandESP"P=U[X]X=P()P=10442776
                                                end
                                            else
                                                E,G=m(d,E)P=E and 9019896 or 1667922
                                            end
                                        elseif P<165984 then
                                                if P<161947 then
                                                    X="Level 1"E="CFrame"Q=-822.858 o=30.2187 d=U[E]E="new"v=-2560.1201 m=30.0006 r=d[E]O=-2256.9377 E=-21998.375 N=-682.309 d=r(E,m,N)K=-1244.8584 g=30.0003 r="Level 2"N="CFrame"i=30.0004 m=U[N]H=30.0001 N="new"E=m[N]N=-26779.5215 G=30.0005 m=E(N,G,Q)Q="CFrame"G=U[Q]Q="new"E="Level 3"h=-2162.9902 N=G[Q]Q=-31171.957 G=N(Q,H,O)N="Level 4"O="CFrame"a=37016.25 H=U[O]O="new"Q=H[O]O=-34054.6875 H=Q(O,o,v)Q="Level 5"v="CFrame"o=U[v]v="new"O=o[v]v=-38887.5547 L=31 o=O(v,i,h)O="Level 6"h="CFrame"i=U[h]h="new"v=i[h]h=-44541.7617 i=v(h,g,K)K="CFrame"g=U[K]v="Infinite"K="new"h=g[K]K=-10000000 g=h(K,L,a)P={[X]=d,[r]=m,[E]=G,[N]=H,[Q]=o,[O]=i
                                                    [v]=g}N="SeaLevelSelected"r=P m=n[B[1]]E=m[N]d=r[E]X=d P=d and 12128892 or 14879972
                                                else
                                                    P=6270429
                                                end
                                            else
                                                P=U["BxwEObIO5mEO"]X={}
                                            end
end
                                    end
end
                            elseif P<260618 then
                                    if P<242285 then
                                        if P<219614 then
                                            if P<196773 then
                                                if P<179552 then
                                                    P=10183176
                                                else
                                                    X="FireInvoke"d="Marines"P=U[X]r="SetTeam"X=P(r,d)P=U["KANzhYD2iIYgEf"]X={}
                                                end
                                            elseif P<212332 then
                                                    o="Humanoid"O="FindFirstChild"H=P O=N[O]O=O(N,o)P=O and 13333199 or 2223059 Q=O
                                                else
                                                    P=U["TxZ1GmCYynmr"]r=nil X={}E=nil d=nil
                                                end
end
                                        elseif P<236312 then
                                                if P<230356 then
                                                    P=d P=11673266 X=r
                                                else
                                                    X=n[B[2]]r="FindFirstChild"d="ESPquantumONYX"r=X[r]r=r(X,d)P=not r P=P and 1323960 or 867074
                                                end
                                            else
                                                r=nil d=nil P=10103485 E=nil
                                            end
end
                                    elseif P<251813 then
                                            if P<250295 then
                                                if P<247400 then
                                                    m="tostring"X="tonumber"P=U[X]r=n[B[3]]E=U[m]H="pcall"O=Y(13489284,{B[1]})Q=U[H]H={Q(O)}Q=2 G={I(H)}N=G[Q]m=E(N)E=":(%d*):"d=r(m,E)r={d()}X=P(I(r))d=n[B[4]]P=d and 7396307 or 11142296 r=X X=d
                                                else
                                                    P=14555274 m=nil
                                                end
                                            else
                                                Ad[45]="FindFirstChild"Ad[44]=n[o]P=1792263 Ad[46]="Data"Ad[45]=Ad[44][Ad[45]]Ad[45]=Ad[45](Ad[44],Ad[46])Ad[42]=Ad[45]
                                            end
                                        elseif P<260067 then
                                                if P<256411 then
                                                    E=nil X={}m=nil d=nil P=U["TI6oF7P7o3dPC"]r=nil
                                                else
                                                    X=n[B[3]]P=2292153 E=n[r]m=1 X[E]=m
                                                end
                                            else
                                                P=U["ngmooLQ9eNpwJ"]X={}
                                            end
end
                                    end
                                elseif P<305142 then
                                        if P<285996 then
                                            if P<273481 then
                                                if P<263431 then
                                                    X="pcall"P=U[X]r=Y(1067485,{B[1],B[2]
                                                    B[3]})X=P(r)P=3821003
                                                else
                                                    P=11222355
                                                end
                                            elseif P<275977 then
                                                    g="UpperTorso"h="HumanoidRootPart"i="FindFirstChild"i=v[i]i=i(v,h)P=i and 5927032 or 7599316 h="FindFirstChild"h=v[h]h=h(v,g)
                                                else
                                                    P=U["YROoF6zspNpyy7"]X={}
                                                end
end
                                        elseif P<304334 then
                                                if P<294227 then
                                                    X="UnstoreBadFruit"P=n[B[1]]r=k[1]d=r P[X]=d r=nil P=U["RjB1hqKLapzc"]X={}
                                                else
                                                    P=U["YmjFYnASnDiibz"]r=nil X={}
                                                end
                                            else
                                                N=N+Q X=N<=G O=not H X=O and X O=N>=G O=H and O X=O or X O=15982304 P=X and O X=3293353 P=P or X
                                            end
end
                                    elseif P<319372 then
                                            if P<318596 then
                                                if P<310006 then
                                                    X={}P=U["zbeVLSAsxV1U"]
                                                else
                                                    P=true X={P}P=U["uTJwPPvUHHVwnb"]
                                                end
                                            else
                                                Ad[8]=P Ad[11]="package"Ad[10]=U[Ad[11]]Ad[9]=Ad[10]~=M P=Ad[9]and 16123599 or 9368624 Ad[7]=Ad[9]
                                            end
                                        elseif P<340280 then
                                                if P<326941 then
                                                    r=E P=m P=11329824
                                                else
                                                    X="FireInvoke"P=U[X]r="IndraTalk"X=P(r)r=X X="FireInvoke"P=U[X]m=3 d="RobotTalk"X=P(d)d=X E=d==m X=E P=E and 2790398 or 10053556
                                                end
                                            else
                                                i,h=o(v,i)P=i and 3914372 or 11910321
                                            end
end
                                    end
end
                            end
                        elseif P<489465 then
                                if P<433926 then
                                    if P<383908 then
                                        if P<377875 then
                                            if P<356758 then
                                                if P<347581 then
                                                    G=-86 N=15069 m="Vector3"r="GetDistance"X=U[r]E=U[m]m="new"d=E[m]m=29552 E={d(m,N,G)}r=X(I(E))X=2000 P=r>X P=P and 15068108 or 10166386
                                                else
                                                    H="FindFirstChild"O="Humanoid"N=E H=G[H]H=H(G,O)P=H and 8609008 or 7697163 Q=H
                                                end
                                            elseif P<374460 then
                                                    H=not Q m=m+G X=m<=N X=H and X H=m>=N H=Q and H X=H or X H=10463436 P=X and H X=587172 P=P or X
                                                else
                                                    P=n[B[1]]X="WalkSpeed"r=k[1]d=r P[X]=d X=n[B[1]]d="WalkSpeed"P=X[d]P=P and 14973974 or 648818
                                                end
end
                                        elseif P<383752 then
                                                if P<381701 then
                                                    N="CFrame"G=84 P=n[B[6]]Q=-12397 m=U[N]N="new"E=m[N]N=-2168 m={E(N,G,Q)}X={P(I(m))}P=U["aN2W4CzvTOOrR5"]X={I(X)}
                                                else
                                                    P=Q and 8907331 or 8956965
                                                end
                                            else
                                                P=n[B[2]]r="Cursed Captain"X=P(r)r=X P=r and 14878986 or 3711963
                                            end
end
                                    elseif P<425325 then
                                            if P<410944 then
                                                if P<390263 then
                                                    d=n[B[1]]E="Character"P=7299373 r=d[E]E="Tool"d="FindFirstChildOfClass"d=r[d]d=d(r,E)X=d
                                                else
                                                    d=nil P=U["dxVJxb96VXrO"]X={}r=nil
                                                end
                                            elseif P<420718 then
                                                    P=n[B[4]]E="CFrame"d=U[E]E="new"N=-5923 m=329 r=d[E]E=-5533 d={r(E,m,N)}X=P(I(d))P=9102070
                                                else
                                                    X="pcall"r=p(1944104,{B[1]})P=U[X]X=P(r)P=4613048
                                                end
end
                                        elseif P<431412 then
                                                if P<425865 then
                                                    h=6 H=n[B[3]]i="Vector3"v=U[i]g=6039 i="new"O="DistanceFromCharacter"o=v[i]i=-9529 v={o(i,h,g)}O=H[O]O=O(H,I(v))H=10 Q=O>H P=Q and 12326389 or 15672513
                                                else
                                                    P=7167775
                                                end
                                            else
                                                v,i=O(o,v)P=v and 9896447 or 10783285
                                            end
end
                                    end
                                elseif P<464312 then
                                        if P<444688 then
                                            if P<437495 then
                                                if P<435160 then
                                                    H="Model"Q="IsA"m=d Q=N[Q]Q=Q(N,H)G=Q P=Q and 5694787 or 6631673
                                                else
                                                    h=1 G="Character"N=n[B[1]]m=N[G]N="HumanoidRootPart"i=4.62103383e-010 K=.668973804 G="CFrame"o=-4.82822775e-011 E=m[N]m="Position"d=E[m]N=U[G]G="new"a=-0.743286014 m=N[G]Q=4.92147732 v=-0.668973804 g=-5.85609283e-010 G=1112.46521 L=-7.444102e-010 O=-0.743286014 H=4364.55469 N=m(G,Q,H,O,o,v,i,h,g,K,L,a)m="Position"E=N[m]r=d-E d="Magnitude"X=r[d]r=5 P=X<r P=P and 15199639 or 15296194
                                                end
                                            elseif P<442982 then
                                                    h="Vector3"P=3115866 K=9832 O=n[B[6]]i=U[h]o="DistanceFromCharacter"h="new"v=i[h]g=-2154 h=11517 i={v(h,g,K)}o=O[o]o=o(O,I(i))O=2000 H=o<=O G=H
                                                else
                                                    P=U["81mJ2qx62WujzH"]X={}
                                                end
end
                                        elseif P<459264 then
                                                if P<451149 then
                                                    X=m P=N P=15757636
                                                else
                                                    P=n[B[3]]d=true X=P(r,d)P=8652569
                                                end
                                            else
                                                P=nil X={P}P=U["MqgasPSec7WsQ"]
                                            end
end
                                    elseif P<477364 then
                                            if P<473373 then
                                                if P<465734 then
                                                    r=n[B[1]]d="Effect"X=r[d]r="Container"P=X[r]X="require"N="Util"G="FindFirstChild"r=P P=U[X]m=n[B[1]]E=m[N]m="CameraShaker"d=E[m]X=P(d)N="FindFirstChild"d=X G=r[G]X="require"P=U[X]N=r[N]m="Death"E={N(r,m)}X=P(I(E))E=X X="require"P=U[X]N="Respawn"m={G(r,N)}Q="FindFirstChild"X=P(I(m))O="GuideModule"m=X G="LevelUp"X="require"P=U[X]Q=r[Q]N={Q(r,G)}o="FindFirstChild"X=P(I(N))G="require"N=X X=U[G]Q=n[B[1]]o=Q[o]H={o(Q,O)}G=X(I(H))X="ChangeDisplayedNPC"Q=A(3210136,{})P=G[X]G=P X="hookfunction"P=U[X]X=P(E,Q)X="hookfunction"P=U[X]Q=b(2263627,{})X=P(N,Q)X="hookfunction"r=nil Q=Y(9694562,{})P=U[X]X=P(m,Q)Q=Y(15414180,{})X="hookfunction"N=nil P=U[X]X=P(G,Q)P="Stop"P=d[P]P=P(d)d=nil m=nil X={}E=nil G=nil P=U["TY3tSxYyddmK6"]
                                                else
                                                    m="FindFirstChild"d=P E=n[B[3]]m=E[m]N="Flower2"m=m(E,N)X=m P=m and 14196157 or 6585803
                                                end
                                            else
                                                N=n[B[1]]G="Character"m=N[G]N="HumanoidRootPart"E=m[N]Q=-1390.6892089844 m="Position"d=E[m]N="Vector3"m=U[N]N="new"E=m[N]N=1457.8768310547 G=88.377502441406 m=E(N,G,Q)r=d-m d="Magnitude"X=r[d]r=8 P=X>r P=P and 3047201 or 2796473
                                            end
                                        elseif P<486096 then
                                                if P<480480 then
                                                    r=P E=n[B[1]]m="Character"d=E[m]X=d P=d and 2552782 or 6583007
                                                else
                                                    H=P h="TweenSpeed"o="tonumber"O=U[o]i=n[B[6]]v=i[h]o=O(v)O=250 Q=o or O O=.1 H=Q<O P=H and 10704475 or 5353959
                                                end
                                            else
                                                d=nil P=3376459
                                            end
end
                                    end
end
                            elseif P<531713 then
                                    if P<513177 then
                                        if P<499759 then
                                            if P<494750 then
                                                if P<490387 then
                                                    P=5316616
                                                else
                                                    C="BasePart"a="IsA"K=h a=L[a]a=a(L,C)P=a and 16710736 or 10377385
                                                end
                                            elseif P<495201 then
                                                    P=n[B[1]]m="_G"E=U[m]m={P(E)}r=m[2]P=680431 d=m[3]X=m[1]E=X
                                                else
                                                    h="table"i=U[h]h="insert"P=i[h]i=P(m,O)P=8884716
                                                end
end
                                        elseif P<507906 then
                                                if P<502982 then
                                                    Q=nil N=nil H=nil X={}m=nil E=nil P=U["6ZpNaIRHpi8d8y"]r=nil G=nil d=nil
                                                else
                                                    P=5561588 v=nil o=nil
                                                end
                                            else
                                                P="EquipTool"X=d[r]P=m[P]P=P(m,X)P=13898198
                                            end
end
                                    elseif P<522392 then
                                            if P<521288 then
                                                if P<517650 then
                                                    o="tostring"H="Next Roll: "G=n[B[1]]O=U[o]o=O(r)P=3493184 Q=H..o X=G..Q N=X
                                                else
                                                    o="Cooldown"O=r[o]P=5796633 o="Value"H=O[o]G=H
                                                end
                                            else
                                                P=16053851
                                            end
                                        elseif P<528760 then
                                                if P<528414 then
                                                    m="FindFirstChild"N="Humanoid"m=E[m]m=m(E,N)X=m P=3608586
                                                else
                                                    X={}P=U["P0MUawML9PTud"]
                                                end
                                            else
                                                N="Stop"m=n[B[2]]d=P E=m[N]r=E P=E and 5041196 or 3207133
                                            end
end
                                    end
                                elseif P<564752 then
                                        if P<546598 then
                                            if P<541995 then
                                                if P<537620 then
                                                    X={}P=U["hWyXeqEm6lvZFl"]
                                                else
                                                    G=n[r]N=#G P=12744164 G=32 m=N<G X=m
                                                end
                                            elseif P<542956 then
                                                    a="Temple of Time"L=n[B[3]]K=L[a]a="Corridor"L=H..a g=K[L]K="Door"h=g[K]g="RightDoor"i=h[g]P=5804062 h="Union"v=i[h]o=v
                                                else
                                                    r=k[1]d=r X="Water"P=n[B[1]]P[X]=d d="task"X=U[d]d="spawn"P=X[d]d=W(1381709,{B[2],B[1]})X=P(d)P=U["UTQyushel44gv"]r=nil X={}
                                                end
end
                                        elseif P<555672 then
                                                if P<551654 then
                                                    X=n[B[1]]r="AutoBuyEnchancementColor"P=X[r]P=P and 40570 or 7381518
                                                else
                                                    P=12923807
                                                end
                                            else
                                                P=12393434
                                            end
end
                                    elseif P<576177 then
                                            if P<571409 then
                                                if P<566719 then
                                                    X="AutoFactoryRaid"P=U[X]X=P()P=5093437
                                                else
                                                    P=H and 8218017 or 14269216
                                                end
                                            else
                                                H,v=O(Q,H)P=H and 7696630 or 1799274
                                            end
                                        elseif P<586622 then
                                                if P<584006 then
                                                    P=2236230
                                                else
                                                    r=nil P=U["y6SqB4A6YHyEF"]X={}
                                                end
                                            else
                                                m="table"X=U[m]m="concat"P=X[m]X={P(E)}X={I(X)}P=U["U38EIzb1xl0odI"]
                                            end
end
                                    end
end
                            end
end
                    elseif P<838350 then
                            if P<682419 then
                                if P<641227 then
                                    if P<613499 then
                                        if P<604571 then
                                            if P<596543 then
                                                if P<591865 then
                                                    O="Mobs"H=n[B[1]]Q=H[O]H="Venomous Assailant"P=9382963 G=Q==H m=G
                                                else
                                                    P=4452047
                                                end
                                            elseif P<601621 then
                                                    P=n[B[1]]X="TrainMethod"r=k[1]d=r r=nil P[X]=d X={}P=U["WZo6dVGNz8jK"]
                                                else
                                                    X="AutoFarmObservation"P=U[X]X=P()P=13897209
                                                end
end
                                        elseif P<609828 then
                                                if P<607006 then
                                                    Ad[37]="Radioactive Material"Ad[36]="Leather + Scrap Metal"Ad[39]="Mystic Droplet"Ad[41]="Vampire Fang"Ad[40]="Magma Ore"P=12278038 Ad[38]="Ectoplasm"Ad[35]={Ad[36]
                                                    Ad[37],Ad[38]
                                                    Ad[39]
                                                    Ad[40],Ad[41]}Ad[33]=Ad[35]
                                                else
                                                    Ad[103]={}Ad[105]="next"Ad[106]=nil Ad[104]=U[Ad[105]]P=15783723 Ad[105]=n[Ad[99]]
                                                end
                                            else
                                                X=n[B[1]]r="Character"P=X[r]r=P X="next"E="GetChildren"P=U[X]E=r[E]E={E(r)}X=E[1]m=X d=E[2]E=P P=2461733
                                            end
end
                                    elseif P<632991 then
                                            if P<629254 then
                                                if P<622305 then
                                                    P=""X={P}P=U["korgKGvjHVrn"]
                                                else
                                                    P=n[B[3]]X={P(r)}X={I(X)}P=U["V2K63pg3HMbGu"]
                                                end
                                            elseif P<630966 then
                                                    r=nil X={}P=U["tV82WcPwKJiUC"]
                                                else
                                                    d="AutoChest"X=U[d]P=13921826 d=X()
                                                end
end
                                        elseif P<641054 then
                                                if P<640631 then
                                                    O=Q P=Q and 11837942 or 6226668
                                                else
                                                    G="MobsNextSpawn"m=U[G]H=1 Q=d[H]G={m(Q)}P=U["qeD1xJFItuAmrO"]X={I(G)}
                                                end
                                            else
                                                P=nil X={P}P=U["Tr5eKQWltc8y"]
                                            end
end
                                    end
                                elseif P<659049 then
                                        if P<648699 then
                                            if P<644047 then
                                                if P<643193 then
                                                    P=U["HlyNJIY1vI8x"]X={E}
                                                else
                                                    h="Y"P=7389186 i=H[h]v=i<E X=v
                                                end
                                            elseif P<646651 then
                                                    P=2524377
                                                else
                                                    X="AutoSwordMastery"P=U[X]X=P()P=15877272
                                                end
end
                                        elseif P<654722 then
                                                if P<651145 then
                                                    X={}r=nil P=U["ioXszKZUUwCY"]
                                                else
                                                    m="doortourch"P=n[B[3]]E=U[m]m=E()E="Button"d=m[E]E="CFrame"r=d[E]X=P(r)P=3140143
                                                end
                                            else
                                                L="/500"i=n[B[1]]g="Cake Stats: "K=G..L h=g..K G=nil v=i..h Q=nil m=v P=6026962
                                            end
end
                                    elseif P<670930 then
                                            if P<668211 then
                                                if P<663039 then
                                                    O=P Q="Name"G=N[Q]Q=n[B[1]]v=n[B[1]]o=v[G]H=o P=o and 10999112 or 4085522
                                                else
                                                    d=n[B[2]]E="CharacterAdded"r=d[E]d="Wait"d=r[d]P=8108996 d=d(r)X=d
                                                end
                                            else
                                                P=i P=v and 15317730 or 5869562
                                            end
                                        elseif P<679910 then
                                                if P<676430 then
                                                    P="Spawned Unknown Fruit"G=P P=11186075
                                                else
                                                    P=15189413
                                                end
                                            else
                                                d,N=E(r,d)P=d and 4020849 or 16449739
                                            end
end
                                    end
end
                            elseif P<761859 then
                                    if P<734904 then
                                        if P<711443 then
                                            if P<698654 then
                                                if P<697477 then
                                                    Q="Name"m=d G=N[Q]Q="Prehistoric Island"P=G==Q P=P and 4539404 or 15806108
                                                else
                                                    r=X P=r and 1694699 or 15582648
                                                end
                                            elseif P<707494 then
                                                    P=14956657
                                                else
                                                    P=nil r=P X="Bushes"P=U[X]P=P and 10510399 or 1729290
                                                end
end
                                        elseif P<730728 then
                                                if P<726831 then
                                                    N=true P=N and 15614198 or 256268
                                                else
                                                    O="tostring"m="FishingInfo"E=U[m]H=U[O]G="Rod State: "O=H(d)P=11682253 H="\nNo cast yet"m="RefreshDesc"Q=O..H N=G..Q m=E[m]m=m(E,N)
                                                end
                                            else
                                                i="Vector3"H=n[B[3]]O="DistanceFromCharacter"h=270 g=6291 O=H[O]v=U[i]i="new"o=v[i]i=-9758 v={o(i,h,g)}O=O(H,I(v))H=10 Q=O>H P=Q and 8333230 or 11506122
                                            end
end
                                    elseif P<743578 then
                                            if P<740275 then
                                                if P<737794 then
                                                    X=n[B[2]]r="GetAttribute"d="KenDodgesLeft"r=X[r]r=r(X,d)X=1 P=r>X P=P and 3450162 or 7042985
                                                else
                                                    P="CaptureController"E="Vector2"P=r[P]P=P(r)d=U[E]E="new"m=0 X=d[E]E=0 P="ClickButton1"d={X(E,m)}P=r[P]P=P(r,I(d))d="task"X=U[d]d="wait"P=X[d]d=300 X=P(d)P=13016111
                                                end
                                            else
                                                x="string"R=U[x]M="tostring"x="find"t=R[x]x=U[M]jd="Haunted Castle"u=n[B[6]]D=u[jd]u="Tablet"J=D[u]Pd=J[O]J="Line"q=Pd[J]Pd="Rotation"e=q[Pd]q="Z"z=e[q]M=x(z)R=t(M,a)y=not R P=y and 8409559 or 1994920
                                            end
                                        elseif P<757168 then
                                                if P<754232 then
                                                    d=P m="FindFirstChild"N="Handle"E=n[B[2]]m=E[m]m=m(E,N)r=m P=m and 6599771 or 10950620
                                                else
                                                    P=3915606 Pd="Transparency"q=t[Pd]Pd=0 e=q==Pd M=e
                                                end
                                            else
                                                P=n[B[4]]m=P(d)P=U["85Bwi0VecsxEoP"]X={}
                                            end
end
                                    end
                                elseif P<805268 then
                                        if P<779879 then
                                            if P<768185 then
                                                if P<765072 then
                                                    G=nil Q=nil P=11493380
                                                else
                                                    d=n[B[1]]X=d P=d and 3073191 or 1001705 r=k[1]
                                                end
                                            elseif P<775574 then
                                                    m="Handle"E="FindFirstChild"d=n[B[2]]E=d[E]E=E(d,m)X=E r=P P=E and 9788806 or 11673700
                                                else
                                                    P=nil X={P}P=U["RqyAU3o5wJ5A7"]
                                                end
end
                                        elseif P<792312 then
                                                if P<782577 then
                                                    X="Text"P=n[B[2]]r=n[B[1]]d=r()P[X]=d P=16756413
                                                else
                                                    X=m P=N P=9592227
                                                end
                                            else
                                                P=n[B[1]]X=P()P=U["vK0Cy7K4XDL5Mo"]X={}
                                            end
end
                                    elseif P<822556 then
                                            if P<812088 then
                                                if P<808968 then
                                                    P=Ad[5]n[E]=Ad[4]Ad[5]=n[E]P=Ad[5]and 4661852 or 14539670
                                                else
                                                    X={}r=nil P=U["NSWhK1RQ5jeEpy"]
                                                end
                                            else
                                                X="pcall"P=U[X]r=W(2739174,{B[1],B[2]
                                                B[3],B[4]})X=P(r)P=10075949
                                            end
                                        elseif P<832698 then
                                                if P<826912 then
                                                    E=nil m=nil P=11086727
                                                else
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 9790364 or 10336273
                                                end
                                            else
                                                m=n[B[2]]P=5666394 d=m
                                            end
end
                                    end
end
                            end
                        elseif P<981038 then
                                if P<901815 then
                                    if P<865988 then
                                        if P<856120 then
                                            if P<843084 then
                                                if P<841173 then
                                                    P=2273684
                                                else
                                                    H="GetDistance"P=1018664 Q=U[H]H=Q(E)Q=3 G=H<=Q X=G
                                                end
                                            elseif P<846588 then
                                                    h="FindFirstChild"g="IslandModel"h=Q[h]h=h(Q,g)P=h and 12640123 or 16178224
                                                else
                                                    r="task"X=U[r]r="wait"P=X[r]r=.3 d="Teleport"E="CFrame"X=P(r)r="RaceV4Progress"X="TempleTimeStash"m=14888 P=U[X]X=P()N=-120 X="FireInvoke"P=U[X]X=P(r,d)P=n[B[1]]d=U[E]E="new"r=d[E]E=28982 d={r(E,m,N)}X=P(I(d))P=16640045
                                                end
end
                                        elseif P<863858 then
                                                if P<860809 then
                                                    X="pcall"r=b(9199560,{B[1]})P=U[X]X=P(r)P=7195383
                                                else
                                                    E=X P=d and 7042622 or 9781580 X=d
                                                end
                                            else
                                                r="TravelZou"X="FireInvoke"P=U[X]X=P(r)P=177584
                                            end
end
                                    elseif P<881407 then
                                            if P<879864 then
                                                if P<868481 then
                                                    P=3770315
                                                else
                                                    X="Core"P="FindFirstChild"P=r[P]P=P(r,X)d=P P=d and 1006009 or 10417885
                                                end
                                            else
                                                Q=#d P=7356823 H=0 G=Q>H m=G
                                            end
                                        elseif P<887698 then
                                                if P<884762 then
                                                    N=nil v="Usables"Q="FireInvoke"P=14887354 o="Name"H="LoadItem"X=U[Q]O=G[o]G=nil o={v}Q=X(H,O,o)
                                                else
                                                    Q=1 P="BlastPressure"G[P]=Q P="BlastRadius"Q=1 G[P]=Q P=6858094
                                                end
                                            else
                                                P=n[B[1]]E="CFrame"d=U[E]N=-120 E="new"r=d[E]m=14888 E=28982 d={r(E,m,N)}X=P(I(d))P=16640045
                                            end
end
                                    end
                                elseif P<946818 then
                                        if P<923310 then
                                            if P<913624 then
                                                if P<904373 then
                                                    P=5923964 X=nil n[B[1]]=X
                                                else
                                                    G=nil Q=nil P=2022688
                                                end
                                            elseif P<914906 then
                                                    r=nil P=U["yuy46qwJWFq11"]X={}
                                                else
                                                    X={}P=U["qS5nljeQNp5Tvw"]
                                                end
end
                                        elseif P<944240 then
                                                if P<927162 then
                                                    P=n[B[2]]X=P(E)P=5713674
                                                else
                                                    O=true Q="FireInvoke"H="CakePrinceSpawner"G=U[Q]o="type"Q=G(H,O)G=0 O=U[o]o=O(Q)O="table"H=o==O P=H and 7309651 or 10540549
                                                end
                                            else
                                                r=k[1]X="SelectedBait"P=n[B[1]]d=r r=nil P[X]=d X={}P=U["p8E4KMag39xx0"]
                                            end
end
                                    elseif P<965839 then
                                            if P<964159 then
                                                if P<959501 then
                                                    m="CFrame"P=n[B[4]]E=U[m]N=16 G=-4997 m="new"d=E[m]m=-6300 E={d(m,N,G)}X=P(I(E))P=3864437
                                                else
                                                    X={}P=U["lrxfiERHvOTf"]
                                                end
                                            else
                                                X={}P=U["V0Dsaa1xHl1D8"]
                                            end
                                        elseif P<979463 then
                                                if P<969955 then
                                                    m="Vector3"X=n[B[1]]N=1208.327 G=884.579 r="DistanceFromCharacter"E=U[m]r=X[r]m="new"d=E[m]m=5814.427 E={d(m,N,G)}r=r(X,I(E))X=5 P=r<=X P=P and 8574239 or 14643441
                                                else
                                                    r="AutoPirateRaid"X=n[B[1]]P=X[r]P=P and 14953624 or 8031669
                                                end
                                            else
                                                G=6062.55078125 X="EquipToolName"d="Hallow Essence"P=U[X]X=P(d)N=146.83154296875 P=n[B[3]]m="CFrame"E=U[m]m="new"d=E[m]m=-8932.322265625 E={d(m,N,G)}X={P(I(E))}X={I(X)}P=U["DrhYb38DHHU3V"]
                                            end
end
                                    end
end
                            elseif P<1023539 then
                                    if P<1006313 then
                                        if P<1000726 then
                                            if P<993364 then
                                                if P<989743 then
                                                    H="ipairs"Q=U[H]v={Q(N)}P=9797022 H=v[1]O=v[2]o=v[3]
                                                else
                                                    O="Material"Q=N X=r==O P=X and 3899392 or 5049542
                                                end
                                            elseif P<997874 then
                                                    X={}P=U["ndjVQ12YbcY2S"]
                                                else
                                                    r=l(r)P=4347432
                                                end
end
                                        elseif P<1004116 then
                                                if P<1001757 then
                                                    E=n[B[1]]d=X X=E P=E and 2749416 or 16098695
                                                else
                                                    d=n[B[2]]E="Character"X=d[E]d="Humanoid"m="JumpPower"P=X[d]X="JumpPower"E=n[B[1]]d=E[m]P[X]=d P=297599
                                                end
                                            else
                                                X="SpawnedDragonEggs"P="FindFirstChild"P=d[P]P=P(d,X)d=P P=10417885
                                            end
end
                                    elseif P<1017965 then
                                            if P<1014926 then
                                                if P<1010952 then
                                                    r=W(7534532,{B[1]})X="pcall"P=U[X]X=P(r)P=U["peVGFA33ahCobe"]X={}
                                                else
                                                    P=jd V=P kd=7449423635 jd=S()n[jd]=M Id=n[D]Ud=Id==kd P=Ud and 3165526 or 12389275 M=Ud
                                                end
                                            else
                                                Ad[103]="walang kayo sorry"Ad[104]=nil Ad[102]={[Ad[103]]=Ad[104]}P=609577 n[Ad[99]]=Ad[102]
                                            end
                                        elseif P<1020434 then
                                                if P<1018601 then
                                                    P=5905075
                                                else
                                                    P=X and 4897324 or 923330
                                                end
                                            else
                                                r="MysticIsland"P=n[B[1]]X="FindFirstChild"X=P[X]X=X(P,r)P=X and 6596420 or 9047631
                                            end
end
                                    end
                                elseif P<1063326 then
                                        if P<1045214 then
                                            if P<1037676 then
                                                if P<1031021 then
                                                    P=5484415 K="Name"g=E[K]K="Light-Light"h=g~=K v=h
                                                else
                                                    P={}d=P Q="Enemies"X="ipairs"P=U[X]G=n[B[2]]N=G[Q]Q="GetChildren"Q=N[Q]G={Q(N)}N={P(I(G))}X=N[1]m=N[3]E=N[2]N=X P=7017947
                                                end
                                            elseif P<1038923 then
                                                    r=k[1]P=n[B[1]]d=true X={P(r,d)}P=U["KZKtM5QPXCf5KE"]X={I(X)}
                                                else
                                                    d="TushitaProgress"r="FireInvoke"X=U[r]r=X(d)X="OpenedDoor"P=r[X]P=P and 4374682 or 12164747
                                                end
end
                                        elseif P<1050250 then
                                                if P<1047049 then
                                                    o=O P=2940368
                                                else
                                                    P=n[B[1]]d="Soul Reaper"r={d}X=P(r)r=X P=r and 3306208 or 5595934
                                                end
                                            else
                                                X="FindFirstChild"r="ESPquantumONYX"P=n[B[2]]X=P[X]X=X(P,r)P=X and 7053308 or 3770315
                                            end
end
                                    elseif P<1079382 then
                                            if P<1067828 then
                                                if P<1067022 then
                                                    P=X and 4413677 or 7311866
                                                else
                                                    r="TeleportToIsland"X=n[B[1]]P=X[r]P=P and 8145830 or 3295262
                                                end
                                            else
                                                N=nil P=159151 G=nil
                                            end
                                        elseif P<1097618 then
                                                if P<1088038 then
                                                    P=U["8FXCs4DOKjho4a"]X={}
                                                else
                                                    R="tostring"L=n[B[1]]C="Bone Roll: "P=13091705 t=U[R]R=t(g)t=" purchases left"y=R..t a=C..y K=L..a H=K
                                                end
                                            else
                                                P=7262067 K="Name"g=v[K]i=g
                                            end
end
                                    end
end
                            end
end
                    end
                elseif P<1601317 then
                        if P<1369746 then
                            if P<1206746 then
                                if P<1149362 then
                                    if P<1126922 then
                                        if P<1116413 then
                                            if P<1111886 then
                                                if P<1100924 then
                                                    P=6541520 X=true E="XrayView"n[B[1]]=X d=U[E]m=n[B[1]]E=d(m)
                                                else
                                                    P=K P=g and 11702351 or 14509331
                                                end
                                            elseif P<1115718 then
                                                    P=Ad[16]P=15817441 n[E]=Ad[15]
                                                else
                                                    P=o P=U["2mD07ZH937CC7"]o=nil Q=O or o X={Q}
                                                end
end
                                        elseif P<1125086 then
                                                if P<1123472 then
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 2586185 or 7186050
                                                else
                                                    h,L=g(i,h)P=h and 494525 or 5677583
                                                end
                                            else
                                                P=6270429
                                            end
end
                                    elseif P<1138166 then
                                            if P<1134499 then
                                                if P<1130431 then
                                                    X="pcall"r=Y(3430754,{B[1]})P=U[X]X=P(r)P=14677203
                                                else
                                                    E="VehicleSeat"P=15957449 d="FindFirstChild"d=r[d]d=d(r,E)X=d
                                                end
                                            elseif P<1136546 then
                                                    r=k[1]d=r P=n[B[1]]X="SelectedRod"r=nil P[X]=d P=U["T8p7oM4jkxLCom"]X={}
                                                else
                                                    X="Sword"P=d==X P=P and 1814841 or 12897850
                                                end
end
                                        elseif P<1144692 then
                                                if P<1140888 then
                                                    E="DinoHood"X="FireInvoke"P=U[X]d="Craft"r="CraftItem"X=P(r,d,E)P=U["oQzMdZD0iVLFx"]X={}
                                                else
                                                    O="string"d=N o="Name"H=U[O]O="find"Q=H[O]O=G[o]o="Fruit"H=Q(O,o)P=H and 15215796 or 9335210
                                                end
                                            else
                                                X="FindFirstChildOfClass"P=n[B[1]]X=P[X]r="Terrain"X=X(P,r)P="WaterWaveSize"d=false r=X X=0 r[P]=X P="WaterWaveSpeed"X=0 r[P]=X X=0 P="WaterReflectance"r[P]=X P="WaterTransparency"X=0 r[P]=X P=n[B[2]]X="GlobalShadows"P[X]=d d=9000000000.0 P=n[B[2]]X="FogEnd"P[X]=d d="settings"X=U[d]N="game"d=X()G="GetDescendants"X="Rendering"P=d[X]X="QualityLevel"d=1 P[X]=d X="pairs"P=U[X]m=U[N]G=m[G]N={G(m)}m={P(I(N))}d=m[2]E=m[3]P=6510163 X=m[1]m=X
                                            end
end
                                    end
                                elseif P<1185535 then
                                        if P<1168447 then
                                            if P<1163996 then
                                                if P<1153010 then
                                                    X="NoFog"P=n[B[1]]r=k[1]d=r P[X]=d d="task"X=U[d]d="spawn"r=nil P=X[d]d=Y(16454815,{B[1]
                                                    B[2]})X=P(d)P=U["kMK08bMjsZYlX"]X={}
                                                else
                                                    X={}P=U["IOZtzyQmHyhXRL"]
                                                end
                                            elseif P<1167054 then
                                                    d="FindFirstChild"E="Part"d=r[d]d=d(r,E)P=12541796 X=d
                                                else
                                                    E=n[B[6]]d=E==r P=9065183 X=d
                                                end
end
                                        elseif P<1183760 then
                                                if P<1174220 then
                                                    m="ESPChest"E=n[B[2]]d=E[m]P=d and 4223861 or 9781993 X=d
                                                else
                                                    X={}i=nil Q=n[B[6]]C="table"K=U[C]C="concat"g=K[C]C={r
                                                    d
                                                    E
                                                    m,G}y="\n"G=nil h="RefreshDesc"m=nil P=U["hfxYENefD4ci"]h=Q[h]d=nil K={g(C,y)}h=h(Q,I(K))E=nil r=nil
                                                end
                                            else
                                                N=113 d="task"X=U[d]d="wait"P=X[d]d=.1 X=P(d)G=1000 X="WaterBase-Plane"m="Vector3"d=9000000000.0 P="WaitForChild"P=r[P]P=P(r,X,d)E=U[m]X="Size"m="new"d=E[m]m=1000 E=d(m,N,G)P[X]=E P=10473061
                                            end
end
                                    elseif P<1198170 then
                                            if P<1195982 then
                                                if P<1192276 then
                                                    N=nil G=nil P=10169205
                                                else
                                                    E=S()m=k[4]r=k[1]n[E]=k[3]N=k[5]Q="SaveManager"d=k[2]G=S()n[G]=k[6]X=n[B[1]]P=X[Q]H=P X="Get"X=P[X]Q=n[E]X=X(P,Q,m)Q=X P=Q and 7004406 or 16260011 X=Q
                                                end
                                            else
                                                o="FindFirstChild"v="Handle"o=H[o]o=o(H,v)P=9749063 O=o
                                            end
                                        elseif P<1206299 then
                                                if P<1198748 then
                                                    N="FarmMode"m=n[B[5]]X=m[N]m="Quest"P=X==m P=P and 15527642 or 8883142
                                                else
                                                    E=n[B[2]]m="Character"X=E[m]E="Humanoid"P=X[E]X="EquipTool"X=P[X]X=X(P,d)P=7167677
                                                end
                                            else
                                                i=nil v=nil P=1857980
                                            end
end
                                    end
end
                            elseif P<1279095 then
                                    if P<1257020 then
                                        if P<1236588 then
                                            if P<1219869 then
                                                if P<1210562 then
                                                    P=n[B[1]]r=k[1]d=r X="TradeAzureEmber"P[X]=d d="task"X=U[d]d="spawn"r=nil P=X[d]d=A(8158812,{B[1]
                                                    B[2]})X=P(d)P=U["7KNPdsZVeZnPK"]X={}
                                                else
                                                    E="Command"X="NPC"d="Uzoth"m="Upgrade"P={[X]=d
                                                    [E]=m}m=n[B[4]]d=P N="Modules"E=m[N]m="Net"X=E[m]E="RF/InteractDragonQuest"P=X[E]X="InvokeServer"X=P[X]X=X(P,d)d=nil P=12805106
                                                end
                                            elseif P<1232078 then
                                                    r=S()d="task"n[r]=k[1]X=U[d]d="spawn"P=X[d]d=W(15325896,{r
                                                    B[1]})X=P(d)X={}P=U["ew6Svk2vzZ3A2D"]r=l(r)
                                                else
                                                    d="CheckTool"r=U[d]E="Cup"d=r(E)P=d and 16234597 or 15841288 X=d
                                                end
end
                                        elseif P<1242405 then
                                                if P<1239180 then
                                                    P=nil X={P}P=U["XYf38lhKuWdx"]
                                                else
                                                    r="LightingLayers"P=n[B[2]]X="FindFirstChild"X=P[X]X=X(P,r)P=X and 12266536 or 1774042
                                                end
                                            else
                                                d="tick"X=U[d]d=X()X=n[B[4]]P=d-X d=P X=n[B[5]]P=d<X P=P and 6051589 or 12494375
                                            end
end
                                    elseif P<1265336 then
                                            if P<1261957 then
                                                if P<1260488 then
                                                    Q="AutoFindPrehistoricIsland"G=n[B[1]]N=G[Q]m=N P=N and 89851 or 4170560
                                                else
                                                    N=N+Q O=not H X=N<=G X=O and X O=N>=G O=H and O X=O or X O=8317490 P=X and O X=7215140 P=P or X
                                                end
                                            else
                                                X="AutoChestSafe"r=false P=n[B[1]]P[X]=r P=12439119
                                            end
                                        elseif P<1278775 then
                                                if P<1267341 then
                                                    m=nil N=nil P=5844475
                                                else
                                                    P=1869917 O=nil o=nil
                                                end
                                            else
                                                P=n[B[1]]r=k[1]X=P(r)d=X X=d P=d and 7242117 or 8622604
                                            end
end
                                    end
                                elseif P<1321628 then
                                        if P<1308098 then
                                            if P<1285870 then
                                                if P<1279155 then
                                                    Q="Character"o="Data"P=G[Q]H="HumanoidRootPart"Q="FindFirstChild"Q=P[Q]O="FindFirstChild"O=G[O]Q=Q(P,H)O=O(G,o)H=O P=O and 10924180 or 640252
                                                else
                                                    X=n[B[1]]d="stop"P=X[d]P=P and 5233020 or 11610899
                                                end
                                            elseif P<1297800 then
                                                    P=Q and 5080099 or 4088311
                                                else
                                                    G="Special Microchip"P=13738284 m=n[B[6]]N=m(G)E=not N r=E
                                                end
end
                                        elseif P<1311661 then
                                                if P<1310857 then
                                                    Q="Saishi"N="CheckInventory"G="Sword"m=U[N]N=m(G,Q)P=N and 16233783 or 12184455 X=N
                                                else
                                                    P=n[B[2]]m="CFrame"E=U[m]m="new"d=E[m]G=-2964 N=315 m=-5119 E={d(m,N,G)}X=P(I(E))P=13643762
                                                end
                                            else
                                                X="pcall"r=S()d=A(7665028,{B[1]})P=nil n[r]=P P=U[X]X=P(d)X="pcall"d=A(15930655,{B[1]
                                                r})P=U[X]X=P(d)P=false X=nil E=nil N=X d=P G=n[r]P=nil X=G m=P P=G and 7590583 or 11220613
                                            end
end
                                    elseif P<1324869 then
                                            if P<1324040 then
                                                if P<1323833 then
                                                    N="FindFirstChild"X="Humanoid"P=0 N=r[N]E=P P="FindFirstChild"P=r[P]P=P(r,X)G="HumanoidRootPart"N=N(r,G)m=P P=N and 3505931 or 5782469 X=N
                                                else
                                                    P=n[B[3]]r=n[B[2]]N=216 G=230 m="Color3"E=U[m]m="fromRGB"d=E[m]m=173 E=d(m,N,G)d=Y(13428043,{B[4],B[2]})X=P(r,E,d)P=867074
                                                end
                                            else
                                                P=n[B[1]]X="BringMonsterRadius"r=k[1]d=r r=nil P[X]=d X={}P=U["dQr4HBNTbg4nhM"]
                                            end
                                        elseif P<1355328 then
                                                if P<1337503 then
                                                    g="Corridor"i=n[B[3]]h="Temple of Time"v=i[h]h=H..g i="FindFirstChild"i=v[i]i=i(v,h)o=i P=i and 542895 or 5804062
                                                else
                                                    i,g=o(v,i)P=i and 5433573 or 3242509
                                                end
                                            else
                                                E="CFrame"P=n[B[1]]m=1209 d=U[E]E="new"r=d[E]N=806 E=5775 d={r(E,m,N)}X=P(I(d))P=U["rARYOCvsbVapM"]X={}
                                            end
end
                                    end
end
                            end
                        elseif P<1491047 then
                                if P<1424101 then
                                    if P<1392534 then
                                        if P<1381484 then
                                            if P<1381060 then
                                                if P<1374517 then
                                                    m="Order"d=n[B[1]]E=d(m)r=not E P=r and 14105277 or 16643809 X=r
                                                else
                                                    d=n[B[2]]E="Backpack"r=d[E]E=true d="Awakening"X=r[d]r="RemoteFunction"d=1 P=X[r]X="InvokeServer"X=P[X]r={[d]=E}X=X(P,r)P=16259696
                                                end
                                            elseif P<1381139 then
                                                    K=P a="Humanoid"L="FindFirstChild"L=i[L]L=L(i,a)g=L P=L and 11944710 or 11349172
                                                else
                                                    X="require"P=U[X]E="Raids"d=n[B[1]]r=d[E]X=P(r)r=X N="raids"X="pairs"P=U[X]m=r[N]N={P(m)}P=5467189 d=N[2]E=N[3]X=N[1]m=X
                                                end
end
                                        elseif P<1388740 then
                                                if P<1387192 then
                                                    r="Map"P=n[B[1]]d=9000000000.0 X="WaitForChild"X=P[X]X=X(P,r,d)r=X P=10473061
                                                else
                                                    r="TravelZou"X="FireInvoke"P=U[X]X=P(r)P=U["zA1I0AfwIuvVHi"]X={}
                                                end
                                            else
                                                o=X P=o and 9772243 or 16114895
                                            end
end
                                    elseif P<1399443 then
                                            if P<1397146 then
                                                if P<1394762 then
                                                    P=14976836
                                                else
                                                    Q=nil G=nil P=4069340
                                                end
                                            else
                                                P=12763655 Q=nil v=nil
                                            end
                                        elseif P<1416438 then
                                                if P<1412686 then
                                                    P=ld Sd=Ed P=7682521
                                                else
                                                    P=n[B[7]]d="Not enough fragments"E=10 r="Auto Cyborg Race"X=P(r,d,E)P=11100383
                                                end
                                            else
                                                P=3227647 i=m
                                            end
end
                                    end
                                elseif P<1456056 then
                                        if P<1444242 then
                                            if P<1434852 then
                                                if P<1427501 then
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 12350300 or 2829650
                                                else
                                                    P=2326109 v=nil
                                                end
                                            elseif P<1442643 then
                                                    P=2911066
                                                else
                                                    P=r and 2958314 or 12953285
                                                end
end
                                        elseif P<1454052 then
                                                if P<1446496 then
                                                    P=14932612 Q="Velocity"G=r[Q]Q="Magnitude"N=G[Q]G=0 m=N>G d=m
                                                else
                                                    P=Q and 12950707 or 11249772
                                                end
                                            else
                                                P=i and 495268 or 8884716
                                            end
end
                                    elseif P<1474358 then
                                            if P<1469203 then
                                                if P<1465963 then
                                                    h="pcall"o=3 O=S()g=b(5260726,{})v=65 n[O]=X P=n[Q]X=P(o,v)o=S()n[o]=X X=U[h]h={X(g)}C="tostring"P=0 v=P X=2 P=0 i=P P={I(h)}h=P P=h[X]X="tonumber"g=P P=U[X]K=n[E]a=U[C]C=a(g)a=":(%d*):"L=K(C,a)K={L()}X=P(I(K))K=S()P=3558371 n[K]=X X=1 L=n[o]a=L L=1 C=L L=0 y=C<L L=X-C
                                                else
                                                    r="Race Rerol"P=n[B[1]]d="Frags"X=P(r,d)P=U["5MAlpIMQMO8Vs"]X={}
                                                end
                                            else
                                                X="MobsNextSpawn"P=U[X]X={P(r)}X={I(X)}P=U["OwqlxqT4HxZQ"]
                                            end
                                        elseif P<1480722 then
                                                if P<1476809 then
                                                    E,G=m(d,E)P=E and 6896798 or 14189264
                                                else
                                                    X={}P=U["C8lW6cDpxaja"]
                                                end
                                            else
                                                N=n[B[1]]G="Cake Stats: Spawned | Dough King"X=N..G m=X P=6026962
                                            end
end
                                    end
end
                            elseif P<1542548 then
                                    if P<1520803 then
                                        if P<1506774 then
                                            if P<1497169 then
                                                if P<1494575 then
                                                    G=n[B[1]]Q="Cake Stats: Spawned | Cake Prince"N=G..Q m=N P=6026962
                                                else
                                                    P=2926649
                                                end
                                            elseif P<1500321 then
                                                    P=10813907
                                                else
                                                    r="task"X=U[r]r="wait"P=X[r]r=.1 X=P(r)P=X and 10434484 or 14740336
                                                end
end
                                        elseif P<1518799 then
                                                if P<1513164 then
                                                    P=6180995
                                                else
                                                    P=6973008
                                                end
                                            else
                                                P=Q and 7176519 or 9853854
                                            end
end
                                    elseif P<1525238 then
                                            if P<1523332 then
                                                if P<1521390 then
                                                    O=P v="TextLabel"o="FindFirstChild"o=G[o]o=o(G,v)H=o P=o and 4063228 or 8898242
                                                else
                                                    X="AutoGetTushita"P=U[X]X=P()P=9416425
                                                end
                                            else
                                                i="BasePart"v="IsA"v=O[v]v=v(O,i)P=2938694 o=v
                                            end
                                        elseif P<1540014 then
                                                if P<1525962 then
                                                    P=12799452
                                                else
                                                    P=10103485
                                                end
                                            else
                                                E="CircleIsland"d=n[B[2]]r=d[E]E="BlockPart"d="FindFirstChild"d=r[d]d=d(r,E)P=d and 3781807 or 14021768 X=d
                                            end
end
                                    end
                                elseif P<1564218 then
                                        if P<1552328 then
                                            if P<1548019 then
                                                if P<1544518 then
                                                    N="Vector3"X=n[B[1]]m=U[N]Q=-73 N="new"E=m[N]N=-1992 G=125 d="DistanceFromCharacter"d=X[d]m={E(N,G,Q)}d=d(X,I(m))X=4 P=d<=X P=P and 4112216 or 7715241
                                                else
                                                    X="pcall"r=A(16640412,{B[1]})P=U[X]X=P(r)P=13649078
                                                end
                                            elseif P<1549306 then
                                                    P=n[B[1]]X=P()X={}P=U["XMYLYaxWYzTh9"]
                                                else
                                                    P=H P=X and 4892894 or 11788269
                                                end
end
                                        elseif P<1554565 then
                                                if P<1554366 then
                                                    P=7018408 Q=nil
                                                else
                                                    P=""X={P}P=U["Z8AMHDerE4kCkl"]
                                                end
                                            else
                                                r="task"X=U[r]m="Vector3"r="wait"P=X[r]r=.2 X=P(r)G=-7326 r="GetDistance"X=U[r]E=U[m]m="new"N=2283 d=E[m]m=3030 E={d(m,N,G)}r=X(I(E))X=10 P=r<X P=P and 12516220 or 1556153
                                            end
end
                                    elseif P<1569418 then
                                            if P<1566091 then
                                                if P<1565375 then
                                                    E="print"m="Already Executed"d=U[E]X={}E=d(m)P=U["cZsh3pXEMM0fw"]
                                                else
                                                    N="Title"E=k[3]G="Description"m="Notification"O=5 d=k[2]X=n[B[1]]P=X[m]H=P r=k[1]m={[N]=r
                                                    [G]=d}Q=E or O E=nil r=nil G="Time"N={[G]=Q}d=nil X="Notify"X=P[X]X=X(P,m,N)P=U["ipdpp2DZnp9A6X"]X={}
                                                end
                                            else
                                                d=m P=N P=3360923
                                            end
                                        elseif P<1595867 then
                                                if P<1593506 then
                                                    P=1502119
                                                else
                                                    P=rd P=5369178 nd=Bd
                                                end
                                            else
                                                d="Order"r={d}P=n[B[2]]X=P(r)r=X P=r and 10126684 or 951164
                                            end
end
                                    end
end
                            end
end
                    elseif P<1857883 then
                            if P<1730971 then
                                if P<1674860 then
                                    if P<1639624 then
                                        if P<1623028 then
                                            if P<1608779 then
                                                if P<1604569 then
                                                    Q="Temple of Time"G="FindFirstChild"P=5855845 N=n[d]G=N[G]G=G(N,Q)r=G
                                                else
                                                    P=7702637
                                                end
                                            elseif P<1612482 then
                                                    r="AutoTrialDracoTP"X=n[B[1]]P=X[r]P=P and 12528222 or 9800022
                                                else
                                                    E="Part"d="FindFirstChild"P=7166806 d=r[d]d=d(r,E)X=d
                                                end
end
                                        elseif P<1631217 then
                                                if P<1625030 then
                                                    d="Darkbeard"P=n[B[2]]r={d}X=P(r)r=X P=r and 8327759 or 6989237
                                                else
                                                    X="pcall"P=U[X]r=n[B[1]]X=P(r)P=U["65Hb2Tr78CO6R"]X={}
                                                end
                                            else
                                                G=nil N=nil P=6619498
                                            end
end
                                    elseif P<1645941 then
                                            if P<1644923 then
                                                if P<1644795 then
                                                    P=13512261 G=nil Q=nil
                                                else
                                                    r="FireInvoke"d="EliteHunter"X=U[r]E="Progress"r=X(d,E)X=30 P=r<X P=P and 3134211 or 7903164
                                                end
                                            elseif P<1645388 then
                                                    E=n[B[1]]N="Jeremy"P=11386638 m=E(N)r=m
                                                else
                                                    r="pairs"X=U[r]N=n[B[3]]G="Character"m=N[G]G="GetChildren"G=m[G]N={G(m)}m={X(I(N))}d=m[2]r=m[1]P=11743908 E=m[3]
                                                end
end
                                        elseif P<1673716 then
                                                if P<1661790 then
                                                    X=n[B[1]]P=not X P=P and 14351461 or 10438124
                                                else
                                                    P=14699746
                                                end
                                            else
                                                H=P O="IsA"N=m O=G[O]o="MeshPart"O=O(G,o)Q=O P=O and 12366248 or 4662387
                                            end
end
                                    end
                                elseif P<1701338 then
                                        if P<1686096 then
                                            if P<1683523 then
                                                if P<1678404 then
                                                    Q=not m P=Q and 425523 or 3306175
                                                else
                                                    X=n[B[3]]o="PrimaryPart"O=G[o]P=6012259 o="CFrame"H=O[o]Q=X(H)
                                                end
                                            elseif P<1685850 then
                                                    r=k[1]P=r and 5454600 or 11292118 X=r
                                                else
                                                    d="Character"r=n[B[1]]X=r[d]r="Head"P=X[r]X="Destroy"X=P[X]X=X(P)P=U["G6mGRvTr1QxpJk"]X={}
                                                end
end
                                        elseif P<1696655 then
                                                if P<1694572 then
                                                    P=true n[B[1]]=P P=U["wijJ43ssuvjax"]X={}
                                                else
                                                    d="pos"N="Vector3"m=U[N]G=314 Q=-2212 N="new"E=m[N]N=-5415 m=E(N,G,Q)N="Pure Red"G="Vector3"E="color"H=-3720 Q=336 X={[d]=m,[E]=N}N=U[G]G="new"m=N[G]E="pos"G=-4972 N=m(G,Q,H)Q="Vector3"G="Snow White"m="color"d={[E]=N
                                                    [m]=G}G=U[Q]m="pos"Q="new"O=-2667 H=1089 N=G[Q]Q=-5420 G=N(Q,H,O)N="color"Q="Winter Sky"E={[m]=G,[N]=Q}P={X,d,E}X="pairs"d=P P=U[X]N={P(d)}E=N[2]m=N[3]X=N[1]P=13512261 N=X
                                                end
                                            else
                                                Ad[79],Ad[82]=Ad[77](Ad[80],Ad[79])P=Ad[79]and 6968493 or 10645019
                                            end
end
                                    elseif P<1705932 then
                                            if P<1705575 then
                                                if P<1703536 then
                                                    P=n[B[5]]r="Cursed Captain"X=P(r)P=X and 383879 or 15506391
                                                else
                                                    P=true d="NoclipBody"X=nil n[B[1]]=P n[B[2]]=X r=nil U[d]=r d=n[B[3]]P=d and 139575 or 10846260
                                                end
                                            else
                                                h,g=v(i,h)P=h and 9814905 or 9571292
                                            end
                                        elseif P<1720442 then
                                                if P<1707046 then
                                                    P=U["q85r1LYBL5Q32"]X={}
                                                else
                                                    h="table"O=nil v=1 X=H+v v=2 i=256 K="string"P=X/v v=P X=o-v P=X%i H=nil i=P o=nil X=U[h]h="insert"P=X[h]g=U[K]K="char"v=nil h=g[K]g={h(i)}X=P(E,I(g))P=362123 i=nil
                                                end
                                            else
                                                N="Bushes"m=U[N]E=not m P=E and 9462190 or 11086727
                                            end
end
                                    end
end
                            elseif P<1780962 then
                                    if P<1748493 then
                                        if P<1745252 then
                                            if P<1734588 then
                                                if P<1731775 then
                                                    P=U["1tINULX5jj2i"]X={}
                                                else
                                                    d=d+m X=d<=E G=not N X=G and X G=d>=E G=N and G X=G or X G=5077623 P=X and G X=5334769 P=P or X
                                                end
                                            elseif P<1736277 then
                                                    X=n[B[1]]r="AutoGetCyborgRace"P=X[r]P=P and 16039117 or 11809582
                                                else
                                                    X=d N="Fishing"O="tostring"n[B[3]]=X Q="Rod State changed to: "E=n[B[4]]H=U[O]P=8368645 O=H(d)G=Q..O Q=5 m=E(N,G,Q)
                                                end
end
                                        elseif P<1746435 then
                                                if P<1745346 then
                                                    E="Fruit"X=n[B[2]]d="Name"P=X[d]d=S()n[d]=P X=n[d]P=X==E P=P and 14160302 or 16015871
                                                else
                                                    r=nil P=9047631
                                                end
                                            else
                                                o="coroutine"O=U[o]o="wrap"Q=O[o]P=7370737 o=A(6323282,{B[5]
                                                H
                                                G})O=Q(o)Q=O()
                                            end
end
                                    elseif P<1768679 then
                                            if P<1760058 then
                                                if P<1755261 then
                                                    X="EquipToolName"r="God's Chalice"P=U[X]X=P(r)P=n[B[4]]E="CFrame"d=U[E]m=314 E="new"N=-2663 r=d[E]E=-5561 d={r(E,m,N)}X={P(I(d))}P=U["oFZqnyPlQTEOM6"]X={I(X)}'
                                                else
                                                    m="Character"E=n[B[1]]d=E[m]r=not d X=r P=r and 3375058 or 12460527
                                                end
                                            else
                                                G=nil P=10159525 N=nil
                                            end
                                        elseif P<1773371 then
                                                if P<1770176 then
                                                    P=n[B[7]]Q="CFrame"G=U[Q]Q="new"N=G[Q]H=29.5177539 Q=-16269.1016 O=1372.3204 G={N(Q,H,O)}N="task"X=P(I(G))X=U[N]N="wait"P=X[N]N=.5 X=P(N)X=1 N=2 G=N N=1 P=305116 Q=N N=0 H=Q<N N=X-Q
                                                else
                                                    d="AutoStats"X=n[B[2]]P=X[d]P=P and 5418848 or 913679
                                                end
                                            else
                                                r="Sky"P=n[B[2]]X="FindFirstChild"X=P[X]X=X(P,r)P=X and 5448537 or 7861341
                                            end
end
                                    end
                                elseif P<1821497 then
                                        if P<1808659 then
                                            if P<1799881 then
                                                if P<1795608 then
                                                    P=Ad[43]P=Ad[42]and 4786257 or 10899549
                                                else
                                                    O=d H=P o=P P=d and 13703347 or 1116231
                                                end
                                            elseif P<1800907 then
                                                    r=nil P=7517745
                                                else
                                                    P=U["avWtMDcGN82g"]X={}
                                                end
end
                                        elseif P<1820787 then
                                                if P<1812275 then
                                                    v="table"o=X X=U[v]v="insert"P=X[v]v={O,o}X=P(r,v)o=nil P=15260313
                                                else
                                                    X="wait"m=.1 P=U[X]O="Pole v.2"X=P(m)X="FireInvoke"P=U[X]N=P H=r==O Q=P G=H P=H and 15372399 or 13010672
                                                end
                                            else
                                                P=i h=v E=P m=h P=16310242
                                            end
end
                                    elseif P<1847110 then
                                            if P<1846151 then
                                                if P<1841391 then
                                                    X=n[B[1]]r="AutoAwaken"P=X[r]P=P and 2612147 or 10358082
                                                else
                                                    o="pcall"O=U[o]L="Check"K="FireInvoke"g=U[K]K="Bones"a={O(g,K,L)}v=a[2]h=a[4]i=a[3]g="tonumber"o=a[1]O=U[g]g=O(i)O=o K=P P=o and 14205999 or 8757008
                                                end
                                            else
                                                P=X and 245267 or 16517933
                                            end
                                        elseif P<1855728 then
                                                if P<1848559 then
                                                    Q,O=N(G,Q)P=Q and 5637456 or 12263138
                                                else
                                                    X=n[B[1]]r="AutoFarmPrince"P=X[r]P=P and 2524317 or 7135912
                                                end
                                            else
                                                P=177584
                                            end
end
                                    end
end
                            end
                        elseif P<1990406 then
                                if P<1919052 then
                                    if P<1888119 then
                                        if P<1865537 then
                                            if P<1858841 then
                                                if P<1857992 then
                                                    O,i=o(H,O)P=O and 9435965 or 4391263
                                                else
                                                    E="Color3"X=U[E]H=192 E="fromRGB"Q=192 P=X[E]E=192 X=P(E,Q,H)E="Silver Chest"n[m]=X P="rbxassetid://97335861533611"n[N]=P P=5425571 n[G]=E
                                                end
                                            elseif P<1862464 then
                                                    X=n[B[1]]r="FruitCheck"P=X[r]P=P and 5771682 or 13120289
                                                else
                                                    r=X P=not r P=P and 2476205 or 1036360
                                                end
end
                                        elseif P<1881358 then
                                                if P<1871290 then
                                                    H,o=G(Q,H)P=H and 14835403 or 16663140
                                                else
                                                    v="FindFirstChild"v=Q[v]o=P i="HumanoidRootPart"v=v(Q,i)O=v P=v and 12945403 or 12357045
                                                end
                                            else
                                                r=k[1]P=r and 5798221 or 2407594
                                            end
end
                                    elseif P<1903285 then
                                            if P<1902359 then
                                                if P<1897502 then
                                                    m=not E P=15502345 X=m
                                                else
                                                    i="string"v=U[i]i="gsub"X=v[i]h="Name"i=N[h]h=" Fruit"g=""v=X(i,h,g)i=n[B[3]]g="Name"h="Character"X=i[h]h=N[g]i="FindFirstChild"i=X[i]i=i(X,h)P=i and 9243581 or 14533241
                                                end
                                            else
                                                X=n[B[1]]r="GetAttribute"d="RestartingTemple"r=X[r]r=r(X,d)P=not r P=P and 11232757 or 4286221
                                            end
                                        elseif P<1917309 then
                                                if P<1903536 then
                                                    d="Mob Leader"P=n[B[4]]r={d}X=P(r)r=X P=r and 13812341 or 4952560
                                                else
                                                    r=n[B[1]]d="FindFirstChild"d=r[d]E="PrehistoricIsland"d=d(r,E)X=d P=d and 14501824 or 2319055
                                                end
                                            else
                                                P=X and 9616862 or 646364
                                            end
end
                                    end
                                elseif P<1954477 then
                                        if P<1945069 then
                                            if P<1939955 then
                                                if P<1920637 then
                                                    N="1"E="FireInvoke"d=U[E]m="TalkTrevor"E=d(m,N)d=0 r=E==d P=r and 5986790 or 11673266 X=r
                                                else
                                                    X="wait"P=U[X]X=P()P=X and 9850152 or 9190054
                                                end
                                            elseif P<1944080 then
                                                    r=k[1]X="SelectRaid"d=r P=n[B[1]]P[X]=d X={}P=U["iQi7QQMLbF6ty1"]r=nil
                                                else
                                                    r="AutoSecondSea"X=n[B[1]]P=X[r]P=P and 13491557 or 5841342
                                                end
end
                                        elseif P<1948689 then
                                                if P<1945561 then
                                                    G="Demonic Soul"d="Head Baker"E="Baking Staff"N="Cookie Crafter"X="Cakes"m="Cake Guard"r={d,E,m
                                                    N}d="Bones"m="Reborn Skeleton"N="Living Zombie"Q="Posessed Mummy"E={m
                                                    N,G
                                                    Q}P={[X]=r,[d]=E}r=P m="Character"E=n[B[1]]d=E[m]E="FindFirstChild"E=d[E]m="RaceEnergy"E=E(d,m)X=E P=E and 3119953 or 3551369
                                                else
                                                    X={}P=U["rnyZYoviwBRNs5"]
                                                end
                                            else
                                                X="EquipSword"P=U[X]m="Shizu"X=P(m)X="CustomFarm"P=U[X]X=P()P=12061423
                                            end
end
                                    elseif P<1967498 then
                                            if P<1966291 then
                                                if P<1962431 then
                                                    P=12763655 H="ipairs"Q=U[H]v={Q(E)}H=v[1]O=v[2]o=v[3]
                                                else
                                                    P=U["aG2XdJMHXeIk"]X={}
                                                end
                                            else
                                                P=7599316
                                            end
                                        elseif P<1975985 then
                                                if P<1969742 then
                                                    t=not d P=t and 13015220 or 10709068 y=t
                                                else
                                                    r=nil P=U["sH4nCVgtYZQvgr"]X={}
                                                end
                                            else
                                                m=14967 P=n[B[1]]E="CFrame"N=-164 d=U[E]E="new"r=d[E]E=28767 d={r(E,m,N)}X=P(I(d))X={}P=U["QoL7FjltX4hVR"]
                                            end
end
                                    end
end
                            elseif P<2083448 then
                                    if P<2028252 then
                                        if P<2009981 then
                                            if P<2001155 then
                                                if P<1995009 then
                                                    g=nil a=nil O=nil P=6339323 h=nil
                                                else
                                                    m=n[B[2]]H="Position"Q=r[H]G="DistanceFromCharacter"G=m[G]G=G(m,Q)m=20 E=G>m P=E and 2685775 or 16284641
                                                end
                                            elseif P<2003070 then
                                                    X=n[B[1]]r="AutoBartilo"P=X[r]P=P and 12329047 or 6835019
                                                else
                                                    X="AutoEvolveV3"P=U[X]X=P()P=8836017
                                                end
end
                                        elseif P<2022657 then
                                                if P<2016106 then
                                                    X=n[B[1]]r="TradeAzureEmber"P=X[r]P=P and 12696277 or 16018098
                                                else
                                                    P=H H=20 G=40 P=d and 10221006 or 7122814 N=Q and H m=N or G
                                                end
                                            else
                                                m,Q=N(E,m)P=m and 5491516 or 14642139
                                            end
end
                                    elseif P<2054199 then
                                            if P<2049859 then
                                                if P<2038756 then
                                                    P=G P=not X P=P and 4389923 or 7972104
                                                else
                                                    H=o P=v P=4834299
                                                end
                                            else
                                                m=424 E="CFrame"P=n[B[4]]N=-2673 d=U[E]E="new"r=d[E]E=-5333 d={r(E,m,N)}X={P(I(d))}X={I(X)}P=U["jbBj9QFIIFPJxX"]
                                            end
                                        elseif P<2078835 then
                                                if P<2066678 then
                                                    Q="BasePart"P="IsA"N=E P=G[P]P=P(G,Q)P=P and 6823644 or 4138153
                                                else
                                                    P=true d=P G="tostring"X=U[G]O="Text"H=n[r]Q=H[O]G=X(Q)Q="Defeat"X="find"X=G[X]X=X(G,Q)P=X and 12006810 or 16237175
                                                end
                                            else
                                                N="math"P=nil m=U[N]E=X N="huge"X=m[N]N=X m=P X="typeof"P=U[X]X=P(r)G=X X="ipairs"P=U[X]o=n[B[2]]v=n[B[3]]O={o
                                                v}o={P(O)}X=o[1]O=X Q=o[2]P=574224 H=o[3]
                                            end
end
                                    end
                                elseif P<2136207 then
                                        if P<2121670 then
                                            if P<2105450 then
                                                if P<2090458 then
                                                    P=n[B[1]]d=n[B[2]]G=n[B[3]]Q="Data"N=G[Q]G="Race"m=N[G]N="Value"E=m[N]r=d[E]X=P(r)X={}P=U["XSEYqAHyrqNQ"]
                                                else
                                                    Ad[54]="getsenv"Ad[53]=U[Ad[54]]P=Ad[53]and 6423239 or 13641269
                                                end
                                            elseif P<2119715 then
                                                    X="MobsNextSpawn"d="Head Baker"P=U[X]X=P(d)P=6722337
                                                else
                                                    d="task"X=U[d]d="spawn"P=X[d]d=A(4688262,{B[1]
                                                    B[2]
                                                    B[3]})X=P(d)P=15268996
                                                end
end
                                        elseif P<2128535 then
                                                if P<2124947 then
                                                    m="Modules"E=n[B[4]]d=E[m]E="Net"X=d[E]E="RF/JobsRemoteFunction"d="FindFirstChild"m="FirstTimeFreeRod"d=X[d]d=d(X,E)E="FishingNPC"X="InvokeServer"X=d[X]G="SelectedRod"X=X(d,E,m)d="FireInvoke"X=U[d]N=n[B[1]]m=N[G]P=7487595 E="LoadItem"G="Gear"N={G}d=X(E,m,N)
                                                else
                                                    X=n[B[1]]r="AutoDarkCoat"P=X[r]P=P and 16121633 or 11486791
                                                end
                                            else
                                                P=r and 14349344 or 3636015 H=r
                                            end
end
                                    elseif P<2148401 then
                                            if P<2138534 then
                                                if P<2136370 then
                                                    P=14699746
                                                else
                                                    m,G=d(E,m)P=m and 3509871 or 5794002
                                                end
                                            else
                                                H="typeof"Q=U[H]P=12003467 H=Q(r)Q="CFrame"G=H==Q E=G
                                            end
                                        elseif P<2154764 then
                                                if P<2150907 then
                                                    P=n[B[1]]X=P()X={}P=U["NsKfaDZiXNN1i"]
                                                else
                                                    X="doorcup"P=U[X]X=P()P=X and 6769076 or 5647511
                                                end
                                            else
                                                P=15026743
                                            end
end
                                    end
end
                            end
end
                    end
end
            elseif P<3120544 then
                    if P<2658001 then
                        if P<2375943 then
                            if P<2239644 then
                                if P<2201225 then
                                    if P<2184765 then
                                        if P<2171003 then
                                            if P<2170095 then
                                                if P<2164293 then
                                                    G="next"H="GetChildren"m=d H=N[H]P=U[G]H={H(N)}Q=H[2]G=H[1]H=P P=12330983
                                                else
                                                    P=13605639 o="CanCollide"O=G[o]Q=O
                                                end
                                            elseif P<2170287 then
                                                    P=11733903 y=nil
                                                else
                                                    X="pcall"P=U[X]r=b(1735252,{B[1]})X=P(r)P=16493133
                                                end
end
                                        elseif P<2184033 then
                                                if P<2176708 then
                                                    E="CheckTool"d=U[E]m="Flower 3"E=d(m)X=not E P=X and 4514833 or 3052087
                                                else
                                                    C="FindFirstChild"y="HumanoidRootPart"C=i[C]C=C(i,y)L=C P=7514332
                                                end
                                            else
                                                X="DetectPiranha"P=n[B[1]]r=k[1]d=r r=nil P[X]=d X={}P=U["lx2c5c4aOjlGAp"]
                                            end
end
                                    elseif P<2198600 then
                                            if P<2190762 then
                                                if P<2188650 then
                                                    r="AutoDarkDagger"X=n[B[1]]P=X[r]P=P and 15882437 or 8113032
                                                else
                                                    g="Type"h=H[g]g="Sword"v=P i=h==g P=i and 15510514 or 12269170 o=i
                                                end
                                            elseif P<2196443 then
                                                    X="FindFirstChild"r="MapStash"P=n[B[1]]d="Map"X=P[X]X=X(P,r)P=n[B[2]]r="FindFirstChild"r=P[r]r=r(P,d)E=S()d=S()n[d]=X n[E]=r r=n[d]P=r and 4358534 or 4136356 X=r
                                                else
                                                    N=n[B[2]]G="Character"m=N[G]N="RaceEnergy"E=m[N]m="Value"d=E[m]E=1 r=d>=E X=r P=r and 13973497 or 3751442
                                                end
end
                                        elseif P<2200847 then
                                                if P<2200266 then
                                                    E="Character"d=n[B[1]]r=d[E]P=r and 384026 or 7299373 X=r
                                                else
                                                    d="Handle"r=n[B[2]]X=r[d]P=4347432 d="ESPquantumONYX"r="FindFirstChild"r=X[r]r=r(X,d)X="Destroy"X=r[X]X=X(r)
                                                end
                                            else
                                                X=n[B[1]]r="DistanceFromCharacter"N=1208 m="Vector3"r=X[r]G=870 E=U[m]m="new"d=E[m]m=5867 E={d(m,N,G)}r=r(X,I(E))X=5 P=r<=X P=P and 11512335 or 16565392
                                            end
end
                                    end
                                elseif P<2223027 then
                                        if P<2214788 then
                                            if P<2205766 then
                                                if P<2204732 then
                                                    r="DummyTraining"X=n[B[1]]P=X[r]P=P and 8188040 or 6280980
                                                else
                                                    r="CheckTool"d="Sweet Chalice"X=U[r]r=X(d)P=not r P=P and 15866658 or 7578765
                                                end
                                            elseif P<2213167 then
                                                    G=nil P=11822487 Q=nil
                                                else
                                                    P=n[B[1]]E="UserId"d=n[B[2]]r=d[E]X={P(r)}X={I(X)}P=U["XbwQVz2eJZeM"]
                                                end
end
                                        elseif P<2222175 then
                                                if P<2222003 then
                                                    P=11056842
                                                else
                                                    P=X and 97671 or 769135
                                                end
                                            else
                                                P=U["Bb6JuVdm5yZj"]X={}
                                            end
end
                                    elseif P<2229701 then
                                            if P<2227695 then
                                                if P<2225863 then
                                                    X=Q P=H P=11632330
                                                else
                                                    X=n[B[1]]r="AutoRaceEvolveV3"P=X[r]P=P and 2005707 or 8836017
                                                end
                                            else
                                                X=n[B[2]]G="Flower1"N=n[B[3]]m=N[G]N="CFrame"P=13898534 E=m[N]d=X(E)
                                            end
                                        elseif P<2236226 then
                                                if P<2235494 then
                                                    m,G=d(E,m)P=m and 1674228 or 4389197
                                                else
                                                    X="MobsNextSpawn"d="Chocolate Bar Battler"P=U[X]X=P(d)P=8652569
                                                end
                                            else
                                                P=1394045
                                            end
end
                                    end
end
                            elseif P<2316141 then
                                    if P<2289261 then
                                        if P<2264066 then
                                            if P<2255740 then
                                                if P<2255632 then
                                                    P=X and 6493164 or 6389792
                                                else
                                                    X={}P=U["HlH5ELnelT6eZw"]
                                                end
                                            elseif P<2263661 then
                                                    X={}P=U["vUo5F3hbIP6roa"]
                                                else
                                                    d="InvokeServer"P=n[B[1]]d=P[d]r={s(1,I(k))}X={d(P,I(r))}X={I(X)}P=U["aJiBSRcOAwz54c"]
                                                end
end
                                        elseif P<2272575 then
                                                if P<2268741 then
                                                    o="Name"G=m O=Q[o]o="DragonEgg"H=O==o P=H and 16717863 or 8461421
                                                else
                                                    N=-7326 m=2283 P=n[B[1]]E="CFrame"d=U[E]E="new"r=d[E]E=3030 d={r(E,m,N)}X=P(I(d))P=3414905
                                                end
                                            else
                                                r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 3556432 or 3061723
                                            end
end
                                    elseif P<2302826 then
                                            if P<2293505 then
                                                if P<2292119 then
                                                    P=2375922 o=m
                                                else
                                                    X=n[B[4]]Q=n[B[3]]H=n[r]G=Q[H]N=d[G]Q="Pos"G=U[Q]m=N*G E=X(m)m="task"P=U["7n8pXoMEq8mjS"]N=p(8332401,{B[1],r})E=U[m]m="delay"X=E[m]m=1.5 E=X(m,N)X=n[B[5]]N=n[r]m={N}E={X(m)}X={I(E)}
                                                end
                                            else
                                                P=n[B[1]]r="Deandre"X=P(r)P=X and 6842629 or 15714518
                                            end
                                        elseif P<2314904 then
                                                if P<2311631 then
                                                    X="AutoAwaken"r=k[1]d=r P=n[B[1]]r=nil P[X]=d d="task"X=U[d]d="spawn"P=X[d]d=A(7145578,{B[1]})X=P(d)P=U["xfeYGVhKTEtSo"]X={}
                                                else
                                                    v=nil o=nil P=574224
                                                end
                                            else
                                                O="CFrame"P=n[B[4]]v=5991 H=U[O]O="new"Q=H[O]o=139 O=-10135 H={Q(O,o,v)}X=P(I(H))P=9607063
                                            end
end
                                    end
                                elseif P<2330215 then
                                        if P<2322057 then
                                            if P<2319192 then
                                                if P<2318569 then
                                                    O=P i="Name"v=N[i]i="Part"o=v==i P=o and 10604208 or 7902573 H=o
                                                else
                                                    P=X and 15183301 or 9285971
                                                end
                                            elseif P<2321010 then
                                                    i,h=o(v,i)P=i and 10411849 or 14435202
                                                else
                                                    X={}P=U["ZwxeQ6bwCZVHWI"]
                                                end
end
                                        elseif P<2325528 then
                                                if P<2322694 then
                                                    P=2722468 Q="Character"G=n[B[1]]N=G[Q]G="RaceTransformed"m=N[G]N="Value"E=m[N]d=not E X=d
                                                else
                                                    P=U["S6lVaUU3NGicPj"]X={}
                                                end
                                            else
                                                P=8455614 O=nil
                                            end
end
                                    elseif P<2359760 then
                                            if P<2353873 then
                                                if P<2339823 then
                                                    P=5072299
                                                else
                                                    P=14580106
                                                end
                                            else
                                                r=n[B[1]]E="Dough King"P=3741880 d=r(E)X=d
                                            end
                                        elseif P<2375427 then
                                                if P<2370665 then
                                                    H="FindFirstChild"N=E O="Humanoid"H=G[H]H=H(G,O)P=H and 15005256 or 4793980 Q=H
                                                else
                                                    X=n[B[1]]r=n[B[2]]P=X==r P=P and 9784964 or 477939
                                                end
                                            else
                                                P=v v=nil H=o or v P=U["Y527b2sN7qbKK"]X={H}
                                            end
end
                                    end
end
                            end
                        elseif P<2524327 then
                                if P<2464654 then
                                    if P<2427503 then
                                        if P<2393511 then
                                            if P<2383621 then
                                                if P<2378766 then
                                                    P=1609008
                                                else
                                                    N="workspace"m=U[N]N="Map"E=m[N]m="Ice"d=E[m]E="Door"X=d[E]d="CanCollide"P=X[d]P=P and 4929424 or 13471710
                                                end
                                            elseif P<2389410 then
                                                    P=10451816
                                                else
                                                    r="Core Brain"X="CheckTool"P=U[X]X=P(r)P=X and 3719203 or 1540736
                                                end
end
                                        elseif P<2420858 then
                                                if P<2416468 then
                                                    r=nil P=U["G3SMLWEJVsxo"]X={}
                                                else
                                                    r=nil X={}P=U["zi566nhmeeKr3m"]
                                                end
                                            else
                                                X="pcall"r=W(3575843,{B[3],B[1],B[4],B[5]})P=U[X]X=P(r)P=3361257
                                            end
end
                                    elseif P<2440829 then
                                            if P<2435417 then
                                                if P<2432871 then
                                                    G="Mastery"P=16222595 N=r==G X=N
                                                else
                                                    X={}P=U["nMQUJbM6NpdDS"]
                                                end
                                            elseif P<2436188 then
                                                    P=Q and 3332912 or 11721163
                                                else
                                                    m="string"E=U[m]N="Text"m="find"d=E[m]m=r[N]N="Swan Pirates"E=d(m,N)X=E P=E and 12614308 or 14395405
                                                end
end
                                        elseif P<2459649 then
                                                if P<2456598 then
                                                    O="game"N=79091703265657 m=85211729168715 E=2753915549 X={E
                                                    m}E=X m=4442272183 o="game"X={m,N}m=X N=7449423635 Q="table"G=100117331123089 X={N
                                                    G}G=U[Q]Q="find"N=X X=G[Q]H=U[O]O="PlaceId"Q=H[O]G=X(E,Q)H="table"Q=U[H]H="find"v="game"X=Q[H]O=U[o]o="PlaceId"H=O[o]Q=X(m,H)O="table"H=U[O]O="find"X=H[O]o=U[v]v="PlaceId"O=o[v]o=G v=P H=X(N,O)O=P P=G and 10106166 or 13033299
                                                else
                                                    P=10403339 E=2 d=r==E X=d
                                                end
                                            else
                                                d,G=E(m,d)P=d and 11418907 or 10887548
                                            end
end
                                    end
                                elseif P<2495217 then
                                        if P<2486071 then
                                            if P<2476862 then
                                                if P<2473880 then
                                                    r=k[1]P=r and 3191279 or 1969778
                                                else
                                                    P=nil X={P}P=U["KiVW5TlT3xIIK"]
                                                end
                                            elseif P<2481639 then
                                                    r="AutoSkullGuitar"X=n[B[1]]P=X[r]P=P and 11682539 or 5421968
                                                else
                                                    d=nil X={}P=U["6O9W65675KzUfz"]r=nil
                                                end
end
                                        elseif P<2492341 then
                                                if P<2490678 then
                                                    X=n[B[2]]d="Gun"P=X[d]P=P and 3785355 or 14131091
                                                else
                                                    h=nil P=1206351 g=nil
                                                end
                                            else
                                                G=N m=d Q=P P=N and 2317427 or 13373242
                                            end
end
                                    elseif P<2513931 then
                                            if P<2507837 then
                                                if P<2503853 then
                                                    X="ChestESP"P=U[X]X=P()P=10442776
                                                else
                                                    E=k[3]r=k[1]d=k[2]X=n[B[1]]P=X[d]P=P and 8502620 or 12403151
                                                end
                                            else
                                                o=O y="Haunted Castle"h="fireclickdetector"i=U[h]C=n[B[6]]P=2844916 a=C[y]L=a[o]K=L[v]v=nil L="ClickDetector"g=K[L]o=nil h=i(g)
                                            end
                                        elseif P<2523755 then
                                                if P<2519006 then
                                                    X="next"P=U[X]E="GetChildren"r=n[B[2]]d="Characters"X=r[d]E=X[E]E={E(X)}d=E[2]r=E[1]E=P P=5844475
                                                else
                                                    P=n[B[5]]X=P(r)P=5734209
                                                end
                                            else
                                                X="pcall"P=U[X]r=A(9217247,{})X=P(r)P=7135912
                                            end
end
                                    end
end
                            elseif P<2596544 then
                                    if P<2555360 then
                                        if P<2537395 then
                                            if P<2529014 then
                                                if P<2525721 then
                                                    X=n[B[1]]r="AutoOpenColors"P=X[r]P=P and 3266204 or 13532717
                                                else
                                                    X=n[B[1]]r="AutoDungeon"P=X[r]P=P and 3176204 or 8399331
                                                end
                                            elseif P<2531198 then
                                                    P=U["kA4a1G75aGGy"]X={}
                                                else
                                                    E="Character"d=n[B[1]]r=d[E]P=1865212 d="FindFirstChild"d=r[d]E="HumanoidRootPart"d=d(r,E)X=d
                                                end
end
                                        elseif P<2552591 then
                                                if P<2552174 then
                                                    P=4333992
                                                else
                                                    E="AcceptQuests"d=n[B[1]]r=d[E]P=r and 14550115 or 16372966 X=r
                                                end
                                            else
                                                E=P N=n[B[1]]G="Character"m=N[G]N="FindFirstChild"G="Head"N=m[N]N=N(m,G)P=N and 8979936 or 3215752 d=N
                                            end
end
                                    elseif P<2587097 then
                                            if P<2585835 then
                                                if P<2565680 then
                                                    i=P v=O P=O and 5612 or 6482801
                                                else
                                                    dd=P md="getmetatable"ld=U[md]Ed=ld~=O Sd=Ed P=Ed and 7682521 or 13969442
                                                end
                                            else
                                                X="pcall"r=b(13435476,{B[1]})P=U[X]X=P(r)P=1117158
                                            end
                                        elseif P<2593947 then
                                                if P<2593332 then
                                                    O="table"H=U[O]Q=nil G=m O="insert"P=H[O]H=P(d,G)P=13053091 G=nil
                                                else
                                                    K="Name"i=P g=E[K]K="Ice-Ice"h=g~=K P=h and 1028291 or 5484415 v=h
                                                end
                                            else
                                                P=6776142
                                            end
end
                                    end
                                elseif P<2616640 then
                                        if P<2611795 then
                                            if P<2609490 then
                                                if P<2604620 then
                                                    X="pcall"r=w(11324272,{})P=U[X]X=P(r)P=7980359
                                                else
                                                    h=i P=5105032 H=nil m=h i=nil
                                                end
                                            elseif P<2609878 then
                                                    X={}P=U["aBFYeKlwv5JD"]
                                                else
                                                    m="FindFirstChild"m=d[m]m=m(d,r)X=m P=m and 6285266 or 10070679
                                                end
end
                                        elseif P<2614936 then
                                                if P<2612545 then
                                                    r="task"X=U[r]r="wait"P=X[r]r=.5 X=P(r)X="FireInvoke"d="Check"r="Awakener"P=U[X]X=P(r,d)X="FireInvoke"r="Awakener"P=U[X]d="Awaken"X=P(r,d)P=1833177
                                                else
                                                    d=n[B[4]]P=U["diyaUCdFtxeUoA"]G="table"N=U[G]E="RefreshDesc"G="concat"m=N[G]G="\n"N={m(r,G)}r=nil E=d[E]E=E(d,I(N))X={}
                                                end
                                            else
                                                d="callback"X=n[B[1]]P=X[d]X=P(r)P=15411254
                                            end
end
                                    elseif P<2643473 then
                                            if P<2637493 then
                                                if P<2626216 then
                                                    r=n[B[1]]P=r and 12696679 or 530880 X=r
                                                else
                                                    X="pcall"r=A(1686093,{B[1]})P=U[X]X=P(r)P=U["BiZ3brSzi5Of"]X={}
                                                end
                                            else
                                                h="Vector3"i="HumanoidRootPart"G="EquipWeapon"N=U[G]G=N()G="AutoHaki"N=U[G]G=N()P=16716379 O="CFrame"N=n[B[4]]H=U[O]O="new"g=0 Q=H[O]v=d[i]i="Position"o=v[i]i=U[h]h="new"v=i[h]h=0 i=v(h,m,g)O=o+i H=Q(O)Q=true G=N(H,Q)
                                            end
                                        elseif P<2655766 then
                                                if P<2643936 then
                                                    X={}P=U["WtkKZBmhUfDw"]
                                                else
                                                    P=3361257
                                                end
                                            else
                                                P=n[B[1]]X=P()X={}P=U["XlQheWcFogTo"]
                                            end
end
                                    end
end
                            end
end
                    elseif P<2918426 then
                            if P<2766086 then
                                if P<2719175 then
                                    if P<2690912 then
                                        if P<2682975 then
                                            if P<2681565 then
                                                if P<2666553 then
                                                    O="B"N="Position"d="math"Q="Position"X=U[d]H="G"d="floor"P=X[d]m=r[N]G=n[B[2]]N=G[Q]E=m-N m="Magnitude"d=E[m]E="string"X=P(d)d=X X=U[E]E="format"P=X[E]G=n[B[3]]E="<font color='rgb(%d,%d,%d)'>[ %s ]</font> <font color='rgb(169,169,169)'> %dm </font>"Q="R"N=G[Q]G=255 m=N*G Q=n[B[3]]G=Q[H]Q=255 N=G*Q H=n[B[3]]Q=H[O]H=255 G=Q*H Q=n[B[4]]X={P(E,m,N,G,Q,d)}P=U["WW26c9eiFc127"]X={I(X)}
                                                else
                                                    P=n[B[1]]E="CakesList"d=n[B[2]]r=d[E]X=P(r)r=X E=n[B[3]]m="AcceptQuests"d=E[m]P=d and 13604383 or 8642604 X=d
                                                end
                                            elseif P<2682511 then
                                                    r=k[1]d=k[2]m="Rarity"E="Rarity"X=r[E]E=d[m]P=X~=E P=P and 15470067 or 8189298
                                                else
                                                    m=1208 E="CFrame"P=n[B[1]]d=U[E]E="new"r=d[E]N=870 E=5867 d={r(E,m,N)}X=P(I(d))X={}P=U["LaCOEmpfMCx5M"]
                                                end
end
                                        elseif P<2687454 then
                                                if P<2685359 then
                                                    r="AutoTushita"X=n[B[1]]P=X[r]P=P and 1522230 or 9416425
                                                else
                                                    E=n[B[3]]m=E(r)P=16284641
                                                end
                                            else
                                                r="AutoBerrySafe"X=n[B[1]]P=X[r]P=P and 4670005 or 4751450
                                            end
end
                                    elseif P<2706688 then
                                            if P<2697691 then
                                                if P<2695914 then
                                                    H="GetServerTimeNow"v="Sky"X=n[B[1]]d="Server Time: "N="os"m=U[N]N="date"E=m[N]G=n[B[2]]H=G[H]Q={H(G)}N="%H:%M:%S"m=E(N,I(Q))r=d..m P=X..r E="Moon Phase: "N=P X=n[B[1]]r=P N="Mirage Island: "Q=n[B[3]]o=n[B[4]]O=o[v]o="MoonTextureId"H=O[o]G=Q[H]Q="0/5"m=G or Q d=E..m P=X..d Q=P E=n[B[1]]O=P h="_WorldOrigin"d=P i=n[B[2]]v=i[h]i="Locations"o=v[i]i="Mirage Island"v="FindFirstChild"v=o[v]v=v(o,i)o="Spawned"H=v and o O="Not Found"G=H or O m=N..G X=E..m E=X X=nil m=X X=n[B[5]]G="Dough King"N=X(G)P=N and 1482130 or 13158870
                                                else
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 8702310 or 4695506
                                                end
                                            elseif P<2699982 then
                                                    i="Name"v="string"o=U[v]P=9386249 v="find"O=o[v]v=N[i]i="Fruit"o=O(v,i)Q=o
                                                else
                                                    i=P L="SecretDoor"K=o[L]L="Transparency"g=K[L]K=1 h=g<K P=h and 15357320 or 670718 v=h
                                                end
end
                                        elseif P<2714537 then
                                                if P<2711533 then
                                                    X="pairs"P=U[X]G="GetDescendants"m=n[B[1]]G=m[G]N={G(m)}m={P(I(N))}E=m[3]X=m[1]d=m[2]m=X P=159151
                                                else
                                                    P=E and 12671801 or 825474
                                                end
                                            else
                                                E="Auto_Fishing"d=n[B[1]]r=d[E]P=r and 9150983 or 6149684 X=r
                                            end
end
                                    end
                                elseif P<2737566 then
                                        if P<2725040 then
                                            if P<2721778 then
                                                if P<2719826 then
                                                    P="Tampering detected. This incident will be reported."X={P}P=U["SrIOMe92b7uT"]
                                                else
                                                    P=d P=not X P=P and 16138134 or 13841294
                                                end
                                            elseif P<2722024 then
                                                    E="math"P=n[B[2]]d=U[E]X="FogEnd"E="huge"r=d[E]P[X]=r r="FantasySky"P=n[B[2]]X="FindFirstChild"X=P[X]X=X(P,r)P=X and 7436280 or 1240462
                                                else
                                                    P=X and 7611387 or 11690086
                                                end
end
                                        elseif P<2732021 then
                                                if P<2729289 then
                                                    X="CollectAzure"r=k[1]d=r P=n[B[1]]P[X]=d P=not r P=P and 6693571 or 14000280
                                                else
                                                    Ad[23]=10000 Ad[4]=S()Ad[10]=S()n[Ad[4]]=Ad[5]Ad[15]=2 Ad[12]=256 Ad[9]=100 n[Ad[10]]=Ad[9]Ad[19]="tostring"Ad[11]=n[Ad[4]]Ad[9]=Ad[11]%Ad[12]Ad[11]=S()n[Ad[11]]=Ad[9]Ad[13]=n[Ad[4]]Ad[14]=n[Ad[10]]Ad[12]=Ad[13]%Ad[14]Ad[13]=1 Ad[9]=Ad[12]+Ad[13]Ad[12]=S()n[Ad[12]]=Ad[9]Ad[14]=n[Ad[4]]Ad[13]=Ad[14]%Ad[15]Ad[14]=0 Ad[16]=":"Ad[9]=Ad[13]==Ad[14]Ad[14]=":(%d*):"Ad[13]=S()n[Ad[13]]=Ad[9]Ad[22]=0 Ad[18]=U[Ad[19]]Ad[20]=n[ld]Ad[21]={Ad[20](Ad[22],Ad[23])}Ad[19]=Ad[18](I(Ad[21]))Ad[18]=":"Ad[17]=Ad[19]..Ad[18]Ad[15]=Ad[16]..Ad[17]Ad[9]="gsub"Ad[16]="pcall"Ad[9]=Ad[2][Ad[9]]Ad[9]=Ad[9](Ad[2],Ad[14],Ad[15])Ad[14]=S()Ad[17]=Y(14714874,{ld
                                                    Ad[4],Bd
                                                    E
                                                    Ad[3]
                                                    Ad[13],Ad[14]
                                                    Ad[10]
                                                    Ad[12]
                                                    Ad[11],Yd})n[Ad[14]]=Ad[9]Ad[15]=U[Ad[16]]Ad[16]={Ad[15](Ad[17])}Ad[9]={I(Ad[16])}Ad[15]=n[Ad[13]]P=Ad[15]and 14606119 or 12231705
                                                end
                                            else
                                                P=9567824
                                            end
end
                                    elseif P<2747398 then
                                            if P<2740812 then
                                                if P<2739178 then
                                                    X=n[B[1]]r="AutoKillPlayerinTrial"P=X[r]P=P and 2517729 or 965632
                                                else
                                                    d="LoadItem"X="FireInvoke"P=U[X]X=P(d,r)P=8160039
                                                end
                                            else
                                                P=h P=i and 6501413 or 11907876
                                            end
                                        elseif P<2764393 then
                                                if P<2750133 then
                                                    m=n[B[1]]N="Backpack"E=m[N]X=E P=16098695
                                                else
                                                    E="getdungeonislands"d=U[E]E=d()P=E and 15922807 or 5663225
                                                end
                                            else
                                                d=nil r=nil P=U["68UnRRZiakgUg"]X={}
                                            end
end
                                    end
end
                            elseif P<2858705 then
                                    if P<2831261 then
                                        if P<2798084 then
                                            if P<2790462 then
                                                if P<2778935 then
                                                    P=O P=7697163 Q=H
                                                else
                                                    P=X and 5815823 or 4772660
                                                end
                                            elseif P<2794494 then
                                                    X="AutoSailBoat"P=U[X]X=P()P=14608040
                                                else
                                                    d="SickMan"r="ProQuestProgress"X="FireInvoke"P=U[X]X=P(r,d)P=7405624
                                                end
end
                                        elseif P<2829230 then
                                                if P<2821952 then
                                                    h="table"i=U[h]h="unpack"v=i[h]O=v P=6689712
                                                else
                                                    r=nil X={}P=U["jLqqiuRQubTnm"]
                                                end
                                            else
                                                P=U["kArrWsZ9Qch2OQ"]X={}
                                            end
end
                                    elseif P<2837989 then
                                            if P<2832053 then
                                                if P<2831927 then
                                                    E="math"X=U[E]N="PointsSlider"E="clamp"P=X[E]m=n[B[2]]E=m[N]m=1 X=P(E,m,d)m="AddPoint"E=X X="FireInvoke"P=U[X]X=P(m,r,E)E=nil P=6182563
                                                else
                                                    m="callback"E=n[B[3]]d=E[m]X=d P=12550427
                                                end
                                            else
                                                X="pcall"r=W(2227360,{B[1]})P=U[X]X=P(r)P=12350446
                                            end
                                        elseif P<2856485 then
                                                if P<2845437 then
                                                    O,v=Q(H,O)P=O and 2510825 or 6737113
                                                else
                                                    m="Sea_1"E=n[B[3]]X=E[m]P=X[r]d=P P=14154635
                                                end
                                            else
                                                r=nil X={}P=U["sfk2xR4h3fspTD"]
                                            end
end
                                    end
                                elseif P<2882304 then
                                        if P<2875728 then
                                            if P<2863573 then
                                                if P<2860903 then
                                                    X={}P=U["gNBmybeROArgpT"]r=l(r)
                                                else
                                                    d="FindFirstChild"E="ESPquantumONYX"X=n[r]d=X[d]d=d(X,E)P=not d P=P and 3973862 or 5324113
                                                end
                                            elseif P<2874294 then
                                                    Ad[85]="table"Ad[89]="string"Ad[84]=U[Ad[85]]Ad[85]="insert"Ad[90]="Name"Ad[83]=Ad[84][Ad[85]]Ad[88]=U[Ad[89]]Ad[89]="split"P=7794011 Ad[87]=Ad[88][Ad[89]]Ad[89]=Ad[82][Ad[90]]Ad[90]="-"Ad[88]=Ad[87](Ad[89],Ad[90])Ad[87]=1 Ad[86]=Ad[88][Ad[87]]Ad[87]=" Fruit"Ad[85]=Ad[86]..Ad[87]Ad[84]=Ad[83](Ad[74],Ad[85])Ad[86]="Price"Ad[84]=n[q]Ad[85]="HighValueFruitPrices"Ad[83]=Ad[84][Ad[85]]Ad[85]="Name"Ad[84]=Ad[82][Ad[85]]Ad[85]=Ad[82][Ad[86]]Ad[83][Ad[84]]=Ad[85]
                                                else
                                                    P=6622171 Ad[17]="table"Ad[16]=U[Ad[17]]Ad[15]=Ad[16]~=D Ad[13]=Ad[15]
                                                end
end
                                        elseif P<2881255 then
                                                if P<2877208 then
                                                    d=nil P=5443154
                                                else
                                                    i=n[B[3]]v=P O=P P=i and 11412569 or 3234989 o=i
                                                end
                                            else
                                                rd="math"Bd=U[rd]rd="random"cd=Bd[rd]nd=cd~=y sd=nd P=15801294
                                            end
end
                                    elseif P<2906048 then
                                            if P<2903436 then
                                                if P<2884596 then
                                                    P=n[B[1]]E="Position"d=r[E]E="DistanceFromCharacter"E=P[E]X={E(P,d)}X={I(X)}P=U["a8NCptV1MX2Dse"]
                                                else
                                                    r=nil P=521343
                                                end
                                            else
                                                X=n[B[1]]r="AutoFarmCursedCaptain"P=X[r]P=P and 10385587 or 10300596
                                            end
                                        elseif P<2911985 then
                                                if P<2907264 then
                                                    P=X and 7092208 or 1236046
                                                else
                                                    O="Mastery"X=r==O P=X and 16080416 or 10963611
                                                end
                                            else
                                                h=n[B[4]]g="FishReplicated"i=h[g]P=13328252 h="FishingRequest"K=true g=100 X=i[h]h="CastLineAtLocation"i="InvokeServer"i=X[i]i=i(X,h,O,g,K)
                                            end
end
                                    end
end
                            end
                        elseif P<3036450 then
                                if P<2975439 then
                                    if P<2951767 then
                                        if P<2938352 then
                                            if P<2929720 then
                                                if P<2923957 then
                                                    H="FastSettings"Q=n[B[2]]G=Q[H]Q="Legit Attack"N=G==Q P=N and 10334921 or 4794424
                                                else
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 4249601 or 12091305
                                                end
                                            elseif P<2936079 then
                                                    r="task"X=U[r]r="wait"P=X[r]r=.1 X=P(r)P=X and 12511324 or 10917667
                                                else
                                                    X=d P=E P=14395405
                                                end
end
                                        elseif P<2945491 then
                                                if P<2939510 then
                                                    P=o and 9103673 or 2326109
                                                else
                                                    P=o and 1326668 or 6627479
                                                end
                                            else
                                                N=E H="string"Q=U[H]O="Name"H="find"P=Q[H]H=G[O]O="Fruit"Q=P(H,O)P=Q and 11865736 or 13263905
                                            end
end
                                    elseif P<2961955 then
                                            if P<2957815 then
                                                if P<2956513 then
                                                    P=12923807
                                                else
                                                    d=nil P=13898534
                                                end
                                            else
                                                d=n[B[2]]m=true P=U["QoqZF7uYZroroP"]E={d(r,m)}X={I(E)}
                                            end
                                        elseif P<2973849 then
                                                if P<2967376 then
                                                    X="AutoAgility"P=n[B[1]]r=k[1]d=r r=nil P[X]=d P=U["OVKT96VTZOvAsx"]X={}
                                                else
                                                    E="FindFirstChild"E=m[E]N="PartVelocuty"E=E(m,N)P=E and 5213793 or 11509500
                                                end
                                            else
                                                P=14154635 G="Sea_3"N=n[B[3]]m=N[G]E=m[r]d=E
                                            end
end
                                    end
                                elseif P<3001331 then
                                        if P<2992453 then
                                            if P<2986237 then
                                                if P<2979047 then
                                                    d="RichSon"X="FireInvoke"P=U[X]r="ProQuestProgress"X=P(r,d)P=11964004
                                                else
                                                    v="Health"o=Q[v]v=0 O=o>v H=O P=4710783
                                                end
                                            elseif P<2991418 then
                                                    O="Description"n[N]=X G=n[B[1]]Q="SaveManager"P=G[Q]g="desc"H="Default"G="Get"G=P[G]Q=n[E]G=G(P,Q,m)Q="Title"v=P h=n[N]i=h[g]P=i and 7849805 or 9453367 o=i
                                                else
                                                    P=12297907
                                                end
end
                                        elseif P<2998730 then
                                                if P<2996860 then
                                                    P=5734271 v=nil i=nil
                                                else
                                                    H="task"P=S()n[P]=G G=P N=E Q=U[H]H="spawn"P=Q[H]H=b(9022205,{B[3]
                                                    G,B[4]
                                                    r})N=nil G=l(G)Q=P(H)P=16721053
                                                end
                                            else
                                                d="math"Q="Position"X=U[d]d="floor"N="Position"P=X[d]m=r[N]G=n[B[2]]N=G[Q]E=m-N m="Magnitude"d=E[m]E="string"X=P(d)d=X X=U[E]E="format"P=X[E]G="Name"N=n[B[2]]E="<font color='rgb(255,255,255)'>[</font> <font color='rgb(173,216,230)'>%s</font> <font color='rgb(255,255,255)'>]</font>\n<font color='rgb(255,255,255)'>[</font> <font color='rgb(0,0,139)'>%d studs</font> <font color='rgb(255,255,255)'>]</font>"m=N[G]X={P(E,m,d)}X={I(X)}P=U["v5MpFkJ3c0Ec3"]
                                            end
end
                                    elseif P<3016784 then
                                            if P<3012419 then
                                                if P<3007492 then
                                                    X="Destroy"P=7515094 X=d[X]X=X(d)
                                                else
                                                    X=Q P=H P=2038176
                                                end
                                            else
                                                E,G=m(d,E)P=E and 10496789 or 14591372
                                            end
                                        elseif P<3034499 then
                                                if P<3029849 then
                                                    r=p(3653600,{B[1]})X="pcall"P=U[X]X=P(r)P=16641869
                                                else
                                                    d="Cup"r="CheckTool"X=U[r]r=X(d)P=not r P=P and 435942 or 6340714
                                                end
                                            else
                                                X={}P=U["OB84UVnwtTfRs"]
                                            end
end
                                    end
end
                            elseif P<3086263 then
                                    if P<3054491 then
                                        if P<3046130 then
                                            if P<3043647 then
                                                if P<3040239 then
                                                    r="task"X=U[r]r="wait"P=X[r]m="Vector3"G=-7326 r=.2 N=2283 X=P(r)r="GetDistance"X=U[r]E=U[m]m="new"d=E[m]m=3030 E={d(m,N,G)}r=X(I(E))X=10 P=r<X P=P and 16373467 or 3037171
                                                else
                                                    X="FireInvoke"m="CFrame"d="requestEntrance"P=U[X]r=k[1]X=P(d,r)H=0 P=n[B[1]]X=P()P="CFrame"G="Vector3"r=nil d=X E=d[m]N=U[G]G="new"m=N[G]G=0 Q=40 N=m(G,Q,H)X=E+N d[P]=X E="task"X=U[E]E="wait"P=X[E]E=.5 d=nil X=P(E)P=U["8t7tOUgX73zUBX"]X={}
                                                end
                                            elseif P<3045096 then
                                                    d=true P=n[B[3]]X=P(r,d)P=6722337
                                                else
                                                    X={}P=U["JfLNQKgW7rcP"]r=l(r)
                                                end
end
                                        elseif P<3047286 then
                                                if P<3046905 then
                                                    i="CFrame"P=n[B[3]]v=O[i]o=P(v)P=10764947
                                                else
                                                    m=88.377502441406 P=n[B[3]]E="CFrame"d=U[E]N=-1390.6892089844 E="new"r=d[E]E=1457.8768310547 d={r(E,m,N)}X=P(I(d))P=7405624
                                                end
                                            else
                                                N="CFrame"X=n[B[2]]m=U[N]N="new"G=73 E=m[N]N=-382 Q=290 m={E(N,G,Q)}d=X(I(m))m="Waiting for night time"N=8 X=n[B[6]]P=13898534 E="Race V1-V2 Quest"d=X(E,m,N)
                                            end
end
                                    elseif P<3073607 then
                                            if P<3065462 then
                                                if P<3064695 then
                                                    P=U["Mx0pdGHmYhlN"]X={}
                                                else
                                                    P=n[B[1]]r=k[1]d=r X="JumpPower"P[X]=d X=n[B[1]]d="JumpPower"P=X[d]P=P and 1002649 or 297599
                                                end
                                            else
                                                P=1001705 m="Character"E=n[B[1]]d=E[m]X=d
                                            end
                                        elseif P<3085098 then
                                                if P<3078170 then
                                                    P=U["DiLbOFrTO9yL"]X={}r=nil
                                                else
                                                    i=P g="GetAttribute"K="State"g=v[g]g=g(v,K)K="ReeledIn"h=g==K P=h and 16334958 or 8624090 X=h
                                                end
                                            else
                                                E="Part"d="IsA"d=r[d]d=d(r,E)P=16407515 X=d
                                            end
end
                                    end
                                elseif P<3110578 then
                                        if P<3102914 then
                                            if P<3092412 then
                                                if P<3087488 then
                                                    P=1 n[B[1]]=P d=1 r=n[B[1]]X=r==d P=X and 11573189 or 15217815
                                                else
                                                    P=U["zvRL37QnTnMC"]d=true X={d}
                                                end
                                            elseif P<3096209 then
                                                    g={K
                                                    L,a
                                                    C}a="ipairs"P=y K=0 L=U[a]P=6739530 t={L(g)}a=t[1]y=t[3]C=t[2]
                                                else
                                                    L="PrimaryPart"v=n[B[3]]g=o[L]P=6548746 L="CFrame"h=g[L]i=v(h)
                                                end
end
                                        elseif P<3106243 then
                                                if P<3105751 then
                                                    v="Parent"o=G[v]O=P P=o and 12947315 or 4162713 H=o
                                                else
                                                    P=0 r=P P=n[B[1]]m="GetPlayers"m=P[m]m={m(P)}X=m[1]d=m[2]P=10159525 E=m[3]m=X
                                                end
                                            else
                                                X={}P=U["Tb771bBG3RZOM"]
                                            end
end
                                    elseif P<3118446 then
                                            if P<3115853 then
                                                if P<3110912 then
                                                    P=16348486 O="CanCollide"H=N[O]Q=not H X=Q
                                                else
                                                    P=nil X={P}P=U["GCegdB9ky8Up"]
                                                end
                                            else
                                                P=Q m=G P=12223093
                                            end
                                        elseif P<3119736 then
                                                if P<3119559 then
                                                    X="checkelites"P=U[X]X=P()r=X P=r and 15610525 or 11384606
                                                else
                                                    E="DescendantAdded"d=n[B[1]]r=nil X={}P=d[E]E=w(1231591,{B[3]})d="Connect"d=P[d]d=d(P,E)P=U["REcHIVJU6Gu5j"]
                                                end
                                            else
                                                P=3551369 E=n[B[1]]m="Character"d=E[m]m="RaceTransformed"E="FindFirstChild"E=d[E]E=E(d,m)X=E
                                            end
end
                                    end
end
                            end
end
                    end
                elseif P<3596532 then
                        if P<3370167 then
                            if P<3266319 then
                                if P<3207859 then
                                    if P<3165347 then
                                        if P<3141102 then
                                            if P<3133570 then
                                                if P<3125885 then
                                                    P=4623827
                                                else
                                                    X="StopTween"P=U[X]X=P()P=9215785
                                                end
                                            elseif P<3136331 then
                                                    X="AutoTaskEliteHunter"P=U[X]X=P()P=4256606
                                                else
                                                    P=9111011
                                                end
end
                                        elseif P<3152549 then
                                                if P<3146907 then
                                                    v="PrimaryPart"o=H[v]X=o P=o and 13645208 or 12979603
                                                else
                                                    H="Parent"Q=n[B[2]]P=321135 G=Q[H]N=not G E=N
                                                end
                                            else
                                                Ad[3]="table"Ad[2]=U[Ad[3]]Ad[3]="unpack"Ad[1]=Ad[2][Ad[3]]P=16622738 Td=Ad[1]
                                            end
end
                                    elseif P<3190483 then
                                            if P<3173256 then
                                                if P<3166491 then
                                                    P=V Ud=Z(1565418,{e})V=S()n[V]=M M=S()n[M]=Ud Id="FireInvoke"rd=S()Ud=T(2263761,{v})U[Id]=Ud Ud=S()nd=S()cd=S()Id=A(7784176,{o})n[Ud]=Id kd=Z(1684842,{Ud})Id=S()Xd=W(3042968,{Id})n[Id]=kd sd=Z(11766249,{u
                                                    jd,V
                                                    Id})kd=S()n[kd]=sd sd=S()n[sd]=Xd Bd=S()Xd=false n[nd]=Xd Yd="EnableNoclip"Xd=0 n[cd]=Xd Xd=5 n[Bd]=Xd Xd=nil ld="StopTween"n[rd]=Xd Sd=S()Xd=nil n[Sd]=Xd dd=w(13919880,{nd,rd,Id,Sd
                                                    o
                                                    q
                                                    kd,cd,Bd
                                                    sd})Ad[6]="MobCycle"Xd=S()Ad[2]="GetDistance"n[Xd]=dd Ed=W(7932266,{nd,Xd
                                                    Id})dd=S()n[dd]=Ed Ed=A(1704260,{nd,rd
                                                    Sd,Id})bd="task"U[ld]=Ed ld=S()Ed=nil n[ld]=Ed Ed=Y(5991304,{o
                                                    ld})U[Yd]=Ed Ed=W(610133,{o})Yd="DisableCollisions"U[Yd]=Ed Ed=1 Yd=S()n[Yd]=Ed Td=U[bd]bd="spawn"Ed=Td[bd]bd=A(592687,{Yd})Td=Ed(bd)Ad[3]=P Ed=S()Td=w(14777433,{o
                                                    i
                                                    m})n[Ed]=Td bd=w(14359823,{Ed})Td=S()n[Td]=bd bd=S()Ad[1]=Y(1038526,{Ed})n[bd]=Ad[1]Ad[1]=A(8034059,{o})U[Ad[2]]=Ad[1]Ad[2]="AutoHaki"Ad[1]=A(11017130,{o})U[Ad[2]]=Ad[1]Ad[2]="CheckTool"Ad[1]=b(765294,{o})U[Ad[2]]=Ad[1]Ad[1]=p(4554508,{o})Ad[2]="Checkfruit"U[Ad[2]]=Ad[1]Ad[1]=Y(12132707,{})Ad[2]="CheckInventory"U[Ad[2]]=Ad[1]Ad[2]="GetNearest"Ad[1]=W(10046338,{o,d
                                                    q})U[Ad[2]]=Ad[1]Ad[2]="EquipToolName"Ad[1]=w(13496403,{o})U[Ad[2]]=Ad[1]Ad[2]="EquipWeapon"Ad[1]=b(11748410,{o
                                                    q})U[Ad[2]]=Ad[1]Ad[2]="isalive"Ad[1]=W(13136124,{})U[Ad[2]]=Ad[1]Ad[1]=Y(9904062,{})Ad[2]="mynetwork"U[Ad[2]]=Ad[1]Ad[1]=b(16413634,{q,d,o})Ad[2]="BringEnemies"U[Ad[2]]=Ad[1]Ad[2]=S()Ad[1]={}n[Ad[2]]=Ad[1]Ad[5]=U[Ad[6]]Ad[1]=Ad[5]P=Ad[5]and 9787872 or 5160331
                                                else
                                                    m=d Q="NPCName"G=N[Q]O=n[B[1]]o="Data"H=O[o]O="LastClosestNPC"Q=H[O]P=G==Q P=P and 10426405 or 9228029
                                                end
                                            elseif P<3175567 then
                                                    P=10175538 bd="unpack"Td=U[bd]md=Td
                                                else
                                                    X="AutoDungeonFull"P=U[X]X=P()P=8399331
                                                end
end
                                        elseif P<3207069 then
                                                if P<3199715 then
                                                    d="task"X=U[d]d="spawn"P=X[d]d=n[B[1]]X=P(d)P=1969778
                                                else
                                                    X="AutoFarmThirdSea"P=U[X]X=P()P=14990943
                                                end
                                            else
                                                Q=n[B[3]]H="Character"G=Q[H]P=5041196 Q="Humanoid"N=G[Q]G="Health"m=N[G]N=0 E=m<=N r=E
                                            end
end
                                    end
                                elseif P<3237341 then
                                        if P<3226184 then
                                            if P<3210429 then
                                                if P<3208771 then
                                                    X=false X={X}P=U["qeaEfoUq7gfJ"]
                                                else
                                                    P=U["xXXwe4NmeA2nT1"]X={}
                                                end
                                            elseif P<3214722 then
                                                    Q=Q+O v=not o N=Q<=H N=v and N v=Q>=H v=o and v N=v or N v=15836081 P=N and v N=9129557 P=P or N
                                                else
                                                    X=d P=E P=6583007
                                                end
end
                                        elseif P<3231254 then
                                                if P<3229492 then
                                                    o=i P=h P=i and 13131527 or 14608412
                                                else
                                                    P=n[B[4]]d=n[B[5]]E=d()d=1 r=E[d]X=P(r)r=X P=r and 14896766 or 4156427
                                                end
                                            else
                                                P=v P=o and 14251193 or 11433499 H=o
                                            end
end
                                    elseif P<3251568 then
                                            if P<3239710 then
                                                if P<3239519 then
                                                    r=2500 P=n[B[2]]X="FogEnd"P[X]=r P=1478511
                                                else
                                                    P=549217
                                                end
                                            else
                                                m=nil Q=nil N=nil O=nil r=l(r)E=nil P=U["O6qPw4Z9P7XO"]G=nil H=nil X={}
                                            end
                                        elseif P<3260842 then
                                                if P<3257895 then
                                                    P=n[B[1]]X=P()P=U["LpEtoM9iHzRAj"]X={}
                                                else
                                                    r=nil P=U["SaxgmzJCXTiR1F"]d=nil X={}
                                                end
                                            else
                                                r="task"X=U[r]m="AutoFarm"r="wait"P=X[r]r=.2 X=P(r)E=n[B[1]]d=E[m]r=not d P=r and 14232269 or 1917980 X=r
                                            end
end
                                    end
end
                            elseif P<3309991 then
                                    if P<3294293 then
                                        if P<3288584 then
                                            if P<3279167 then
                                                if P<3266988 then
                                                    v="Sea_2"o=N[v]P=14397796 H=o
                                                else
                                                    r=k[1]d=r X="Gun"P=n[B[1]]r=nil P[X]=d P=U["CIhlwJMP1rZZoH"]X={}
                                                end
                                            elseif P<3280792 then
                                                    y=t P=R P=13034210
                                                else
                                                    X="FindFirstChild"P=n[B[1]]r="RootPart"X=P[X]X=X(P,r)r=S()n[r]=X X=n[r]P=not X P=P and 15964344 or 1171705
                                                end
end
                                        elseif P<3293069 then
                                                if P<3291208 then
                                                    P=U["AKlJ8cs7SaZH"]X={}
                                                else
                                                    P=r P=not X P=P and 4145726 or 8227420
                                                end
                                            else
                                                P=249440
                                            end
end
                                    elseif P<3303666 then
                                            if P<3302615 then
                                                if P<3297116 then
                                                    X={}P=U["gA8Fb0cQt73q"]
                                                else
                                                    x="IslandChunks"R=h[x]t=P x="FindFirstChild"x=R[x]M="E"x=x(R,M)y=x P=x and 13493549 or 11816316
                                                end
                                            else
                                                P=d P=r and 3895037 or 7595668
                                            end
                                        elseif P<3306203 then
                                                if P<3305678 then
                                                    P=n[B[10]]d=n[B[11]]r[P]=d P=n[B[12]]d={P(r)}X={I(d)}P=U["GVyBkUTgNXSbg"]
                                                else
                                                    Q=not d P=Q and 3553739 or 6270429
                                                end
                                            else
                                                P=n[B[2]]X={P(r)}X={I(X)}P=U["d1Rir6wacXd6"]
                                            end
end
                                    end
                                elseif P<3332852 then
                                        if P<3319599 then
                                            if P<3312570 then
                                                if P<3310996 then
                                                    Bd="__lt"C="__debug"J="__sub"H="__mode"dd=Y(6997010,{B[2]})X="__index"u="__mul"g="__pairs"e=Y(8577721,{B[2]})x="__concat"v=A(4855341,{B[2]})Ud=Y(12646616,{B[2]})K=W(15434668,{B[2]})M=p(12343399,{B[2]})m="__metatable"V="__div"D=Y(7158588,{B[2]})a=p(7446768,{B[2]})h=p(10827907,{B[2]})Pd=w(795657,{B[2]})O="k"i="__len"G="__gc"Xd=W(12218004,{B[2]})R=w(11000150,{B[2]})z="__unm"r=k[1]y=W(5784079,{B[2]})L="__ipairs"E=Y(2507766,{B[1],B[2]})rd=w(5464151,{B[2]})Id="__mod"o="__call"N=false cd=w(2149688,{B[2]})kd=b(2656341,{B[2]})q="__add"sd="__pow"t="__tostring"nd="__eq"d="__newindex"Sd="__le"jd=A(9177099,{B[2]})Q=A(6553698,{B[2]})P={[X]=r,[d]=E,[m]=N
                                                    [G]=Q
                                                    [H]=O
                                                    [o]=v
                                                    [i]=h
                                                    [g]=K,[L]=a
                                                    [C]=y
                                                    [t]=R,[x]=M
                                                    [z]=e
                                                    [q]=Pd,[J]=D,[u]=jd
                                                    [V]=Ud,[Id]=kd,[sd]=Xd
                                                    [nd]=cd
                                                    [Bd]=rd,[Sd]=dd}d=P P=n[B[3]]E={}X={P(E,d)}X={I(X)}P=U["bTtKDNVwpKZQ"]
                                                else
                                                    X="Mink"P=r==X P=P and 5263946 or 11218446
                                                end
                                            elseif P<3314948 then
                                                    Q=nil H=nil P=11492998
                                                else
                                                    a="CFrame"o=l(o)P=U["MLLNLU2MXDrHaD"]r=nil L=n[d]m=l(m)d=l(d)X={}K=L[a]h=nil i=v(K,G)G=nil v=nil
                                                end
end
                                        elseif P<3331172 then
                                                if P<3327703 then
                                                    m="Oroshi"X="EquipSword"P=U[X]X=P(m)X="CustomFarm"P=U[X]X=P()P=12061423
                                                else
                                                    X="FireInvoke"d="Buy"r="CyborgTrainer"P=U[X]X=P(r,d)P=12297907
                                                end
                                            else
                                                y=P K=g R="string"t=G==R C=t P=t and 6494264 or 4508333
                                            end
end
                                    elseif P<3352505 then
                                            if P<3351078 then
                                                if P<3350052 then
                                                    O="NumberRange"P="Lifetime"H=U[O]O="new"Q=H[O]O=0 H=Q(O)G[P]=H P=6858094
                                                else
                                                    P=n[B[1]]X="attackplayers"r=k[1]d=r P[X]=d r=nil P=U["oiZ2WuYB3H0HT"]X={}
                                                end
                                            else
                                                P=v H=o P=7902573
                                            end
                                        elseif P<3363389 then
                                                if P<3361111 then
                                                    P=E X=d P=8365546
                                                else
                                                    r="task"X=U[r]r="wait"P=X[r]r=.1 X=P(r)P=X and 10710360 or 285693
                                                end
                                            else
                                                P=X and 11141813 or 12282088
                                            end
end
                                    end
end
                            end
                        elseif P<3498684 then
                                if P<3431807 then
                                    if P<3407269 then
                                        if P<3389839 then
                                            if P<3385005 then
                                                if P<3375295 then
                                                    P=X and 1964554 or 2198925
                                                else
                                                    P=9639927
                                                end
                                            elseif P<3386745 then
                                                    m="CFrame"P=n[B[4]]G=719 N=6 E=U[m]m="new"d=E[m]m=4852 E={d(m,N,G)}X=P(I(E))P=6514402
                                                else
                                                    P=n[B[1]]X=P()X={}P=U["jDnwA4Ce3aaiec"]
                                                end
end
                                        elseif P<3397135 then
                                                if P<3390496 then
                                                    P=d and 13013408 or 9737715
                                                else
                                                    P=X and 9013456 or 5877442
                                                end
                                            else
                                                P=n[B[3]]X=P(r)d=X P=d and 4443780 or 487042
                                            end
end
                                    elseif P<3416142 then
                                            if P<3415847 then
                                                if P<3409014 then
                                                    K="TrussPart"g="IsA"g=G[g]P=6694764 g=g(G,K)i=g
                                                else
                                                    r="task"N=2283 X=U[r]r="wait"P=X[r]r=.2 X=P(r)m="Vector3"G=-7326 r="GetDistance"X=U[r]E=U[m]m="new"d=E[m]m=3030 E={d(m,N,G)}r=X(I(E))X=10 P=r<X P=P and 847907 or 3414905
                                                end
                                            else
                                                X=true X={X}P=U["i0WrgywwrRrY3"]
                                            end
                                        elseif P<3428867 then
                                                if P<3420964 then
                                                    X={}P=U["3y9yvVOOrgJkV"]
                                                else
                                                    P=O and 8615856 or 8455614
                                                end
                                            else
                                                X=n[B[1]]r="Auto_Saber"P=X[r]P=P and 13262095 or 7192545
                                            end
end
                                    end
                                elseif P<3463997 then
                                        if P<3448576 then
                                            if P<3440557 then
                                                if P<3434692 then
                                                    r="Head"P=n[B[1]]X="FindFirstChild"X=P[X]X=X(P,r)r=X P=not r P=P and 1554457 or 2662998
                                                else
                                                    X="pcall"r=A(8557636,{B[1]})P=U[X]X=P(r)P=5683180
                                                end
                                            elseif P<3443747 then
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 3991778 or 10837506
                                                else
                                                    P=1705635 g=nil o=nil
                                                end
end
                                        elseif P<3457539 then
                                                if P<3455647 then
                                                    r="CommE"X=n[B[3]]d=true P=X[r]r="Ken"X="FireServer"X=P[X]X=X(P,r,d)P=7042985
                                                else
                                                    G="Color3"H=60 N=U[G]Q=60 G="fromRGB"m=N[G]P=9477891 G=255 N=m(G,Q,H)X=N
                                                end
                                            else
                                                P=10690562
                                            end
end
                                    elseif P<3477542 then
                                            if P<3471277 then
                                                if P<3467651 then
                                                    Q="FindFirstChild"Q=i[Q]h="TikiOutpost"Q=Q(i,h)P=Q and 845134 or 9406756
                                                else
                                                    d="CurrentCF"r=n[B[2]]X=r[d]P=X and 14551543 or 16286659
                                                end
                                            else
                                                P=11380743 m=nil
                                            end
                                        elseif P<3491702 then
                                                if P<3489421 then
                                                    v="string"o=U[v]v="match"O=o[v]h="tonumber"v="%d+"o=O(Q,v)i=U[h]v=P h=i(o)i=0 O=h or i o=nil P=656571 G=O
                                                else
                                                    X=0 P=E>X P=P and 12591199 or 8801727
                                                end
                                            else
                                                O=n[B[2]]H=""P=O and 1844798 or 115136
                                            end
end
                                    end
end
                            elseif P<3552468 then
                                    if P<3523880 then
                                        if P<3509933 then
                                            if P<3501286 then
                                                if P<3499612 then
                                                    v="Handle"o="FindFirstChild"P=9196298 o=G[o]o=o(G,v)H=o
                                                else
                                                    d=n[B[4]]Q="CFrame"O=399.0869 H=1002.2955 G=U[Q]Q="new"N=G[Q]P=12511755 Q=4620.6157 G={N(Q,H,O)}m=d(I(G))
                                                end
                                            elseif P<3506043 then
                                                    G=P N=X X=N P=N and 9414461 or 2038176
                                                else
                                                    o="Name"N=m Q=P i="Name"O=G[o]v=n[B[1]]o=v[i]H=O~=o P=H and 139655 or 4797235 X=H
                                                end
end
                                        elseif P<3519118 then
                                                if P<3518423 then
                                                    H="table"Q=U[H]H="insert"P=Q[H]Q=P(r,G)Q="BringEnemies"P=U[Q]Q=P(G)P=7892132
                                                else
                                                    v="Vector3"g="math"o=U[v]v="new"i="X"X=o[v]K="Y"v=G[i]h=U[g]g="max"i=h[g]g=H[K]h=i(g,E)g="Z"i=G[g]o=X(v,h,i)O=o X=n[B[1]]i=O v="LastCastLocation"P=8911553 X[v]=i
                                                end
                                            else
                                                d="GetDistance"m="NPCPos"X=U[d]E=U[m]m={E()}d=X(I(m))X=20 P=d<=X P=P and 9928498 or 5873997
                                            end
end
                                    elseif P<3545002 then
                                            if P<3536278 then
                                                if P<3535062 then
                                                    N,H=G(m,N)P=N and 7475416 or 5562618
                                                else
                                                    X="next"P=U[X]d=n[B[1]]E="Desert"r=d[E]d="Burn"E="GetChildren"X=r[d]E=X[E]E={E(X)}r=E[1]d=E[2]E=P P=16173928
                                                end
                                            else
                                                r=nil P=U["x6HuHVs5NDWnK0"]X={}
                                            end
                                        elseif P<3551725 then
                                                if P<3551030 then
                                                    r="task"X=U[r]r="wait"P=X[r]r=.1 X=P(r)E="Character"d=n[B[2]]r=d[E]X=r P=r and 4713671 or 698126
                                                else
                                                    P=X and 14176367 or 13646000
                                                end
                                            else
                                                X="Sword"P=r(X)P=2487453
                                            end
end
                                    end
                                elseif P<3573099 then
                                        if P<3568186 then
                                            if P<3557772 then
                                                if P<3555000 then
                                                    H=n[B[3]]i="Vector3"v=U[i]i="new"g=6230 h=6 o=v[i]O="DistanceFromCharacter"O=H[O]i=-9576 v={o(i,h,g)}O=O(H,I(v))H=10 Q=O>H P=Q and 7601210 or 7071065
                                                else
                                                    r=p(2684067,{B[1]})X="pcall"P=U[X]X=P(r)P=2273684
                                                end
                                            elseif P<3561975 then
                                                    L=L+C t=not y X=L<=a X=t and X t=L>=a t=y and t X=t or X t=9088010 P=X and t X=13664101 P=P or X
                                                else
                                                    X="AutoCollectFruit"P=U[X]X=P()P=1802135
                                                end
end
                                        elseif P<3571890 then
                                                if P<3569714 then
                                                    P=16388280
                                                else
                                                    g=50 i="HumanoidRootPart"P=n[B[8]]K=10 v=r[i]i="CFrame"h="CFrame"o=v[i]i=U[h]h="new"v=i[h]h=0 i=v(h,g,K)O=o*i H=P(O)v="GetAttribute"o=n[B[2]]v=o[v]i="KenDodgesLeft"v=v(o,i)o=.5 O=v==o H=O P=O and 9342708 or 4760280
                                                end
                                            else
                                                E=0 d=#r P=d>E P=P and 15875968 or 14708359
                                            end
end
                                    elseif P<3587978 then
                                            if P<3577455 then
                                                if P<3574717 then
                                                    X="FireInvoke"d="TravelDressrosa"P=U[X]X=P(d)P=15360025
                                                else
                                                    P=n[B[1]]P=P and 780064 or 16756413
                                                end
                                            else
                                                P=Xd P=sd and 16630469 or 16458906
                                            end
                                        elseif P<3596391 then
                                                if P<3595588 then
                                                    P=U["pinEUgWy8gnqDb"]X={}
                                                else
                                                    P=8409336
                                                end
                                            else
                                                P=7400107 sd=n[H]Xd=sd()
                                            end
end
                                    end
end
                            end
end
                    elseif P<3894999 then
                            if P<3741448 then
                                if P<3679413 then
                                    if P<3641664 then
                                        if P<3633043 then
                                            if P<3610485 then
                                                if P<3601781 then
                                                    z="table"M=U[z]z="find"x=M[z]P=11007800 e="Name"z=L[e]M=x(r,z)t=M
                                                else
                                                    P=d and 10760493 or 11094577 m=X X=d
                                                end
                                            elseif P<3627776 then
                                                    m,G=d(E,m)P=m and 6120346 or 3119570
                                                else
                                                    i=nil P=8609697 h=nil
                                                end
end
                                        elseif P<3636376 then
                                                if P<3634726 then
                                                    r="l1"X="l2"P=U[X]X=U[r]r="l1"U[r]=P r="l2"U[r]=X r=n[B[1]]P=6765358 d=r()
                                                else
                                                    P=H and 4692967 or 13684057
                                                end
                                            else
                                                v="Health"o=m[v]P=3007995 v=0 O=o>v Q=O
                                            end
end
                                    elseif P<3659967 then
                                            if P<3655772 then
                                                if P<3649671 then
                                                    m="Cake Guard"E="Baking Staff"N="Cookie Crafter"P=n[B[2]]d="Head Baker"r={d,E
                                                    m,N}X=P(r)r=X P=r and 3044771 or 2116880
                                                else
                                                    X=n[B[1]]r="AutoObservation"P=X[r]P=P and 603856 or 13897209
                                                end
                                            elseif P<3657453 then
                                                    h=g P=K P=7769309
                                                else
                                                    r=nil d=nil E=nil P=U["nnAuePn9Q3ALEe"]X={}
                                                end
end
                                        elseif P<3677688 then
                                                if P<3663375 then
                                                    P=U["v5KMHdijuPc9G"]r=nil X={}
                                                else
                                                    d="IsA"r=n[B[1]]E="Fire"d=r[d]d=d(r,E)X=d P=10676910
                                                end
                                            else
                                                G=P H="Part"m=d Q="IsA"Q=N[Q]Q=Q(N,H)P=Q and 3110875 or 16348486 X=Q
                                            end
end
                                    end
                                elseif P<3711612 then
                                        if P<3694131 then
                                            if P<3690835 then
                                                if P<3680393 then
                                                    N=nil P=4375750 m=nil
                                                else
                                                    X="CheckTool"P=U[X]r="God's Chalice"X=P(r)P=X and 1753628 or 8650329'
                                                end
                                            elseif P<3692873 then
                                                    P=1265876
                                                else
                                                    P=X and 10125035 or 11534421
                                                end
end
                                        elseif P<3708202 then
                                                if P<3698433 then
                                                    O="AttackAnim"Q=U[O]O=Q(m)Q=n[B[4]]P=Q and 4284266 or 1747765
                                                else
                                                    P=U["ZwoIFiVzCAZ6"]Ad[5]=A(6781610,{H})Ad[6]={Ad[5]()}X={I(Ad[6])}
                                                end
                                            else
                                                Xd=nil md=nil P=14811848
                                            end
end
                                    elseif P<3721525 then
                                            if P<3717644 then
                                                if P<3715479 then
                                                    d="Cursed Captain"X="MobsNextSpawn"P=U[X]X={P(d)}X={I(X)}P=U["R7VJOV58mUmMdp"]
                                                else
                                                    d=n[B[1]]E="DevilFruitESP"r=d[E]P=r and 744138 or 2222106 X=r
                                                end
                                            else
                                                G="CircleIsland"N=n[B[2]]m=N[G]N="RaidSummon"E=m[N]m="Button"d=E[m]E="Main"r=d[E]d="ClickDetector"X=r[d]P=not X P=P and 11077304 or 12234828
                                            end
                                        elseif P<3728591 then
                                                if P<3727569 then
                                                    P=3211723 v=nil N=nil
                                                else
                                                    X=G P=Q P=16257050
                                                end
                                            else
                                                N="CFrame"m=U[N]N="new"H=-2650 X=m[N]Q=-1354 N=1002 G=6 m=X(N,G,Q)G="CFrame"Q=719 N=U[G]G="new"O=4395 X=N[G]G=-4941 N=X(G,Q,H)H=26 Q="CFrame"G=U[Q]Q="new"X=G[Q]Q=-5232 G={X(Q,H,O)}X=1 P={m
                                                N,I(G)}N=3 G=N N=1 Q=N m=P N=0 H=Q<N P=6408365 N=X-Q
                                            end
end
                                    end
end
                            elseif P<3803814 then
                                    if P<3770325 then
                                        if P<3753379 then
                                            if P<3743332 then
                                                if P<3742352 then
                                                    P=X and 15065192 or 2205217
                                                else
                                                    X="pcall"r=b(11978001,{B[2]
                                                    B[3]})P=U[X]X=P(r)P=3459712
                                                end
                                            elseif P<3746951 then
                                                    d="task"X=U[d]d="spawn"P=X[d]d=W(4837047,{B[1],B[2]
                                                    B[3]})X=P(d)P=585817
                                                else
                                                    P=X and 1380081 or 16259696
                                                end
end
                                        elseif P<3767380 then
                                                if P<3766859 then
                                                    X="AutoGetGhoulRace"P=U[X]X=P()P=3106793
                                                else
                                                    P=765017
                                                end
                                            else
                                                P=U["6RSKVkSzjCvTh"]X={}
                                            end
end
                                    elseif P<3784770 then
                                            if P<3782349 then
                                                if P<3773451 then
                                                    i="Position"h="Position"v=r[i]i=H[h]o=v-i v="Magnitude"h="checknearestdist"P=o[v]i=n[B[3]]v=i[h]o=P P=o<=v P=P and 15760335 or 8583733
                                                else
                                                    E=n[B[2]]m="CircleIsland"d=E[m]E="FindFirstChild"E=d[E]m="BlockPart"E=E(d,m)d="CanCollide"r=E[d]X=r P=14021768
                                                end
                                            else
                                                r="AutoFarmBossHallow"X=n[B[1]]P=X[r]P=P and 13280326 or 15589704
                                            end
                                        elseif P<3795364 then
                                                if P<3786033 then
                                                    X="Gun"P=r(X)P=14131091
                                                else
                                                    o="table"N=nil i=": "P=O O=0 Q=H or O O=U[o]o="insert"H=O[o]P=4166984 v=i..Q o=G..v O=H(r,o)G=nil Q=nil
                                                end
                                            else
                                                o="IsA"o=G[o]v="SunRaysEffect"O=P o=o(G,v)H=o P=o and 6950853 or 14966177
                                            end
end
                                    end
                                elseif P<3852650 then
                                        if P<3823164 then
                                            if P<3808622 then
                                                if P<3807868 then
                                                    P=n[B[3]]d=true X={P(r,d)}P=U["cbXX5uGwzQ4t"]X={I(X)}
                                                else
                                                    Q="CheckTool"G=U[Q]H="Flower 1"Q=G(H)P=11687574 N=not Q E=N
                                                end
                                            elseif P<3811773 then
                                                    X="Set3dRenderingEnabled"d=true P=n[B[2]]X=P[X]X=X(P,d)P=11270651
                                                else
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 260814 or 10988169
                                                end
end
                                        elseif P<3836054 then
                                                if P<3827402 then
                                                    P=6284368
                                                else
                                                    E=n[B[2]]m="Character"X=E[m]E="HumanoidRootPart"O="Map"P=X[E]H=n[B[3]]X="CFrame"Q=H[O]H="SkyTrial"G=Q[H]Q="Model"N=G[Q]G="FinishPart"m=N[G]N="CFrame"E=m[N]P[X]=E P=10638525
                                                end
                                            else
                                                E="MobsNextSpawn"m="Forest Pirate"P=U[E]E={P(m)}X={I(E)}P=U["QL3Byc0SR36TRu"]
                                            end
end
                                    elseif P<3875722 then
                                            if P<3870441 then
                                                if P<3866085 then
                                                    P=U["90DKKFL8x6b5zP"]X={}
                                                else
                                                    X=n[B[1]]E=n[B[2]]m="Character"r="HasTag"d=E[m]r=X[r]E="Ken"r=r(X,d,E)P=not r P=P and 7190917 or 736412
                                                end
                                            else
                                                r="Alchemist"X="FireInvoke"E=0 d="1"P=U[X]X=P(r,d)r=X d=r==E X=d P=d and 10403339 or 2458002
                                            end
                                        elseif P<3886280 then
                                                if P<3884272 then
                                                    Q="Map"P=n[B[3]]G=n[B[2]]N=G[Q]G="MysticIsland"m=N[G]N="Center"G=400 E=m[N]m="CFrame"N="CFrame"d=E[m]m=U[N]N="new"E=m[N]Q=0 N=0 m=E(N,G,Q)r=d*m X=P(r)P=1525270
                                                else
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 13078650 or 14218605
                                                end
                                            else
                                                X={}P=U["wSTH7bjTaRnjbO"]
                                            end
end
                                    end
end
                            end
                        elseif P<4030840 then
                                if P<3961039 then
                                    if P<3923488 then
                                        if P<3914867 then
                                            if P<3904659 then
                                                if P<3898171 then
                                                    r=n[B[4]]X={}N="CFrame"m=U[N]G=1208 N="new"Q=884 E=m[N]N=5813 m={E(N,G,Q)}d=r(I(m))r=nil P=U["gtTSlT0EKZmyg9"]n[B[1]]=r
                                                else
                                                    i="Type"v=H[i]O=P i="Material"o=v==i X=o P=o and 12333152 or 15258942
                                                end
                                            elseif P<3912364 then
                                                    r=nil P=9365932
                                                else
                                                    C="Haunted Castle"O=i a=n[B[6]]L=a[C]y="Line"a="Tablet"K=L[a]g=K[h]C=g[y]y="Rotation"a=C[y]C="Z"L=a[C]a=0 K=L~=a P=K and 9044927 or 9152716
                                                end
end
                                        elseif P<3921647 then
                                                if P<3916116 then
                                                    R=M P=z P=9196459
                                                else
                                                    d="BartiloQuestProgress"r="FireInvoke"X=U[r]E="Bartilo"r=X(d,E)X=3 P=r==X P=P and 4932046 or 10183176
                                                end
                                            else
                                                Q=H P=O P=7038041
                                            end
end
                                    elseif P<3939783 then
                                            if P<3929326 then
                                                if P<3925423 then
                                                    X={}P=U["shawniApN5sT"]
                                                else
                                                    r=nil P=11772875
                                                end
                                            else
                                                Ad[108]=nil P=15783723 Ad[111]="table"Ad[110]=U[Ad[111]]Ad[111]="insert"Ad[109]=Ad[110][Ad[111]]Ad[107]=Ad[106]Ad[110]=Ad[109](Ad[103],Ad[107])Ad[107]=nil
                                            end
                                        elseif P<3948051 then
                                                if P<3945516 then
                                                    i="type"v=U[i]i=v(Q)v="number"o=i==v P=o and 7333366 or 656571
                                                else
                                                    o="Position"h="PrehistoricIsland"O=Q[o]i=n[B[1]]v=i[h]i="GetPivot"i=v[i]i=i(v)v="Position"o=i[v]H=O-o O="Magnitude"X=H[O]H=1500 P=X<=H P=P and 15269645 or 15189413
                                                end
                                            else
                                                P=U["dBqj1Oe75mv6"]X={}
                                            end
end
                                    end
                                elseif P<3996541 then
                                        if P<3973633 then
                                            if P<3970893 then
                                                if P<3965134 then
                                                    r="FireInvoke"d="ZQuestProgress"X=U[r]E="Check"r=X(d,E)X=0 P=r==X P=P and 14641212 or 1919562
                                                else
                                                    a="Position"L="Position"K=Q[L]L=o[a]P=8842440 g=K-L K="Magnitude"h=g[K]g=50 i=h<=g v=i
                                                end
                                            elseif P<3972988 then
                                                    m="Human"P=13066253 E=r==m X=E
                                                else
                                                    X="game"d=true r="StarterGui"P=U[X]X="GetService"X=P[X]X=X(P,r)P="SetCore"P=X[P]r="DevConsoleVisible"P=P(X,r,d)X={}P=U["EKSLzARsnMgL"]
                                                end
end
                                        elseif P<3992246 then
                                                if P<3974584 then
                                                    d="Name"E="Color3"X=n[B[1]]P=X[d]X="lower"X=P[X]X=X(P)d=X X=U[E]G=S()E="fromRGB"P=X[E]E=255 m=255 N=255 X=P(E,m,N)E="Chest"m=S()n[m]=X N=S()X="silver"P="rbxassetid://0"n[N]=P P="find"n[G]=E P=d[P]P=P(d,X)P=P and 1858048 or 14733143
                                                else
                                                    X="pcall"P=U[X]r=b(2001248,{B[1]})X=P(r)P=3443484
                                                end
                                            else
                                                P=2991796
                                            end
end
                                    elseif P<4020932 then
                                            if P<4014070 then
                                                if P<3997452 then
                                                    r="AutoDoughKing"X=n[B[1]]P=X[r]P=P and 2598629 or 7980359
                                                else
                                                    P=E P=d and 14133743 or 15500878
                                                end
                                            else
                                                m=d G=n[B[2]]Q=G(N)G="function"P=Q==G P=P and 7760212 or 11811562
                                            end
                                        elseif P<4027897 then
                                                if P<4021784 then
                                                    r=k[1]d="math"Q="InvokeServer"X=U[d]d="huge"G="Remotes"P=X[d]X="next"d=P P=nil E=P P=U[X]N=n[B[1]]m=N[G]N="CommF_"G="getInventory"X=m[N]Q=X[Q]Q={Q(X,G)}G=P m=Q[1]N=Q[2]P=7817485
                                                else
                                                    t=n[B[4]]R="Modules"y=t[R]t="Net"R="Parent"L=y[t]P=10067153 y="RF/ClaimBerry"g=L[y]t=H[R]L="InvokeServer"L=g[L]R="Name"y=t[R]L=L(g,y,O)
                                                end
                                            else
                                                i="FireInvoke"X=U[i]L="-"h="StoreFruit"K=L..v g=v..K i=X(h,g,N)P=4828227
                                            end
end
                                    end
end
                            elseif P<4098519 then
                                    if P<4075955 then
                                        if P<4050885 then
                                            if P<4045979 then
                                                if P<4038434 then
                                                    L="Mastery"P=6982131 K=H[L]L=nil g=K~=L i=g
                                                else
                                                    X="pcall"r=p(15309539,{})P=U[X]X=P(r)P=2643539
                                                end
                                            elseif P<4049154 then
                                                    d="math"E=3600 X=U[d]d="floor"P=X[d]d=r/E X=P(d)d=X N=3600 E="math"X=U[E]E="floor"P=X[E]m=r%N N=60 E=m/N X=P(E)E=X X=60 P=r%X X=0 m=P P=d>X P=P and 7722103 or 3490561
                                                else
                                                    P=n[B[7]]P=P and 6198478 or 2136202
                                                end
end
                                        elseif P<4063564 then
                                                if P<4054893 then
                                                    H=n[B[4]]P=H and 9189078 or 13387872
                                                else
                                                    P=8898242 i="TextLabel"v=G[i]i="Text"o=v[i]H=o
                                                end
                                            else
                                                d=d+m X=d<=E G=not N X=G and X G=d>=E G=N and G X=G or X G=9657218 P=X and G X=3539294 P=P or X
                                            end
end
                                    elseif P<4087937 then
                                            if P<4085603 then
                                                if P<4079217 then
                                                    d=1 X=r==d P=X and 14358077 or 4881239
                                                else
                                                    o={}H=o P=10999112
                                                end
                                            else
                                                P=1633852 Q=nil
                                            end
                                        elseif P<4095413 then
                                                if P<4088412 then
                                                    N=nil G=nil P=8175877
                                                else
                                                    P=10451816
                                                end
                                            else
                                                r=nil d=nil E=nil X={}P=U["WrHxU3GGjXPN"]
                                            end
end
                                    end
                                elseif P<4132961 then
                                        if P<4116898 then
                                            if P<4111290 then
                                                if P<4104357 then
                                                    P=U["Z4pReSc8ikUzF"]X={}
                                                else
                                                    d="task"X=U[d]d="wait"P=X[d]d=5 X=P(d)P=1018198
                                                end
                                            elseif P<4112298 then
                                                    d="Wenlocktoad"X="FireInvoke"H=0 P=U[X]Q=r==H H="2"m=P G=P N=Q and H G=3 E=N or G X=P(d,E)P=5136736
                                                else
                                                    E="attackplayers"X=n[B[2]]P=X[E]P=P and 9280065 or 15145578
                                                end
end
                                        elseif P<4124975 then
                                                if P<4123776 then
                                                    P=7460697
                                                else
                                                    Q=1 P="Transparency"G[P]=Q P=6858094
                                                end
                                            else
                                                G="pairs"P=1869917 X=U[G]O=n[B[2]]o={X(O)}G=o[1]Q=o[2]H=o[3]
                                            end
end
                                    elseif P<4136756 then
                                            if P<4136232 then
                                                if P<4134557 then
                                                    X=n[B[1]]r="NoFog"P=X[r]P=P and 2721976 or 3239046
                                                else
                                                    d="FindFirstChild"d=r[d]P=9984915 E="Head"d=d(r,E)X=d
                                                end
                                            else
                                                P=X and 14769193 or 14623647
                                            end
                                        elseif P<4140076 then
                                                if P<4138352 then
                                                    G=nil P=10317705 N=nil
                                                else
                                                    v="pos"G=m O="DistanceFromCharacter"H=n[B[2]]o=Q[v]O=H[O]O=O(H,o)H=5 P=O<H P=P and 9396125 or 1641833
                                                end
                                            else
                                                X="PlayerESP"P=U[X]X=P()P=10442776
                                            end
end
                                    end
end
                            end
end
                    end
end
            end
        elseif P<6103978 then
                if P<5024731 then
                    if P<4574776 then
                        if P<4353878 then
                            if P<4241916 then
                                if P<4198346 then
                                    if P<4169290 then
                                        if P<4160283 then
                                            if P<4149215 then
                                                if P<4146043 then
                                                    P=nil X={P}P=U["8nHDxUC8R2Dcw"]
                                                else
                                                    g=nil i=nil O=l(O)Q=l(Q)N=l(N)v=nil m=l(m)h=nil Bd="_G"P=6537269 E=l(E)d=l(d)H=nil K=l(K)o=l(o)N=W(16149940,{})u="table"G=nil E=S()d=true n[E]=d d=A(5317500,{})m=W(13495165,{})D="math"G={d,m,N}o="math"h="type"O=U[o]y="pcall"o="random"H=O[o]i="getmetatable"o=1 v=#G O=H(o,v)H=S()K="loadstring"v="setmetatable"Q=G[O]n[H]=Q R="math"O="error"Q=U[O]q="string"o="pairs"O=U[o]o=S()n[o]=O O=U[v]v=S()n[v]=O O=U[i]jd="os"i=U[h]h=S()n[h]=i x="debug"g="load"Id={}i=U[g]g=U[K]K=U[y]t=U[R]kd=S()z="debug"R="random"y=t[R]R="xpcall"t=U[R]R=U[x]M=U[z]Ud="file"z="getinfo"e="coroutine"x=M[z]z="package"M=U[z]z=U[e]e=U[q]q=U[D]D=U[u]V="io"u=U[jd]jd=U[V]V=U[Ud]Ud={}n[kd]=Id Id=n[o]cd=U[Bd]Bd={Id(cd)}Xd=Bd[2]sd=Bd[1]nd=Bd[3]
                                                end
                                            elseif P<4154636 then
                                                    Q=H P=O P=4793980
                                                else
                                                    X="MobsNextSpawn"P=U[X]E=n[B[5]]m=E()E=1 d=m[E]X=P(d)P=2858600
                                                end
end
                                        elseif P<4168142 then
                                                if P<4165266 then
                                                    Q=H P=O P=1449226
                                                else
                                                    E,G=m(d,E)P=E and 15362138 or 2613651
                                                end
                                            else
                                                r=n[B[1]]X=r P=r and 11164389 or 6465101
                                            end
end
                                    elseif P<4174286 then
                                            if P<4171511 then
                                                if P<4170555 then
                                                    m=P P=r and 2143831 or 12003467 E=r
                                                else
                                                    P=m and 6912587 or 5769881
                                                end
                                            elseif P<4172309 then
                                                    r="task"X=U[r]r="wait"P=X[r]r=.5 X=P(r)P={}r="CheckFruits"n[B[2]]=P X=U[r]G="Backpack"r=X()r="pairs"X=U[r]N=n[B[3]]m=N[G]G="GetChildren"G=m[G]N={G(m)}m={X(I(N))}r=m[1]d=m[2]E=m[3]P=7374024
                                                else
                                                    P=n[B[1]]r=k[1]X="BlackScreen"d=r r=nil P[X]=d X={}P=U["cDAXHACW8WmZS"]
                                                end
end
                                        elseif P<4185741 then
                                                if P<4176865 then
                                                    d=n[B[1]]E="ESPIsland"r=d[E]X=r P=r and 5838683 or 12552333
                                                else
                                                    Ad[21]=2 P=10597092 Ad[20]=Ad[9][Ad[21]]Ad[21]=n[Ad[14]]Ad[19]=Ad[20]==Ad[21]Ad[17]=Ad[19]
                                                end
                                            else
                                                d,N=E(r,d)P=d and 434712 or 8559932
                                            end
end
                                    end
                                elseif P<4221714 then
                                        if P<4212200 then
                                            if P<4205664 then
                                                if P<4203382 then
                                                    X=n[B[1]]r="Character"P=X[r]r=S()d=P n[r]=P E=n[r]X=E P=E and 12261000 or 2721692
                                                else
                                                    N="CheckInventory"m=U[N]Q="Oroshi"G="Sword"N=m(G,Q)X=N P=N and 1893077 or 15502345
                                                end
                                            elseif P<4208547 then
                                                    P=2352765 m="FireInvoke"H=3 X=U[m]G=1 Q=2 N=E[G]G=E[Q]Q=E[H]m=X(N,G,Q)m="FireInvoke"X=U[m]G=1 N=E[G]Q=2 G=E[Q]Q="2"m=X(N,G,Q)
                                                else
                                                    G="Value"d=P N=n[B[1]]m=N[G]N=700 E=m>=N P=E and 8679069 or 16035365 X=E
                                                end
end
                                        elseif P<4219957 then
                                                if P<4219653 then
                                                    d=1 X=r==d P=X and 15736097 or 5123628
                                                else
                                                    P=n[B[4]]E=true X=P(d,E)P=15439080
                                                end
                                            else
                                                m="Bartilo"d="FireInvoke"E="BartiloQuestProgress"X=U[d]d=X(E,m)X=0 P=d==X P=P and 2436301 or 15970173
                                            end
end
                                    elseif P<4232728 then
                                            if P<4231841 then
                                                if P<4223859 then
                                                    P=nil X={P}P=U["tMshZ27J0yji7q"]
                                                else
                                                    m="string"E=U[m]G="Name"P=9781993 m="find"d=E[m]N=n[B[1]]m=N[G]N="Chest"E=d(m,N)X=E
                                                end
                                            else
                                                d="next"P=U[d]G="Map"N=n[B[1]]m=N[G]N="Turtle"E=m[N]m="QuestTorches"N="GetChildren"d=E[m]N=d[N]N={N(d)}m=N[2]d=P P=2235360 E=N[1]
                                            end
                                        elseif P<4240800 then
                                                if P<4238385 then
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 10886656 or 14699460
                                                else
                                                    r=k[1]d=r r=nil P=n[B[1]]X="ESPIsland"P[X]=d X="IslandESP"P=U[X]X=P()P=U["Se4cVeyWkK5z"]X={}
                                                end
                                            else
                                                Ad[3]="n"Ad[2]=U[Ad[3]]P=4490673 Ad[3]=65 Ad[1]=Ad[2]>Ad[3]Td=Ad[1]
                                            end
end
                                    end
end
                            elseif P<4291639 then
                                    if P<4267761 then
                                        if P<4261929 then
                                            if P<4246275 then
                                                if P<4243825 then
                                                    K="tonumber"g=U[K]K=g(h)L="tonumber"g=U[L]L=g(d)X=K<L P=X and 11085841 or 5221344
                                                else
                                                    X={}P=U["IJy85gY30C8F"]
                                                end
                                            elseif P<4253427 then
                                                    X="pcall"r=w(2903436,{B[1]})P=U[X]X=P(r)P=2926649
                                                else
                                                    P=U["mlhvERn80jfC4o"]X={}
                                                end
end
                                        elseif P<4267548 then
                                                if P<4265519 then
                                                    P=n[B[1]]r="PrehistoricIsland"X="FindFirstChild"X=P[X]X=X(P,r)r=X P=r and 878119 or 10027850
                                                else
                                                    h="Humanoid"i=O[h]h="Health"P=8408532 v=i[h]i=0 o=v>i X=o
                                                end
                                            else
                                                v="typeof"P=4844390 o=U[v]v=o(N)o="table"O=v==o Q=O
                                            end
end
                                    elseif P<4286017 then
                                            if P<4278360 then
                                                if P<4271744 then
                                                    r="AutoSail"X=n[B[1]]P=X[r]P=P and 2793406 or 14608040
                                                else
                                                    E="Distance"r=k[1]d=k[2]X=r[E]m="Distance"E=d[m]P=X<E X={P}P=U["ZhZ1qvh2UAhxB"]
                                                end
                                            else
                                                o="coroutine"P=7370737 O=U[o]o="wrap"Q=O[o]o=Y(15567930,{B[4],H
                                                G})O=Q(o)Q=O()
                                            end
                                        elseif P<4287291 then
                                                if P<4286884 then
                                                    X={}P=U["Jly1N3fsYIETNM"]
                                                else
                                                    P=n[B[1]]E="CFrame"N=157 d=U[E]E="new"m=14897 r=d[E]E=28273 d={r(E,m,N)}X=P(I(d))X={}P=U["lC1ga59iuRZHph"]
                                                end
                                            else
                                                X="AutoTrainGear"P=U[X]X=P()P=7796203
                                            end
end
                                    end
                                elseif P<4334023 then
                                        if P<4319042 then
                                            if P<4306193 then
                                                if P<4295928 then
                                                    X={}P=U["28Aab1YaDfRDz"]E=nil n[B[2]]=E
                                                else
                                                    X=n[B[1]]d="global"P=X[d]P=P and 9460554 or 1279269
                                                end
                                            elseif P<4316665 then
                                                    P=9401937 a="Parent"K=O[a]a=g C=L E=K m=C r=a
                                                else
                                                    N="Instance"X=U[N]N="new"P=X[N]N="Folder"G=n[r]X=P(N,G)P="Name"G="Instance"N=X X="ESPquantumONYX"N[P]=X X=U[G]G="new"H="Size"P=X[G]G="BoxHandleAdornment"X=P(G,N)G=X P="Name"X="Box"G[P]=X X=n[r]P="Adornee"G[P]=X P="Size"Q=n[r]X=Q[H]G[P]=X X=true P="AlwaysOnTop"G[P]=X P="ZIndex"X=10 G[P]=X P="Transparency"X=.7 G[P]=X P="Color3"X=d Q=P P=d and 16767375 or 6368767
                                                end
end
                                        elseif P<4330608 then
                                                if P<4326740 then
                                                    h=P g="IsA"K="CornerWedgePart"g=G[g]g=g(G,K)i=g P=g and 6694764 or 3407671
                                                else
                                                    X="FireInvoke"P=U[X]E=4 r="Ectoplasm"d="BuyCheck"X=P(r,d,E)r="Ectoplasm"X="FireInvoke"d="Change"E=4 P=U[X]X=P(r,d,E)P=U["xs88e0HRA0hbT"]X={}
                                                end
                                            else
                                                H=P P=m and 4267704 or 4844390 Q=m
                                            end
end
                                    elseif P<4347670 then
                                            if P<4342955 then
                                                if P<4335440 then
                                                    P="FindFirstChild"Q="Humanoid"P=G[P]P=P(G,Q)Q=P H=Q P=Q and 2983440 or 4710783
                                                else
                                                    P=8329875 E=nil d=nil m=nil
                                                end
                                            else
                                                X={}P=U["3ElNvL4zqk6Y03"]
                                            end
                                        elseif P<4352632 then
                                                if P<4352046 then
                                                    m="game"E=U[m]m="Loaded"P=12101461 d=E[m]E="Wait"E=d[E]E=E(d)
                                                else
                                                    N=true d=n[B[5]]m={d(E,N)}X={I(m)}P=U["cOLl7joCqPpT7"]
                                                end
                                            else
                                                d="pairs"P=U[d]N=n[B[1]]Q="GetDescendants"Q=N[Q]G={Q(N)}N={P(I(G))}d=N[1]P=14667420 E=N[2]m=N[3]
                                            end
end
                                    end
end
                            end
                        elseif P<4449073 then
                                if P<4401390 then
                                    if P<4375348 then
                                        if P<4364041 then
                                            if P<4356177 then
                                                if P<4354150 then
                                                    P=11252793
                                                else
                                                    E=nil P=4112495
                                                end
                                            elseif P<4359395 then
                                                    m=P N=n[E]P=N and 1602569 or 5855845 r=N
                                                else
                                                    P=h P=i and 274639 or 3724016
                                                end
end
                                        elseif P<4370806 then
                                                if P<4366906 then
                                                    L="Vector3"i=n[B[3]]K=U[L]L="new"a=14887.5625 h="DistanceFromCharacter"C=-60.548217773438 P=16503415 h=i[h]g=K[L]L=28718.068359375 K={g(L,a,C)}h=h(i,I(K))i=150 v=h<=i O=v
                                                else
                                                    X="pcall"P=U[X]r=W(13930502,{})X=P(r)P=10667976
                                                end
                                            else
                                                P=n[B[3]]d="Longma"r={d}X=P(r)r=X P=r and 9379100 or 8624362
                                            end
end
                                    elseif P<4390863 then
                                            if P<4389841 then
                                                if P<4377849 then
                                                    d,N=E(r,d)P=d and 2157376 or 12542877
                                                else
                                                    X={}r=nil P=U["cn21cWCj7eSe"]
                                                end
                                            elseif P<4390212 then
                                                    P=nil X={P}P=U["Ekrb3JBn9MI5iY"]
                                                else
                                                    K=0 O=g<=K P=O and 15827214 or 1095221
                                                end
end
                                        elseif P<4397815 then
                                                if P<4390942 then
                                                    P=n[B[3]]X={P(r)}P=U["zocityut3GJp5"]X={I(X)}
                                                else
                                                    O="pcall"o=W(8583220,{B[3]})H=U[O]O=H(o)O=6 H=Q>=O P=H and 7293641 or 14328381
                                                end
                                            else
                                                m="ReceiveAge"r=k[1]E=r[m]m=0 d=E==m P=d and 5542079 or 12623508 X=d
                                            end
end
                                    end
                                elseif P<4423552 then
                                        if P<4413863 then
                                            if P<4413436 then
                                                if P<4409228 then
                                                    P=U["AnDage7dXn2q5z"]X={H}
                                                else
                                                    O="CFrame"P=n[B[3]]H=Q[O]X=P(H)P=678158
                                                end
                                            elseif P<4413700 then
                                                    v="ExitTeleporter"h="Position"X=o[v]v="Root"P=X[v]g="Position"i=m[h]v=P h=v[g]X=i-h i="Magnitude"P=X[i]i=P X=1000 P=i<X P=P and 5959870 or 4984901
                                                else
                                                    P=177584
                                                end
end
                                        elseif P<4416257 then
                                                if P<4414471 then
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 10701897 or 22123
                                                else
                                                    P=U["yAbKELWM0Rcn7S"]X={}
                                                end
                                            else
                                                X=n[B[2]]G="Flower2"N=n[B[3]]m=N[G]N="CFrame"P=13898534 E=m[N]d=X(E)
                                            end
end
                                    elseif P<4434603 then
                                            if P<4430567 then
                                                if P<4424553 then
                                                    H="ipairs"P=12719973 X=U[H]i=n[B[3]]v=i[Q]i={X(v)}o=i[3]O=i[2]H=i[1]
                                                else
                                                    m="CFrame"P=n[B[5]]G=299.895966 E=U[m]m="new"N=73.0200958 d=E[m]m=-456.28952 E={d(m,N,G)}X=P(I(E))P=4353903
                                                end
                                            else
                                                X=n[B[2]]r="Heartbeat"P=X[r]X="Wait"X=P[X]X=X(P)P=n[B[1]]X="Destroy"X=P[X]X=X(P)P=6760429
                                            end
                                        elseif P<4444230 then
                                                if P<4440067 then
                                                    K="HumanoidRootPart"P=2774862 v=n[B[2]]g=G[K]i="DistanceFromCharacter"K="Position"h=g[K]i=v[i]i=i(v,h)v=500 o=i<v H=o
                                                else
                                                    P=n[B[4]]X={P(d)}P=U["VuuOLoeu0zL8El"]X={I(X)}
                                                end
                                            else
                                                E=X P=not E P=P and 8095463 or 10791816
                                            end
end
                                    end
end
                            elseif P<4514656 then
                                    if P<4486198 then
                                        if P<4475423 then
                                            if P<4452263 then
                                                if P<4451881 then
                                                    P=n[B[1]]X="DemonFruit"r=k[1]d=r r=nil P[X]=d P=U["qR7AC5sT2xBKu"]X={}
                                                else
                                                    P=true P=P and 3086498 or 10289450
                                                end
                                            elseif P<4463123 then
                                                    P=6556931
                                                else
                                                    E="warn"X=U[E]P=U["fRutxv2kzCfX5"]m="[Teleport] Invalid Job ID entered:"N=n[r]E=X(m,N)G=5 X=n[B[2]]m="Server Join"N="Invalid Job ID entered."E=X(m,N,G)X={}
                                                end
end
                                        elseif P<4484073 then
                                                if P<4480459 then
                                                    P=d P=1917980 X=r
                                                else
                                                    g="Data"P=10754751 h=G[g]g="Race"i=h[g]h="Value"v=i[h]O=v
                                                end
                                            else
                                                X="AutoKillPlayerinTrial"P=n[B[1]]r=k[1]d=r r=nil P[X]=d X={}P=U["81O5mJaeeKXC"]
                                            end
end
                                    elseif P<4507798 then
                                            if P<4493389 then
                                                if P<4490663 then
                                                    P=U["nCpGTd14SMDJWS"]X={}
                                                else
                                                    P=bd P=Td and 9664578 or 14767546
                                                end
                                            else
                                                d="Craft"X="FireInvoke"r="CraftItem"E="Volcanic Magnet"P=U[X]X=P(r,d,E)X={}P=U["Lwh0iNREvshni7"]
                                            end
                                        elseif P<4513481 then
                                                if P<4509949 then
                                                    P=y P=C and 11510551 or 11914235 a=C
                                                else
                                                    P=n[B[1]]r=k[1]X="BoatSelected"d=r r=nil P[X]=d X={}P=U["4BUo1njdrU351s"]
                                                end
                                            else
                                                P=n[B[2]]o="DistanceFromCharacter"o=P[o]h="PrimaryPart"i=O[h]H=Q h="Position"v=i[h]o=o(P,v)P=o<d P=P and 10284049 or 12715271
                                            end
end
                                    end
                                elseif P<4543925 then
                                        if P<4520105 then
                                            if P<4516795 then
                                                if P<4515720 then
                                                    m="Swan Pirate"X=n[B[4]]E={m}d=X(E)P=d and 7937778 or 11406883
                                                else
                                                    i=n[B[10]]g=i(h)g="tick"L="task"i=U[g]g=i()P=3316669 n[B[8]]=g K=U[L]L="wait"i=K[L]L=.1 K=i(L)
                                                end
                                            elseif P<4519697 then
                                                    m="CyborgTrainer"E="FireInvoke"P=3393877 N="Check"d=U[E]E=d(m,N)d=2 r=E==d X=r
                                                else
                                                    P=U["zlUcSjriT7eyS"]X={}r=nil
                                                end
end
                                        elseif P<4537780 then
                                                if P<4524947 then
                                                    P=2524377
                                                else
                                                    E="GunSelect"P=n[B[2]]d=n[B[1]]r=d[E]d="Gun"X=P(r,d)P=8504645
                                                end
                                            else
                                                O="CFrame"P=n[B[3]]i=333 H=N[O]v="CFrame"o=U[v]h=0 v="new"O=o[v]v=0 o=O(v,i,h)Q=H*o G=P(Q)P=15806108
                                            end
end
                                    elseif P<4559623 then
                                            if P<4553898 then
                                                if P<4549790 then
                                                    r="gravestoneEvent"X="FireInvoke"d=1 P=U[X]X=P(r,d)P=91335
                                                else
                                                    N=n[B[2]]G="Character"m=N[G]N="FindFirstChild"N=m[N]G="HumanoidRootPart"N=N(m,G)X=N P=10769018
                                                end
                                            else
                                                X="pairs"P=nil r=P P=U[X]N=n[B[1]]G="Backpack"m=N[G]G="GetChildren"G=m[G]N={G(m)}m={P(I(N))}E=m[3]X=m[1]d=m[2]m=X P=13832886
                                            end
                                        elseif P<4572109 then
                                                if P<4566890 then
                                                    P=X and 1198487 or 14672101
                                                else
                                                    d=n[B[2]]E="Character"m="Part"X=d[E]d="HumanoidRootPart"P=X[d]X="CFrame"E=r[m]m="CFrame"d=E[m]P[X]=d P=14545574
                                                end
                                            else
                                                N=m H="Type"Q=G[H]H="Bait"X=Q==H P=X and 881782 or 1185875
                                            end
end
                                    end
end
                            end
end
                    elseif P<4811549 then
                            if P<4693757 then
                                if P<4624075 then
                                    if P<4597073 then
                                        if P<4584656 then
                                            if P<4581221 then
                                                if P<4579115 then
                                                    m=n[B[2]]N="VisionRadius"E=m[N]P=3366390 m="Value"d=E[m]E=5000 r=d<E X=r
                                                else
                                                    P=G r=P P=15773184
                                                end
                                            elseif P<4582471 then
                                                    X="next"E="Jungle"P=U[X]d=n[B[1]]r=d[E]d="QuestPlates"X=r[d]E="GetChildren"E=X[E]E={E(X)}r=E[1]d=E[2]E=P P=12477683
                                                else
                                                    e="IsA"q="BasePart"z=P e=t[e]e=e(t,q)P=e and 754623 or 3915606 M=e
                                                end
end
                                        elseif P<4588122 then
                                                if P<4584821 then
                                                    h="OnSale"Q=o i=v[h]P=i and 12641762 or 1397418
                                                else
                                                    v=139 o="Vector3"X=n[B[3]]O=U[o]Q="DistanceFromCharacter"o="new"H=O[o]Q=X[Q]o=-10135 i=5991 O={H(o,v,i)}Q=Q(X,I(O))X=5 P=Q>X P=P and 2315717 or 14504410
                                                end
                                            else
                                                G=m v=n[B[3]]H=P i="Character"o=v[i]O=Q~=o X=O P=O and 1877454 or 1551605
                                            end
end
                                    elseif P<4618191 then
                                            if P<4609785 then
                                                if P<4605498 then
                                                    P=n[B[1]]r="Urban"X=P(r)P=X and 13885381 or 2299745
                                                else
                                                    P=X and 1264106 or 12439119
                                                end
                                            elseif P<4614003 then
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 421640 or 11283316
                                                else
                                                    G=n[B[2]]Q="PointsSlider"N=G[Q]E=N m=P P=N and 5499864 or 15500315
                                                end
end
                                        elseif P<4623642 then
                                                if P<4622153 then
                                                    d="pairs"G="advancedRaids"P=U[d]N=r[G]G={P(N)}m=G[3]P=5869982 E=G[2]d=G[1]
                                                else
                                                    d="CharacterAdded"X=n[B[1]]P=X[d]d="Wait"d=P[d]X={d(P)}X={I(X)}P=U["wKP6HWCSrY9ic"]
                                                end
                                            else
                                                X={}P=U["P9K4EGoesCcX"]r=nil
                                            end
end
                                    end
                                elseif P<4662171 then
                                        if P<4637398 then
                                            if P<4627293 then
                                                if P<4625929 then
                                                    m="Assets"E=n[B[1]]r=k[1]d=E[m]E="GUI"X=d[E]d="DamageCounter"P=X[d]X="Enabled"d=not r P[X]=d X={}r=nil P=U["fTQlE5WGHFOz"]
                                                else
                                                    r="AutoPray"X=n[B[1]]P=X[r]P=P and 10477111 or 4094120
                                                end
                                            elseif P<4637001 then
                                                    P=5049542
                                                else
                                                    G=n[B[3]]Q="Character"N=G[Q]G="Humanoid"m=N[G]N="Sit"P=m[N]P=P and 10481438 or 758608
                                                end
end
                                        elseif P<4660424 then
                                                if P<4644967 then
                                                    X="CheckTool"P=U[X]r="Microchip"X=P(r)P=X and 16191745 or 5006114
                                                else
                                                    X=d d=nil P="CurrentCF"r[P]=X X={}E=nil r=nil P=U["AprjHRe0V7Gh"]
                                                end
                                            else
                                                P=10436299
                                            end
end
                                    elseif P<4682498 then
                                            if P<4672133 then
                                                if P<4665043 then
                                                    P=H P=Q and 16662410 or 11060083
                                                else
                                                    X="AutoBerries"P=U[X]X=P()P=4751450
                                                end
                                            else
                                                G=nil N=nil P=6028633
                                            end
                                        elseif P<4692556 then
                                                if P<4689389 then
                                                    P=15026743
                                                else
                                                    G="CFrame"d=n[B[4]]N=U[G]Q=141 P=3091819 G="new"H=6169 m=N[G]G=-8654 N={m(G,Q,H)}E=d(I(N))
                                                end
                                            else
                                                o="KenDodgesLeft"O="GetAttribute"H=n[B[2]]O=H[O]O=O(H,o)H=1 P=O>=H P=P and 15397596 or 3571761
                                            end
end
                                    end
end
                            elseif P<4751450 then
                                    if P<4713586 then
                                        if P<4704424 then
                                            if P<4699916 then
                                                if P<4696961 then
                                                    X={}P=U["WjKKuStsFohPey"]
                                                else
                                                    P=4941790 Ad[53]=Ad[55]
                                                end
                                            elseif P<4700979 then
                                                    P=d P=r and 12674197 or 8533515
                                                else
                                                    G=true E="FireInvoke"P=3091819 N=2 d=U[E]m="gravestoneEvent"E=d(m,N,G)
                                                end
end
                                        elseif P<4709073 then
                                                if P<4708327 then
                                                    X={}P=U["3YoVbbPfPHOG"]
                                                else
                                                    P=14234111 m=nil N=nil G=nil
                                                end
                                            else
                                                P=H and 11660282 or 4085617
                                            end
end
                                    elseif P<4732346 then
                                            if P<4717614 then
                                                if P<4714124 then
                                                    P=698126 m="Character"E=n[B[2]]d=E[m]E="PrimaryPart"r=d[E]X=r
                                                else
                                                    P=U["aR44dUmIXQro"]X={}
                                                end
                                            else
                                                r=k[1]d=r P=n[B[1]]X="BuyLegendSword"P[X]=d d="task"X=U[d]d="spawn"P=X[d]d=Y(14289028,{B[1]})r=nil X=P(d)P=U["wkR3cRiPXSHx"]X={}
                                            end
                                        elseif P<4750224 then
                                                if P<4735047 then
                                                    G=n[B[2]]Q="PlayerGui"N=G[Q]G="Main"m=N[G]N="TopHUDList"E=m[N]m="RaidTimer"d=E[m]E="Visible"r=d[E]X=r P=r and 7924289 or 14167670
                                                else
                                                    P=n[B[2]]r="Training Dummy"X=P(r)r=X P=r and 4390868 or 16384245
                                                end
                                            else
                                                bd=P Ad[3]="loadstring"Ad[2]=U[Ad[3]]Ad[1]=Ad[2]~=g Td=Ad[1]P=Ad[1]and 6724950 or 16739644
                                            end
end
                                    end
                                elseif P<4793979 then
                                        if P<4774103 then
                                            if P<4759852 then
                                                if P<4755161 then
                                                    X={}P=U["uuQuKOCNrX6i"]
                                                else
                                                    G=n[B[1]]Q="Character"N=G[Q]G="HumanoidRootPart"H=1679.75 m=N[G]Q=10.4325 N="Position"G="Vector3"E=m[N]N=U[G]G="new"m=N[G]G=-1835.65 N=m(G,Q,H)d=E-N E="Magnitude"X=d[E]d=100 P=X>d P=P and 14967390 or 7789672
                                                end
                                            elseif P<4764029 then
                                                    P=H and 15288887 or 6932825
                                                else
                                                    d=nil X={}r=nil P=U["8nVopvDjbOg32U"]
                                                end
end
                                        elseif P<4788715 then
                                                if P<4778391 then
                                                    m="Character"r=k[1]X=n[B[1]]d=k[2]E=k[3]P=X[m]m=P P=m and 5390528 or 13982234 X=m
                                                else
                                                    Ad[45]="Data"Ad[44]=n[o]Ad[43]=Ad[44][Ad[45]]Ad[46]="Data"Ad[44]="Stats"Ad[42]=Ad[43][Ad[44]]Ad[45]=n[o]Ad[44]=Ad[45][Ad[46]]Ad[45]="Points"Ad[47]="Defense"Ad[43]=Ad[44][Ad[45]]Ad[44]=S()Ad[45]="Player Status"n[Ad[44]]=Ad[42]Ad[46]="Scanning for Information..."Ad[42]=S()n[Ad[42]]=Ad[43]Ad[48]="Sword"Ad[43]="addLabel"Ad[43]=Ad[40][Ad[43]]Ad[43]=Ad[43](Ad[40],Ad[45],Ad[46])Ad[50]="Demon Fruit"Ad[49]="Gun"Ad[46]="Melee"Ad[45]=S()n[Ad[45]]=Ad[43]Ad[43]={Ad[46],Ad[47],Ad[48],Ad[49]
                                                    Ad[50]}Ad[46]=S()n[Ad[46]]=Ad[43]Ad[43]=S()Ad[47]=W(6589450,{Ad[44],Ad[42]
                                                    Ad[46]
                                                    Ad[45]})n[Ad[43]]=Ad[47]Ad[45]=l(Ad[45])Ad[49]="task"P=10899549 Ad[48]=U[Ad[49]]Ad[42]=l(Ad[42])Ad[49]="spawn"Ad[47]=Ad[48][Ad[49]]Ad[44]=l(Ad[44])Ad[46]=l(Ad[46])Ad[49]=p(9651031,{Ad[43]})Ad[48]=Ad[47](Ad[49])Ad[43]=l(Ad[43])
                                                end
                                            else
                                                o="Name"O=H[o]P=U["PisKTeB8behCt9"]X={O}
                                            end
end
                                    elseif P<4800280 then
                                            if P<4796366 then
                                                if P<4794079 then
                                                    P=Q and 14645569 or 13745641
                                                else
                                                    P=4336724
                                                end
                                            else
                                                P=Q P=X and 12259326 or 9342402
                                            end
                                        elseif P<4810572 then
                                                if P<4804015 then
                                                    d=k[2]r=k[1]m="Position"N="Position"E=d[m]m=r[N]X=E-m E="Magnitude"P=X[E]X=0 E=P P=E==X P=P and 13210154 or 5503865
                                                else
                                                    P=d and 3004209 or 7515094
                                                end
                                            else
                                                N="Haunted Castle"m=n[B[1]]E=m[N]m="Lab Puzzle"d=E[m]E="ColorFloor"r=d[E]d="Model"X=r[d]r=n[B[2]]P=X[r]E="BrickColor"r=P d=r[E]E="Name"X=d[E]d=n[B[3]]P=X~=d P=P and 6157695 or 3078083
                                            end
end
                                    end
end
                            end
                        elseif P<4919950 then
                                if P<4866529 then
                                    if P<4835721 then
                                        if P<4828564 then
                                            if P<4821680 then
                                                if P<4818989 then
                                                    m="Disconnect"P=260283 X=n[B[2]]m=X[m]m=m(X)X=nil n[B[2]]=X
                                                else
                                                    X={}P=U["GMQOtdRoyjvUg9"]
                                                end
                                            elseif P<4826714 then
                                                    X={}P=U["oGypXkY8na6bu"]
                                                else
                                                    v=nil P=1275963
                                                end
end
                                        elseif P<4833931 then
                                                if P<4832018 then
                                                    d="VerifyQuest"X=U[d]d=X(r)P=not d P=P and 6915530 or 3403590
                                                else
                                                    G="Data"N=n[B[1]]m=N[G]N="Race"E=m[N]m="Value"d=E[m]E="Skypiea"X=d==E P=X and 10398987 or 13099732
                                                end
                                            else
                                                P=O P=H and 10724673 or 12232166
                                            end
end
                                    elseif P<4852203 then
                                            if P<4845918 then
                                                if P<4839075 then
                                                    X="pcall"P=U[X]r=A(8377801,{B[1]
                                                    B[2]
                                                    B[3]})X=P(r)X={}P=U["VDFmkoYVx91Z"]
                                                else
                                                    P=H P=Q and 983128 or 6864828
                                                end
                                            else
                                                Q="FindFirstChild"Q=d[Q]Q=Q(d,r)N=Q P=9169402
                                            end
                                        elseif P<4864640 then
                                                if P<4857002 then
                                                    P=n[B[1]]X=P()X={}P=U["y7rXKRRfY0VY"]
                                                else
                                                    P=U["ucfHrvDWpISwl"]X={}
                                                end
                                            else
                                                a="task"L=U[a]a="wait"y="Line"K=L[a]L=K()C="ClickDetector"L="fireclickdetector"K=U[L]a=g[C]L=K(a)C=g[y]y="Rotation"a=C[y]C="Z"L=a[C]a=0 K=L==a P=K and 11870561 or 4866445
                                            end
end
                                    end
                                elseif P<4890072 then
                                        if P<4886043 then
                                            if P<4876340 then
                                                if P<4870072 then
                                                    P=X and 11993658 or 15116575
                                                else
                                                    P=5046016
                                                end
                                            elseif P<4881736 then
                                                    P=U["8p5tPODoPOzu8m"]r=nil X={}
                                                else
                                                    P=16289951
                                                end
end
                                        elseif P<4888695 then
                                                if P<4887125 then
                                                    r="SelectMaterial"X=n[B[1]]P=X[r]r=P P=nil d=P P=n[B[2]]P=P and 2848332 or 14268806
                                                else
                                                    P=2255633 r=nil
                                                end
                                            else
                                                r=nil m=nil E=nil v=nil O=nil N=nil Q=nil G=nil d=nil P=2718182 H=nil
                                            end
end
                                    elseif P<4900091 then
                                            if P<4899127 then
                                                if P<4893954 then
                                                    i="HumanoidRootPart"H=n[B[3]]v=Q[i]i="Position"O="DistanceFromCharacter"o=v[i]O=H[O]O=O(H,o)H=70 X=O<=H P=X and 6845557 or 15295093
                                                else
                                                    X="FireInvoke"G="StartQuest"P=U[X]X=P(G,r,d)G="task"X=U[G]G="wait"P=X[G]G=.5 X=P(G)P=5713674
                                                end
                                            else
                                                P=h h="<font color=\"#FFD700\">[ ★ ]</font> No fruits available"a="string"o=i or h h="table"i=U[h]h="concat"d=nil r=nil v=i[h]g="<b>Normal Dealer Stock:</b>"L=U[a]a="format"K=L[a]C=n[B[7]]a="<font color=\"#00BFFF\"><b>Restock:</b> %s</font>"y={C(H)}L=K(a,I(y))K=""a="<b>Mirage Dealer Stock:</b>"t="string"E=nil P=U["uxAQ6MVHftoXOV"]y=U[t]t="format"N=nil C=y[t]R=n[B[7]]X={}x={R(O)}t="<font color=\"#FFD700\"><b>Restock:</b> %s</font>"y=C(t,I(x))h={g
                                                L
                                                Q,K
                                                a
                                                y
                                                o}O=nil m=nil g="\n"i=v(h,g)v=n[B[8]]h="RefreshDesc"H=nil o=nil h=v[h]Q=nil h=h(v,i)i=nil
                                            end
                                        elseif P<4916574 then
                                                if P<4903741 then
                                                    g="GetAttribute"g=H[g]g=g(H,O)P=g and 4022741 or 10067153
                                                else
                                                    G=d P=12439763 X=n[B[3]]v="Handle"o=r[G]O=o[v]o="CFrame"H=O[o]Q=X(H)H="task"Q=U[H]H="wait"G=nil X=Q[H]Q=X()
                                                end
                                            else
                                                P=n[B[2]]d="Arctic Warrior"E="Snow Lurker"r={d,E}X=P(r)r=X P=r and 6841993 or 8325126
                                            end
end
                                    end
end
                            elseif P<4969793 then
                                    if P<4941912 then
                                        if P<4934225 then
                                            if P<4931328 then
                                                if P<4931049 then
                                                    d="CheckTool"E="Key"X=U[d]d=X(E)P=not d P=P and 14291223 or 14436330
                                                else
                                                    P=13649078
                                                end
                                            elseif P<4932693 then
                                                    E="1"r="FireInvoke"d="TalkTrevor"X=U[r]r=X(d,E)X=0 P=r~=X P=P and 10687399 or 8553592
                                                else
                                                    Bd=n[kd]Id=nd rd=cd Bd[Id]=rd Id=nil P=6537269 cd=nil
                                                end
end
                                        elseif P<4941702 then
                                                if P<4939719 then
                                                    P=U["xEr3HVoGOilJ"]X={}
                                                else
                                                    X=0 P=U["97NQvbCpLXukHt"]X={X}
                                                end
                                            else
                                                P=Ad[56]P=Ad[53]and 15231917 or 15005337
                                            end
end
                                    elseif P<4956772 then
                                            if P<4950400 then
                                                if P<4943541 then
                                                    X="FireInvoke"r="BlackbeardReward"E="2"P=U[X]d="Microchip"X=P(r,d,E)P=4871515
                                                else
                                                    Q="Name"m=d G=N[Q]H=n[B[3]]O="Name"Q=H[O]X=G~=Q P=X and 12866927 or 1265876
                                                end
                                            else
                                                P=1608588 r=nil
                                            end
                                        elseif P<4966433 then
                                                if P<4963630 then
                                                    P=11631038
                                                else
                                                    N=P G=n[B[3]]P=G and 11770851 or 12223093 m=G
                                                end
                                            else
                                                r="GetDistance"N=14895 m="Vector3"X=U[r]E=U[m]m="new"d=E[m]m=28286 G=103 E={d(m,N,G)}r=X(I(E))X=2000 P=r>X P=P and 5617295 or 5906510
                                            end
end
                                    end
                                elseif P<5010379 then
                                        if P<4989680 then
                                            if P<4984900 then
                                                if P<4970825 then
                                                    X=nil P=U["hcCZChxULkEf"]X={X}
                                                else
                                                    P=5339468 d=n[B[4]]Q="CFrame"G=U[Q]v="Vector3"Q="new"O="Position"N=G[Q]H=E[O]o=U[v]v="new"O=o[v]h=0 v=0 i=80 o=O(v,i,h)Q=H+o G=N(Q)N=true m=d(G,N)
                                                end
                                            elseif P<4989053 then
                                                    v=nil P=7311866 i=nil
                                                else
                                                    r=nil P=U["1eNP56289wacXh"]X={}
                                                end
end
                                        elseif P<5006726 then
                                                if P<4990197 then
                                                    P=162410
                                                else
                                                    r="CheckTool"d="Fist Of Darkness"X=U[r]r=X(d)P=not r P=P and 5252271 or 11608579
                                                end
                                            else
                                                Yd=n[H]Td=Yd()P=3709938
                                            end
end
                                    elseif P<5018080 then
                                            if P<5014751 then
                                                if P<5014227 then
                                                    X={}P=U["cDSCZGrVC60M"]
                                                else
                                                    d=false n[B[1]]=d m="XrayView"E=U[m]P=6541520 N=n[B[1]]m=E(N)
                                                end
                                            else
                                                X={N}P=U["STrMqoqVj6Oj"]
                                            end
                                        elseif P<5022870 then
                                                if P<5020798 then
                                                    Q="KitsuneIsland"P=n[B[3]]G=r[Q]Q="ShrineActive"N=G[Q]G="NeonShrinePart"m=N[G]Q=0 G="CFrame"N="CFrame"E=m[N]N=U[G]G="new"m=N[G]G=0 H=10 N=m(G,Q,H)d=E*N X=P(d)P=15076195
                                                else
                                                    X="tick"P=U[X]X=P()r=X d=n[B[1]]X=r-d d=1 P=X<d P=P and 7882117 or 12099714
                                                end
                                            else
                                                r="Library Key"X="CheckTool"P=U[X]X=P(r)P=X and 16276727 or 4919934
                                            end
end
                                    end
end
                            end
end
                    end
                elseif P<5539296 then
                        if P<5294170 then
                            if P<5145791 then
                                if P<5075861 then
                                    if P<5045668 then
                                        if P<5030347 then
                                            if P<5027374 then
                                                if P<5026476 then
                                                    r="task"X=U[r]r="wait"m="Vector3"N=2283 P=X[r]G=-7326 r=.2 X=P(r)r="GetDistance"X=U[r]E=U[m]m="new"d=E[m]m=3030 E={d(m,N,G)}r=X(I(E))X=10 P=r<X P=P and 8387544 or 5026087
                                                else
                                                    P=X and 14785480 or 4212060
                                                end
                                            elseif P<5029689 then
                                                    Q="GetDescendants"d="pairs"P=U[d]N=n[B[2]]Q=N[Q]G={Q(N)}N={P(I(G))}E=N[2]d=N[1]m=N[3]P=3620844
                                                else
                                                    E="GetSeaMons"m="Piranha"P=U[E]E=P(m)d=E P=11354729
                                                end
end
                                        elseif P<5038127 then
                                                if P<5033462 then
                                                    d=nil P=11252793
                                                else
                                                    Q=N i="typeof"v=U[i]i=v(H)v="table"o=i==v P=o and 2190449 or 8288562 O=o
                                                end
                                            else
                                                P=d X=r P=12696679
                                            end
end
                                    elseif P<5053968 then
                                            if P<5049901 then
                                                if P<5047129 then
                                                    X={}P=U["FSvdHWW0t9fueK"]
                                                else
                                                    O="Sword"X=r==O P=X and 10939754 or 2911066
                                                end
                                            elseif P<5052295 then
                                                    P=n[B[9]]m=true X={P(E,m)}X={I(X)}P=U["5kudvEuosNCq"]
                                                else
                                                    Q="ESPquantumONYX"P=10604194 G="FindFirstChild"N=n[r]G=N[G]G=G(N,Q)X=G
                                                end
end
                                        elseif P<5071454 then
                                                if P<5063943 then
                                                    r=nil P=1857545
                                                else
                                                    h="HumanoidRootPart"P=i[h]h=P P="CFrame"y="Character"C=n[B[3]]a=C[y]C="HumanoidRootPart"L=a[C]a="CFrame"K=L[a]t=-15 C="CFrame"a=U[C]C="new"L=a[C]y=-15 C=0 a=L(C,y,t)g=K*a h[P]=g a=60 L="Vector3"K=U[L]P="Size"L="new"C=60 g=K[L]L=60 K=g(L,a,C)h[P]=K g=1 P="Transparency"C="Enum"h[P]=g P="CanCollide"K=0 g=false h[P]=g g="Humanoid"P=i[g]g=P P="WalkSpeed"g[P]=K K=0 P="JumpPower"g[P]=K a=U[C]C="HumanoidStateType"L=a[C]a="Physics"K=L[a]P="ChangeState"P=g[P]P=P(g,K)K=1 P=Q+K L=6 Q=P K=Q>=L P=K and 6891020 or 2491932
                                                end
                                            else
                                                r="task"X=U[r]r="wait"P=X[r]r=1 X=P(r)P=X and 7902540 or 13102104
                                            end
end
                                    end
                                elseif P<5108207 then
                                        if P<5081872 then
                                            if P<5079639 then
                                                if P<5078664 then
                                                    G=d P=r[G]H="Name"Q=P X=Q[H]H="DinoBone"P=X==H P=P and 11871623 or 5294383
                                                else
                                                    P=n[B[6]]G="Vector3"N=U[G]H=1372.3204 G="new"m=N[G]X="DistanceFromCharacter"G=-16269.1016 X=P[X]Q=29.5177539 N={m(G,Q,H)}X=X(P,I(N))m=X X=15 P=m>X P=P and 1769102 or 249440
                                                end
                                            elseif P<5080085 then
                                                    K=n[B[2]]P=4488607 L="Disconnect"L=K[L]L=L(K)K=nil n[B[2]]=K
                                                else
                                                    O="CFrame"P=n[B[3]]H=G[O]Q=P(H)P="Transparency"Q=0 G[P]=Q P=4088311
                                                end
end
                                        elseif P<5100375 then
                                                if P<5092922 then
                                                    Q="rip_indra"t="rip_fud"H="Axiore"g="Uzoth"R="drip_mama"a="Death_King"L="arlthmetic"m=d x="layandikit12"G="red_game43"y="TheGreateAced"i="toilamvidamme"C="Lunoven"O="Polkster"K="Azarth"v="Daigrock"M="Hingoi"h="oofficialnoobie"o="wenlocktoad"P={G
                                                    Q
                                                    H,O,o
                                                    v,i
                                                    h
                                                    g,K,L,a,C,y
                                                    t,R
                                                    x
                                                    M}H="table"O="Name"G=P Q=U[H]H="find"P=Q[H]H=N[O]Q=P(G,H)P=Q and 9263049 or 4708658
                                                else
                                                    P=U["KUArB1UVt1pfa"]X={}
                                                end
                                            else
                                                P=9447522
                                            end
end
                                    elseif P<5128991 then
                                            if P<5121752 then
                                                if P<5108808 then
                                                    R="-1"t=g==R P=10525437 C=t
                                                else
                                                    P=n[B[2]]X="Set3dRenderingEnabled"d=false X=P[X]X=X(P,d)P=11270651
                                                end
                                            else
                                                m="Not ready yet"E="Race V1-V2 Quest"P=12610973 N=8 X=n[B[6]]d=X(E,m,N)
                                            end
                                        elseif P<5141055 then
                                                if P<5138593 then
                                                    P=4881239
                                                else
                                                    E="LoadFruit"d="FireInvoke"N="getfruitstore"r=U[d]G=true m=U[N]N={m(G)}P=5931146 d=r(E,I(N))E="task"d=U[E]E="wait"r=d[E]E=1 d=r(E)
                                                end
                                            else
                                                E=nil P=10638525
                                            end
end
                                    end
end
                            elseif P<5223159 then
                                    if P<5191141 then
                                        if P<5166212 then
                                            if P<5156055 then
                                                if P<5148638 then
                                                    r="TravelMain"X="FireInvoke"P=U[X]X=P(r)P=U["lxjjRxlpa96vvt"]X={}
                                                else
                                                    P=O O=X X=not O P=X and 16368913 or 8573406
                                                end
                                            elseif P<5161688 then
                                                    Ad[5]={}Ad[1]=Ad[5]P=9787872
                                                else
                                                    Q="soulGuitarBuy"X="FireInvoke"H=true P=U[X]X=P(Q,H)P=10135561
                                                end
end
                                        elseif P<5183699 then
                                                if P<5174008 then
                                                    E="CFrame"P=n[B[2]]d=r[E]X=P(d)P=13643762
                                                else
                                                    P=9068511
                                                end
                                            else
                                                E=n[B[1]]m="Value"d=E[m]E=2300 r=d<E P=r and 3693494 or 6876902 X=r
                                            end
end
                                    elseif P<5209461 then
                                            if P<5204108 then
                                                if P<5200059 then
                                                    P=12261174 d="RaceActivedoors"r=U[d]d=r()X=d
                                                else
                                                    P=5947408 E="next"X=U[E]N="GetChildren"N=d[N]N={N(d)}E=N[1]m=N[2]N=X
                                                end
                                            else
                                                P=Q Q=not G P=Q and 12957379 or 4054157
                                            end
                                        elseif P<5222467 then
                                                if P<5217715 then
                                                    P=11509500 N="Destroy"N=E[N]N=N(E)
                                                else
                                                    P=3630788
                                                end
                                            else
                                                X=false X={X}P=U["DE4Fkn3bf9CST"]
                                            end
end
                                    end
                                elseif P<5261057 then
                                        if P<5237402 then
                                            if P<5229551 then
                                                if P<5225683 then
                                                    r=w(9748020,{B[2],B[3]})X="pcall"P=U[X]X=P(r)P=1577686
                                                else
                                                    r="task"d="_WorldOrigin"X=U[r]r="wait"P=X[r]X=P()r=n[B[2]]X=r[d]r="Locations"d=true P=X[r]X="FindFirstChild"X=P[X]r="Mirage Island"X=X(P,r,d)P=X and 3877501 or 1525270
                                                end
                                            elseif P<5234724 then
                                                    P=not r P=P and 3125911 or 9215785
                                                else
                                                    X=n[B[1]]r="Tweenfruit"P=X[r]P=P and 3562535 or 1802135
                                                end
end
                                        elseif P<5258225 then
                                                if P<5248428 then
                                                    O="Character"H=n[B[1]]P=7149075 Q=H[O]H="HumanoidRootPart"G=Q[H]Q="Position"N=G[Q]E=N
                                                else
                                                    X="AutoChest"P=U[X]X=P()P=2236230
                                                end
                                            else
                                                E=1863580 d="ep4Ea8IMOSTfU"r=d^E X=3544419 P=X-r X="mvI1N9Pij0FS96O"r=P P=X/r X={P}P=U["yxwayx2LeTQD"]
                                            end
end
                                    elseif P<5278216 then
                                            if P<5269546 then
                                                if P<5262491 then
                                                    i="ProximityPrompt"o="fireproximityprompt"P=U[o]v=H[i]o=P(v)v="task"o=U[v]v="wait"P=o[v]v=.5 o=P(v)P=10764947
                                                else
                                                    E=n[B[2]]m="Character"X=E[m]E="HumanoidRootPart"O="Map"P=X[E]X="CFrame"H=n[B[3]]Q=H[O]H="MinkTrial"G=Q[H]Q="Ceiling"N=G[Q]G="CFrame"m=N[G]O=0 Q="CFrame"G=U[Q]Q="new"N=G[Q]Q=0 H=-20 G=N(Q,H,O)E=m*G P[X]=E P=10638525
                                                end
                                            else
                                                r=n[B[2]]d=r()P=2255483 X=d
                                            end
                                        elseif P<5290113 then
                                                if P<5282200 then
                                                    N=not m r=r+E X=r<=d X=N and X N=r>=d N=m and N X=N or X N=6657854 P=X and N X=3239681 P=P or X
                                                else
                                                    X=n[B[1]]r="AutoBonePrehistoric"P=X[r]P=P and 7716176 or 8424033
                                                end
                                            else
                                                X={}P=U["rSWc4tLC2mbPZe"]
                                            end
end
                                    end
end
                            end
                        elseif P<5440681 then
                                if P<5355403 then
                                    if P<5333073 then
                                        if P<5316780 then
                                            if P<5308633 then
                                                if P<5303523 then
                                                    P=1734578 G=nil Q=nil
                                                else
                                                    X="pairs"P=U[X]N="GetChildren"N=r[N]m={N(r)}N={P(I(m))}P=8175877 E=N[3]X=N[1]m=X d=N[2]
                                                end
                                            elseif P<5312747 then
                                                    P=4613048
                                                else
                                                    X="wait"P=U[X]X=P()P=X and 13114798 or 1731755
                                                end
end
                                        elseif P<5325506 then
                                                if P<5323661 then
                                                    X="originalError"E="Tampering detected. Please contact the owner of this script for a new version."d="msg"P=U[X]r={[d]=E}X=P(r)P=12306505
                                                else
                                                    P=15166774
                                                end
                                            else
                                                Q="CheckTool"G=U[Q]H="Flower 2"Q=G(H)N=not Q P=16721054 E=N
                                            end
end
                                    elseif P<5348200 then
                                            if P<5344933 then
                                                if P<5337736 then
                                                    P=9285971 r=nil
                                                else
                                                    P=16395834 E=nil
                                                end
                                            else
                                                m=true P=n[B[5]]E={P(d,m)}P=U["7cb60GCOy6GZ"]X={I(E)}
                                            end
                                        elseif P<5353178 then
                                                if P<5352333 then
                                                    X=n[B[1]]r="AutoFarm"P=X[r]P=P and 9841858 or 14784535
                                                else
                                                    d=n[B[2]]E="Character"X=d[E]m="Part"d="HumanoidRootPart"P=X[d]E=r[m]X="CFrame"m="CFrame"d=E[m]P[X]=d P=6623345
                                                end
                                            else
                                                v="task"o=U[v]v="wait"h="math"O=o[v]g=0 o=O()C="Position"K=1 v=Q*o O=m+v L="Position"m=O i=U[h]h="clamp"v=i[h]h=m/E i=v(h,g,K)v="Lerp"v=r[v]v=v(r,d,i)h=n[B[4]]g="SetCF"g=h[g]g=g(h,v)K=d[L]a=n[B[7]]L=a[C]g=K-L K="Magnitude"h=g[K]K=P a=20 L=h<=a P=L and 1103197 or 10696193 g=L
                                            end
end
                                    end
                                elseif P<5413337 then
                                        if P<5388994 then
                                            if P<5385935 then
                                                if P<5382566 then
                                                    sd=nd P=cd P=3584149
                                                else
                                                    C="Bone Roll: Error"a=n[B[1]]L=a..C P=10453442 H=L
                                                end
                                            elseif P<5386968 then
                                                    r="Core"P=n[B[2]]X=P(r)r=X P=r and 10191306 or 1800215
                                                else
                                                    P=1394045
                                                end
end
                                        elseif P<5407053 then
                                                if P<5390513 then
                                                    P=7702637
                                                else
                                                    N="FindFirstChild"N=m[N]G="HumanoidRootPart"N=N(m,G)X=N P=13982234
                                                end
                                            else
                                                v,i=O(o,v)P=v and 15849668 or 5105032
                                            end
end
                                    elseif P<5425508 then
                                            if P<5419574 then
                                                if P<5415616 then
                                                    d=true P=n[B[1]]E="InvokeServer"r="GetFruits"E=P[E]X={E(P,r,d)}X={I(X)}P=U["IVhLkctTnQkE"]
                                                else
                                                    d="task"X=U[d]d="wait"P=X[d]d=.3 X=P(d)d="Melee"X=n[B[2]]P=X[d]P=P and 10187899 or 10778760
                                                end
                                            else
                                                X={}P=U["sBchlLxTg3Ma"]
                                            end
                                        elseif P<5432765 then
                                                if P<5427203 then
                                                    h=n[B[3]]C=W(5580202,{N})a=Y(3434636,{B[4]
                                                    r,m
                                                    G})K=n[r]L=n[m]m=l(m)P=5324113 d=nil g=h(K,L,a,C)G=l(G)N=l(N)
                                                else
                                                    P=U["bonh1yke6rY2G"]X={}
                                                end
                                            else
                                                X=S()n[X]=g K="pcall"g=X h=i X=U[K]h=nil L=b(5934348,{g,r})P=1355157 g=l(g)K=X(L)
                                            end
end
                                    end
end
                            elseif P<5467216 then
                                    if P<5461450 then
                                        if P<5454644 then
                                            if P<5448301 then
                                                if P<5446096 then
                                                    P=13921826
                                                else
                                                    C="tick"a=U[C]C=a()a=n[B[8]]L=C-a a=n[B[9]]K=L>=a P=10487023 i=K
                                                end
                                            elseif P<5449121 then
                                                    r="Sky"X=n[B[2]]P=X[r]X="Destroy"X=P[X]X=X(P)P=8040304
                                                else
                                                    m="HumanoidRootPart"E="FindFirstChild"r=X E=r[E]E=E(r,m)d=E P=E and 13738116 or 8742979
                                                end
end
                                        elseif P<5458205 then
                                                if P<5455285 then
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()r="MysteriousMan"d="2"X="FireInvoke"P=U[X]X=P(r,d)P=14758817
                                                else
                                                    r="Hellfire Torch"X="CheckTool"P=U[X]X=P(r)P=X and 7635501 or 1702692
                                                end
                                            else
                                                P=n[B[3]]X={P(r)}X={I(X)}P=U["nw8IJzjD2oE5"]
                                            end
end
                                    elseif P<5465922 then
                                            if P<5464787 then
                                                if P<5464155 then
                                                    P=n[B[1]]X=P()P=U["6iJeCHgw7bf8aF"]X={}
                                                else
                                                    P=d P=12552333 X=r
                                                end
                                            else
                                                P=9488007
                                            end
                                        elseif P<5467171 then
                                                if P<5467110 then
                                                    X="fireclickdetector"P=U[X]Q="CircleIsland"G=n[B[5]]N=G[Q]G="RaidSummon"m=N[G]N="Button"E=m[N]m="Main"d=E[m]E="ClickDetector"r=d[E]X=P(r)P=9102070
                                                else
                                                    r="Fist of Darkness"X="EquipToolName"P=U[X]X=P(r)E="CFrame"P=n[B[4]]d=U[E]m=14 E="new"r=d[E]N=-3499 E=3777 d={r(E,m,N)}X={P(I(d))}X={I(X)}P=U["Wqsl0tVkg23yu"]
                                                end
                                            else
                                                E,G=m(d,E)P=E and 15430567 or 4620594
                                            end
end
                                    end
                                elseif P<5504328 then
                                        if P<5496162 then
                                            if P<5491095 then
                                                if P<5486999 then
                                                    P=i P=7379435 O=v
                                                else
                                                    P=1608588
                                                end
                                            elseif P<5493211 then
                                                    G=m P=Q and 13401755 or 12824824 H=Q
                                                else
                                                    a=C P=y P=11510551
                                                end
end
                                        elseif P<5502789 then
                                                if P<5500397 then
                                                    H="PointsSlider"Q=n[B[2]]G=Q[H]Q=0 N=G>Q E=N P=15500315
                                                else
                                                    P=J P=6770601 X=Pd
                                                end
                                            else
                                                m=0 P=717228
                                            end
end
                                    elseif P<5513151 then
                                            if P<5509622 then
                                                if P<5506608 then
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 7656105 or 168247
                                                else
                                                    P=n[B[7]]X={P(d)}P=U["rM8MZqlQ0SoBx"]X={I(X)}
                                                end
                                            else
                                                X=n[B[1]]G=870 m="Vector3"E=U[m]m="new"N=1208 d=E[m]r="DistanceFromCharacter"r=X[r]m=5867 E={d(m,N,G)}r=r(X,I(E))X=5 P=r<=X P=P and 13151641 or 13601308
                                            end
                                        elseif P<5536675 then
                                                if P<5517881 then
                                                    P=U["VfhDFgg9saXVRY"]X={}
                                                else
                                                    Q=not N P=Q and 10036885 or 7949946
                                                end
                                            else
                                                r="task"X=U[r]r="wait"P=X[r]r=3 X=P()P=15834909 X=1 d=r r=1 E=r r=0 m=E<r r=X-E
                                            end
end
                                    end
end
                            end
end
                    elseif P<5800173 then
                            if P<5681880 then
                                if P<5604854 then
                                    if P<5562355 then
                                        if P<5549911 then
                                            if P<5544911 then
                                                if P<5539780 then
                                                    E,G=m(d,E)P=E and 5717327 or 7790853
                                                else
                                                    G="Anchored"N=r[G]m=not N d=m E=P P=m and 1444800 or 14932612
                                                end
                                            elseif P<5548726 then
                                                    N=P H=n[B[4]]O="Value"Q=H[O]H=2600 G=Q>=H m=G P=G and 16569278 or 449012
                                                else
                                                    P=2255633
                                                end
end
                                        elseif P<5560196 then
                                                if P<5556049 then
                                                    X=n[B[1]]r="BuyAccessories"P=X[r]P=P and 14407822 or 4707764
                                                else
                                                    P=X and 15943594 or 2424912
                                                end
                                            else
                                                O,v=Q(H,O)P=O and 9858660 or 13047103
                                            end
end
                                    elseif P<5586336 then
                                            if P<5568719 then
                                                if P<5566075 then
                                                    N=P O=0 H=r>O G=H Q=P P=H and 10000898 or 14521995
                                                else
                                                    P=A(9753152,{B[1],B[2]})r=P P=1771099
                                                end
                                            elseif P<5573867 then
                                                    N=nil P=4187535 m=nil
                                                else
                                                    P=n[B[1]]X={P}P=U["sOonVirwntstwZ"]
                                                end
end
                                        elseif P<5600853 then
                                                if P<5597635 then
                                                    d="Hallow Essence"X="CheckTool"P=U[X]X=P(d)P=X and 980114 or 7254446
                                                else
                                                    P=U["GahuUQl0yOmjBW"]X={}
                                                end
                                            else
                                                m=P v=n[B[2]]i="PlayerGui"o=v[i]v="Main"O=o[v]o="TopHUDList"H=O[o]O="RaidTimer"Q=H[O]H="Visible"G=Q[H]N=not G P=N and 7276894 or 6361204 E=N
                                            end
end
                                    end
                                elseif P<5651868 then
                                        if P<5635123 then
                                            if P<5623793 then
                                                if P<5615509 then
                                                    d="Water Fighter"E="Sea Soldier"P=15507798 X={d,E}r=X
                                                else
                                                    m=2283 P=n[B[1]]E="CFrame"d=U[E]E="new"N=-7326 r=d[E]E=3030 d={r(E,m,N)}X=P(I(d))P=3037171
                                                end
                                            elseif P<5628672 then
                                                    P=H and 4581013 or 15773184
                                                else
                                                    g="ExitTeleporter"P=8005272 K="Root"h=o[g]g="FindFirstChild"g=h[g]g=g(h,K)v=g
                                                end
end
                                        elseif P<5650877 then
                                                if P<5646266 then
                                                    H=Q v="Mastery"o=O[v]v=600 P=o<v P=P and 8528788 or 8814192
                                                else
                                                    d="Torch"r="CheckTool"X=U[r]r=X(d)P=not r P=P and 7029754 or 14513731
                                                end
                                            else
                                                P=U["ctML2eh6wWAE"]X={}r=nil
                                            end
end
                                    elseif P<5674592 then
                                            if P<5665658 then
                                                if P<5658821 then
                                                    a="Part"L="IsA"K=P L=i[L]L=L(i,a)g=L P=L and 13020355 or 3656006
                                                else
                                                    P=2826563 E=nil
                                                end
                                            else
                                                Q=4 P=E N=P E=0 X=d or E d=X E=P G=d>=Q Q=1 m=G and Q X=m P=m and 11987383 or 13334793
                                            end
                                        elseif P<5679599 then
                                                if P<5677167 then
                                                    g,L=i(h,g)P=g and 3332326 or 2312814
                                                else
                                                    a="SimulationRadius"h="pcall"i=U[h]K="sethiddenproperty"g=U[K]C=4.9000001897776e+201 L=n[B[3]]K={g(L,a,C)}R="HumanoidRootPart"h=i(I(K))C="Position"h=P a=O[C]t=r[R]R="CFrame"y=t[R]t="Position"C=y[t]L=a-C a="Magnitude"K=L[a]L=5 g=K>=L P=g and 11699866 or 2745040 i=g
                                                end
                                            else
                                                i=h P=g P=1455185
                                            end
end
                                    end
end
                            elseif P<5734121 then
                                    if P<5712816 then
                                        if P<5702336 then
                                            if P<5695042 then
                                                if P<5690247 then
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 3436563 or 8668215
                                                else
                                                    O="string"H=U[O]o="Name"O="find"Q=H[O]O=N[o]o="Fruit"H=Q(O,o)G=H P=6631673
                                                end
                                            elseif P<5701495 then
                                                    P=O P=X and 3416075 or 1442611
                                                else
                                                    X="FireInvoke"P=U[X]r="ZQuestProgress"d="Begin"X=P(r,d)P=6845384
                                                end
end
                                        elseif P<5707895 then
                                                if P<5705414 then
                                                    P=12439763 E="table"d=U[E]E="sort"X=d[E]E=Z(13389745,{})d=X(r,E)d=#r E=d X=1 d=1 m=d d=0 N=m<d d=X-m
                                                else
                                                    K="Particles"g=G[K]K="Main"h=g[K]g="Enabled"P=11622674 i=h[g]v=not i O=v
                                                end
                                            else
                                                N="Character"X="GetMovesetAnimCache"r=k[1]P=n[B[1]]m=n[B[2]]X=P[X]E=m[N]m="Humanoid"O="math"G="FindFirstChild"d=E[m]X=X(P,d)P=n[B[1]]h="Moveset"m=n[B[2]]d=X N="Character"E=m[N]X="GetWeaponName"X=P[X]N="EquippedWeapon"G=E[G]m={G(E,N)}X=X(P,I(m))E=X P=n[B[1]]X="GetPureWeaponName"X=P[X]G="-basic"X=X(P,E)P=n[B[1]]m=X X="GetWeaponData"X=P[X]X=X(P,E)N=X H=U[O]O="random"Q=H[O]O=1 i=N[h]h="Basic"v=i[h]o=#v H=Q(O,o)i=0 X=G..H o="SpeedMult"O="GetAttribute"P=m..X G=P P=d[G]H=P H=5 Q=P O=Q[O]O=O(Q,o)o=1 X=O or o P=X*H H=P X=n[B[3]]v=P v="RemoveAnimationFast"O="FireServer"O=X[O]o=r or i O=O(X,o)o=n[B[4]]O=o[v]X=not O P=X and 16608587 or 502477
                                            end
end
                                    elseif P<5721254 then
                                            if P<5718822 then
                                                if P<5717277 then
                                                    P=U["nbpX8wVaDb8wa"]X={}d=nil r=nil m=nil E=nil N=nil
                                                else
                                                    N=E H="IsA"O="BasePart"H=G[H]H=H(G,O)P=H and 3103485 or 1449226 Q=H
                                                end
                                            else
                                                X={}P=U["xXlrv3ipT5zVY"]
                                            end
                                        elseif P<5724755 then
                                                if P<5722306 then
                                                    P=n[B[2]]O=Q X=n[E]P[X]=O P=4401608
                                                else
                                                    P={}r=k[1]X="pairs"d=P P=U[X]N={P(r)}E=N[2]P=13053091 m=N[3]X=N[1]N=X
                                                end
                                            else
                                                r="CheckTool"d="God's Chalice"X=U[r]r=X(d)P=not r P=P and 3119518 or 521343'
                                            end
end
                                    end
                                elseif P<5783295 then
                                        if P<5767793 then
                                            if P<5736240 then
                                                if P<5734223 then
                                                    r=nil P=9111011
                                                else
                                                    O,i=o(H,O)P=O and 15641576 or 13752202
                                                end
                                            elseif P<5751544 then
                                                    m=r P=11145360
                                                else
                                                    X="getgenv"P=U[X]X=P()P="isnetworkowner"d=Z(4399189,{})X[P]=d P=11050858
                                                end
end
                                        elseif P<5777748 then
                                                if P<5770358 then
                                                    G="CheckSeaLevel"P=n[B[2]]N=U[G]G={N()}m=P(I(G))P=13004774
                                                else
                                                    X="ipairs"N="GetChildren"P=U[X]E=n[B[2]]N=E[N]m={N(E)}E={P(I(m))}X=E[1]r=E[2]d=E[3]P=4187535 E=X
                                                end
                                            else
                                                G="PrimaryPart"N=r[G]X=N P=3505931
                                            end
end
                                    elseif P<5791145 then
                                            if P<5785091 then
                                                if P<5784285 then
                                                    P=n[B[1]]X=P()P=U["57haoX77airjD"]X={}
                                                else
                                                    Q="CFrame"O="CFrame"o=0 d=n[B[4]]G=E[Q]H=U[O]O="new"v=0 Q=H[O]O=4 H=Q(O,o,v)N=G*H m=d(N)m="UseAllSkill"P=12511755 d=U[m]m=d()
                                                end
                                            else
                                                G=not N d=d+m X=d<=E X=G and X G=d>=E G=N and G X=G or X G=14042309 P=X and G X=315918 P=P or X
                                            end
                                        elseif P<5797970 then
                                                if P<5796075 then
                                                    P=13921826
                                                else
                                                    P=Q Q=0 N=.05 m=G or Q X=P(m,N)H="Blox Fruit"m=X G="table"N=U[G]G="find"O="Sword"X=N[G]Q="Melee"G={Q
                                                    H
                                                    O}N=X(G,d)P=N and 7131956 or 4336724
                                                end
                                            else
                                                d="task"X=U[d]d="spawn"P=X[d]d=W(8559811,{B[1]
                                                B[2]
                                                B[3]})X=P(d)P=2407594
                                            end
end
                                    end
end
                            end
                        elseif P<5932207 then
                                if P<5861520 then
                                    if P<5840867 then
                                        if P<5816104 then
                                            if P<5807497 then
                                                if P<5804253 then
                                                    P=o and 3965374 or 8842440 v=o
                                                else
                                                    P=7515094
                                                end
                                            elseif P<5814635 then
                                                    P=S()N=E n[P]=G G=P H="task"Q=U[H]H="spawn"P=Q[H]H=Y(14405620,{B[3]
                                                    G
                                                    B[4],r})G=l(G)N=nil Q=P(H)P=10162782
                                                else
                                                    N="Vector3"P=n[B[2]]m=U[N]N="new"E=m[N]X="DistanceFromCharacter"G=87 Q=-1281 N=1421 X=P[X]m={E(N,G,Q)}X=X(P,I(m))E=X X=5 P=E>X P=P and 11253143 or 12207384
                                                end
end
                                        elseif P<5827816 then
                                                if P<5821186 then
                                                    X="DetectShark"r=k[1]d=r P=n[B[1]]r=nil P[X]=d P=U["wlhVezJeFwsOo"]X={}
                                                else
                                                    H=n[B[1]]o="Next Roll: "i="tostring"v=U[i]i=v(E)O=o..i Q=H..O N=Q P=3493184
                                                end
                                            else
                                                d=P E=n[B[2]]N="BasePart"m="IsA"m=E[m]m=m(E,N)P=m and 14047129 or 5464743 r=m
                                            end
end
                                    elseif P<5846742 then
                                            if P<5844886 then
                                                if P<5842780 then
                                                    P=U["Y4H9NJBLuiyq1"]X={}
                                                else
                                                    d,N=E(r,d)P=d and 4943601 or 10776838
                                                end
                                            else
                                                G=d v="GetChildren"X="Island "P=X..G Q=P X="ipairs"v=r[v]P=U[X]o={v(r)}v={P(I(o))}X=v[1]P=5734271 O=v[3]o=X H=v[2]
                                            end
                                        elseif P<5856321 then
                                                if P<5852859 then
                                                    E=n[B[1]]d=X X=E P=E and 11539794 or 862556
                                                else
                                                    P=m P=4136356 X=r
                                                end
                                            else
                                                g=P a="Health"L=o[a]a=0 K=L>a P=K and 7378905 or 5680625 h=K
                                            end
end
                                    end
                                elseif P<5892028 then
                                        if P<5869998 then
                                            if P<5869754 then
                                                if P<5864742 then
                                                    N=m H="table"Q=U[H]H="insert"P=Q[H]N=nil H=n[B[2]]Q=P(H,G)G=nil P=5869982
                                                else
                                                    P=9838027
                                                end
                                            elseif P<5869965 then
                                                    X="Plate"P=X..G X={P}P=U["e5UMcJlC3n0TJo"]
                                                else
                                                    m,G=d(E,m)P=m and 5861531 or 5651780
                                                end
end
                                        elseif P<5884521 then
                                                if P<5875857 then
                                                    E=P N=n[B[7]]G="Character"m=N[G]d=m P=m and 7870654 or 15309279
                                                else
                                                    N=n[B[2]]G="CircleIsland"m=N[G]N="RaidSummon"E=m[N]m="Button"d=E[m]E="Main"r=d[E]d="CanCollide"X=r[d]P=not X P=P and 3330190 or 2390643
                                                end
                                            else
                                                P=1729290
                                            end
end
                                    elseif P<5924791 then
                                            if P<5916231 then
                                                if P<5905852 then
                                                    r=nil P=U["Q4cDq9ctEWV8H8"]X={}
                                                else
                                                    P=n[B[1]]E="CFrame"d=U[E]N=103 m=14895 E="new"r=d[E]E=28286 d={r(E,m,N)}X=P(I(d))P=5719624
                                                end
                                            else
                                                d=nil P=6389792 r=nil E=nil m=nil
                                            end
                                        elseif P<5928067 then
                                                if P<5926698 then
                                                    r="AutoFinishTrial"X=n[B[1]]P=X[r]P=P and 14450775 or 3420948
                                                else
                                                    C="Position"K=n[B[1]]L="DistanceFromCharacter"L=K[L]a=i[C]L=L(K,a)K=50 g=L<=K P=g and 8069921 or 1967443
                                                end
                                            else
                                                P=8533515
                                            end
end
                                    end
end
                            elseif P<6021133 then
                                    if P<5978088 then
                                        if P<5950269 then
                                            if P<5944948 then
                                                if P<5936831 then
                                                    X="TeleService"P=U[X]r=n[B[1]]d=n[B[2]]X="TeleportToPlaceInstance"X=P[X]X=X(P,r,d)r="task"X=U[r]r="wait"P=X[r]r=1.5 X=P(r)X={}P=U["c7m4F2rLPj0Hd1"]
                                                else
                                                    v="MobsNextSpawn"O=U[v]g=1 i=d[g]P=U["PzoW8hKE83E9"]v={O(i)}X={I(v)}
                                                end
                                            elseif P<5950064 then
                                                    m,Q=N(E,m)P=m and 2264855 or 4453236
                                                else
                                                    P=15994124 m=nil N=nil
                                                end
end
                                        elseif P<5960084 then
                                                if P<5957519 then
                                                    P=9487054
                                                else
                                                    P=O>E P=P and 13472461 or 9981570
                                                end
                                            else
                                                i="Health"v=n[B[5]]o=v[i]v=0 O=o<=v P=6888932 Q=O
                                            end
end
                                    elseif P<6010038 then
                                            if P<6004890 then
                                                if P<5987088 then
                                                    G="ZQuestProgress"d=P N="FireInvoke"Q="Check"m=U[N]N=m(G,Q)m=1 E=N==m r=E P=E and 16499218 or 224090
                                                else
                                                    r=n[B[1]]d="Character"X=r[d]r="FindFirstChild"d="HumanoidRootPart"r=X[r]r=r(X,d)d="PartVelocuty"X="FindFirstChild"X=r[X]X=X(r,d)P=not X P=P and 12162120 or 12555800
                                                end
                                            else
                                                X="isnetworkowner"P=U[X]X={P(r)}P=U["8UvpoVSobqWy"]X={I(X)}
                                            end
                                        elseif P<6012503 then
                                                if P<6011795 then
                                                    r=A(13288139,{B[1]})X="pcall"P=U[X]X=P(r)P=10969869
                                                else
                                                    G=nil N=nil P=16089608
                                                end
                                            else
                                                nd="pcall"Xd=U[nd]rd="gethook"Bd=R[rd]rd={Xd(Bd)}nd=rd[1]cd=rd[2]P=nd and 12980633 or 15557306
                                            end
end
                                    end
                                elseif P<6061827 then
                                        if P<6048928 then
                                            if P<6035966 then
                                                if P<6028158 then
                                                    i="Eagle Eye: Not Active"Q=n[B[1]]G=Q..i i="FindFirstChild"Q=n[B[2]]i=Q[i]h="Map"i=i(Q,h)P=i and 3467351 or 1182175
                                                else
                                                    E,G=m(d,E)P=E and 15692599 or 11642071
                                                end
                                            elseif P<6044841 then
                                                    d=n[B[1]]X=d r=P P=d and 6825090 or 3292987
                                                else
                                                    P="GetChildren"P=r[P]X=1 P=P(r)d=P E=#d m=E E=1 N=E P=12003304 E=0 G=N<E E=X-N
                                                end
end
                                        elseif P<6055953 then
                                                if P<6050978 then
                                                    P={}r=P m="math"X=n[B[1]]E=U[m]m="random"d=E[m]N=n[B[1]]m=#N E=d(m)P=X[E]X=n[B[2]]E="attackmobs"d=P P=X[E]P=P and 16565810 or 4112495
                                                else
                                                    E="math"X=U[E]N="Quest cooling down...(Anti Reset)"E="floor"P=X[E]m=n[B[5]]G=8 E=m-d X=P(E)m="Quest"P=n[B[6]]E=X X=P(m,N,G)P=U["hZSFujih3iGEN"]X={}
                                                end
                                            else
                                                P=U["pi2rcRVnV4F3C"]X={}
                                            end
end
                                    elseif P<6066497 then
                                            if P<6063398 then
                                                if P<6062089 then
                                                    E="StopTween"X=U[E]E=X()P=U["rtusFHbNTPVl"]X={}
                                                else
                                                    o=P h="ToolTip"i=E[h]h="Blox Fruit"v=i==h P=v and 7090513 or 9873438 O=v
                                                end
                                            else
                                                E="Swan Pirate"X="MobsNextSpawn"P=U[X]X=P(E)P=5031519
                                            end
                                        elseif P<6093914 then
                                                if P<6074935 then
                                                    d={}X=d P=10704137
                                                else
                                                    X={}P=U["uKHp0f1Rg9z1K"]
                                                end
                                            else
                                                P=n[B[1]]r="rip_indra True Form"X=P(r)P=X and 12543114 or 1038941
                                            end
end
                                    end
end
                            end
end
                    end
end
            elseif P<7179659 then
                    if P<6655819 then
                        if P<6395906 then
                            if P<6270722 then
                                if P<6188370 then
                                    if P<6160638 then
                                        if P<6143078 then
                                            if P<6120448 then
                                                if P<6113810 then
                                                    X="FireInvoke"P=U[X]m=P H=0 Q=r==H G=P H="2"N=Q and H G="3"E=N or G d="Alchemist"X=P(d,E)P=12163281
                                                else
                                                    N=m H="IsA"O="BlurEffect"H=G[H]H=H(G,O)Q=H P=H and 8423039 or 3798302
                                                end
                                            elseif P<6128182 then
                                                    x=2 L="DistanceFromCharacter"t="Parent"K=n[B[2]]y=O[t]t="GetPivot"t=y[t]R="Vector3"M=0 t=t(y)y="Position"C=t[y]t=U[R]R="new"L=K[L]y=t[R]R=0 t=y(R,x,M)a=C+t L=L(K,a)K=L<m P=K and 4314714 or 9401937
                                                else
                                                    P=549217
                                                end
end
                                        elseif P<6157694 then
                                                if P<6152984 then
                                                    P=X and 14686521 or 5600475
                                                else
                                                    P=825474
                                                end
                                            else
                                                P=15115237
                                            end
end
                                    elseif P<6180798 then
                                            if P<6173797 then
                                                if P<6169931 then
                                                    Q="task"P=S()n[P]=N N=P m=d G=U[Q]Q="spawn"P=G[Q]m=nil Q=p(8442867,{N,B[2]
                                                    B[3]
                                                    B[4]
                                                    B[5]})G=P(Q)P=7307571 N=l(N)
                                                else
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 14616452 or 7348102
                                                end
                                            elseif P<6176889 then
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 10226389 or 16086071
                                                else
                                                    H="task"Q=U[H]H="wait"P=Q[H]Q=P()P=7892132
                                                end
end
                                        elseif P<6184464 then
                                                if P<6181272 then
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 8708556 or 3589651
                                                else
                                                    r=nil X={}P=U["WdelzRw7d4hiU"]d=nil
                                                end
                                            else
                                                X="CheckTool"P=U[X]r="Hidden Key"X=P(r)P=X and 8610726 or 5023331
                                            end
end
                                    end
                                elseif P<6218405 then
                                        if P<6206625 then
                                            if P<6201881 then
                                                if P<6196122 then
                                                    N=33453 E="CFrame"P=n[B[4]]d=U[E]m=125 E="new"r=d[E]E=921 d={r(E,m,N)}X=P(I(d))P=7032153
                                                else
                                                    H="Venomous Assailant"P=n[B[5]]Q={H}O=1090.178 o=1078.1713 H="CFrame"G=P(Q)Q=U[H]H="new"P=Q[H]H=4731.2719 Q=P(H,O,o)d=Q r=G P=2136202
                                                end
                                            elseif P<6203817 then
                                                    P=U["demeR4Yzk0wZn"]X={}
                                                else
                                                    v=P i=H~=r o=i P=i and 6274174 or 8282990
                                                end
end
                                        elseif P<6215654 then
                                                if P<6207879 then
                                                    O="Part"H="IsA"N=E H=G[H]H=H(G,O)Q=H P=H and 1520288 or 10717507
                                                else
                                                    G="Data"N=n[B[1]]m=N[G]N="Race"E=m[N]m="Value"d=E[m]E="Cyborg"r=d==E X=r P=r and 4519041 or 3393877
                                                end
                                            else
                                                P=6520134
                                            end
end
                                    elseif P<6258517 then
                                            if P<6253606 then
                                                if P<6245291 then
                                                    P=H and 1045286 or 2940368 o=H
                                                else
                                                    P=nil X={P}P=U["kvBpihhA8c0Oa"]
                                                end
                                            else
                                                X="SetAttribute"d=nil r="RestartingTemple"P=n[B[1]]X=P[X]X=X(P,r,d)X={}P=U["kjBgxxzpj9c1"]
                                            end
                                        elseif P<6267274 then
                                                if P<6260777 then
                                                    d="Material"r="CheckInventory"E="Ectoplasm"X=U[r]r=X(d,E)X=100 P=r<X P=P and 13073749 or 5457421
                                                else
                                                    K="GetAttribute"g=n[B[3]]L="PvpDisabled"P=9825972 K=g[K]K=K(g,L)h=not K v=h
                                                end
                                            else
                                                P=U["RDux1Qoldu5ott"]Q=true X={Q}
                                            end
end
                                    end
end
                            elseif P<6320290 then
                                    if P<6293035 then
                                        if P<6284340 then
                                            if P<6276184 then
                                                if P<6273068 then
                                                    P=n[B[1]]X=P()P=U["CEhgdq8O60aNon"]X={}
                                                else
                                                    g="Name"P=8282990 K="Name"h=H[g]g=r[K]i=h==g o=i
                                                end
                                            elseif P<6281860 then
                                                    X={}P=U["h6l0ZQsHPCR2K"]
                                                else
                                                    E=n[B[1]]m="Team"N="Team"X=E[m]m=n[B[2]]E=m[N]P=X==E E=P m=E N=P P=E and 13155542 or 9955028
                                                end
end
                                        elseif P<6287800 then
                                                if P<6285016 then
                                                    o=nil P=6627479
                                                else
                                                    P=U["KoOVxK0LKqewR"]X={X}
                                                end
                                            else
                                                o="pairs"m=Q O=U[o]g="GetAttributes"g=H[g]h={g(H)}g={O(I(h))}P=2320451 v=g[2]i=g[3]o=g[1]
                                            end
end
                                    elseif P<6303815 then
                                            if P<6303107 then
                                                if P<6300191 then
                                                    d="DistanceFromCharacter"P=n[B[1]]d=P[d]X={d(P,r)}X={I(X)}P=U["lh6iuAb80Nn3"]
                                                else
                                                    r="PlayerGui"X=n[B[1]]P=X[r]r="Notifications"X="FindFirstChild"X=P[X]X=X(P,r)r=X P=not r P=P and 7938167 or 16337816
                                                end
                                            else
                                                N="Waterfall"m=n[B[7]]E=m[N]m="IslandModel"N=true d=E[m]E="FindFirstChild"m="Meshes/bambootree"E=d[E]E=E(d,m,N)P=E and 5784389 or 3500335
                                            end
                                        elseif P<6319947 then
                                                if P<6307592 then
                                                    E="PlayerGui"d=n[B[1]]r=d[E]d="Main"X=r[d]r="AwakeningToggler"P=X[r]X="Visible"r=true P[X]=r X={}P=U["a2K9Q1LQMYgwH"]
                                                else
                                                    d=n[B[1]]r=not d P=r and 2255483 or 5270413 X=r
                                                end
                                            else
                                                r="BlackScreen"X=n[B[1]]P=X[r]P=P and 11376126 or 11322330
                                            end
end
                                    end
                                elseif P<6346810 then
                                        if P<6334544 then
                                            if P<6327034 then
                                                if P<6323890 then
                                                    r=n[B[1]]d="Modules"X=r[d]r="Net"P=X[r]r="RE/RegisterHit"X="WaitForChild"X=P[X]X=X(P,r)r=n[B[2]]d=n[B[3]]P="FireServer"P=X[P]P=P(X,r,d)X={}P=U["KyZeQsceJoPQ"]
                                                else
                                                    P=9702106
                                                end
                                            elseif P<6330945 then
                                                    P=10239662
                                                else
                                                    G="Lava Pirate"P=n[B[5]]N={G}m=P(N)G="CFrame"Q=16 N=U[G]G="new"P=N[G]H=-5247 r=m G=-5478 N=P(G,Q,H)P=2136202 d=N
                                                end
end
                                        elseif P<6341443 then
                                                if P<6340189 then
                                                    i,h=o(v,i)P=i and 14879488 or 3313529
                                                else
                                                    X="EquipToolName"r="Cup"P=U[X]d="CheckTool"E="Cup"X=P(r)r=U[d]d=r(E)X=d P=d and 10697414 or 2906410
                                                end
                                            else
                                                m=true P=n[B[9]]X={P(d,m)}X={I(X)}P=U["kbR6ALK9eqOR"]
                                            end
end
                                    elseif P<6363720 then
                                            if P<6357775 then
                                                if P<6350124 then
                                                    X="pcall"P=U[X]r=W(6312466,{B[2]
                                                    B[3],B[4],B[5],B[6]
                                                    B[7],B[8]})X=P(r)P=15640516
                                                else
                                                    X="FireInvoke"d="Buy"r="Cousin"P=U[X]X=P(r,d)X="firesignal"P=U[X]H="PlayerGui"Q=n[B[2]]G=Q[H]Q="SpinnerWindow"N=G[Q]G="AboveSpinner"m=N[G]N="Navigation"E=m[N]m="CloseButton"d=E[m]E="Activated"r=d[E]X=P(r)P=10410027
                                                end
                                            else
                                                r=E P=m P=7495063
                                            end
                                        elseif P<6392567 then
                                                if P<6370799 then
                                                    o="Color3"O=U[o]P=16767375 i=0 o="new"H=O[o]v=1 o=1 O=H(o,v,i)X=O
                                                else
                                                    m=n[B[1]]d=P E=not m P=E and 3303508 or 9113255 r=E
                                                end
                                            else
                                                v="CFrame"Q=n[B[4]]o=U[v]v="new"i=178 O=o[v]v=-8800.0 h=6033 P=13812191 o={O(v,i,h)}H=Q(I(o))
                                            end
end
                                    end
end
                            end
                        elseif P<6545731 then
                                if P<6470354 then
                                    if P<6424829 then
                                        if P<6412366 then
                                            if P<6406305 then
                                                if P<6403604 then
                                                    H=o P=v P=6950853
                                                else
                                                    h="ToolTip"i=Q[h]v=i==d P=14059256 O=v
                                                end
                                            elseif P<6406724 then
                                                    Ed=P dd=S()Xd=false md=b(6478878,{dd})n[dd]=Xd ld=K(md)P=ld and 14823196 or 14703617 Xd=ld
                                                else
                                                    O=not H N=N+Q X=N<=G X=O and X O=N>=G O=H and O X=O or X O=11381411 P=X and O X=13059201 P=P or X
                                                end
end
                                        elseif P<6422997 then
                                                if P<6418057 then
                                                    P=5683180
                                                else
                                                    Q="Disconnect"G=n[B[2]]Q=G[Q]Q=Q(G)G=nil n[B[2]]=G P=9309431
                                                end
                                            else
                                                Ad[57]="getsenv"Ad[54]="pcall"Ad[53]=U[Ad[54]]Ad[56]=U[Ad[57]]Ad[57]={Ad[53](Ad[56],Ad[49])}Ad[56]=P Ad[54]=Ad[57][1]Ad[55]=Ad[57][2]P=Ad[54]and 4698742 or 4941790 Ad[53]=Ad[54]
                                            end
end
                                    elseif P<6462965 then
                                            if P<6442829 then
                                                if P<6425763 then
                                                    r=k[1]P=n[B[1]]X="QuestDebounce"d=r r=nil P[X]=d P=U["82g2ue1eE8rQP"]X={}
                                                else
                                                    m="Bartilo"E="BartiloQuestProgress"d="FireInvoke"X=U[d]d=X(E,m)X=3 P=d==X P=P and 16233090 or 13025155
                                                end
                                            elseif P<6447252 then
                                                    P=15453788
                                                else
                                                    Ad[9]=not Ad[8]Ad[5]=Ad[5]+Ad[7]Ad[4]=Ad[5]<=Ad[6]Ad[4]=Ad[9]and Ad[4]Ad[9]=Ad[5]>=Ad[6]Ad[9]=Ad[8]and Ad[9]Ad[4]=Ad[9]or Ad[4]Ad[9]=2731992 P=Ad[4]and Ad[9]Ad[4]=14060048 P=P or Ad[4]
                                                end
end
                                        elseif P<6465321 then
                                                if P<6464865 then
                                                    P=13282349
                                                else
                                                    P=X and 3920823 or 4864031
                                                end
                                            else
                                                r="AutoQuestBlaze"X=n[B[1]]P=X[r]P=P and 3743282 or 3459712
                                            end
end
                                    end
                                elseif P<6498394 then
                                        if P<6492190 then
                                            if P<6482378 then
                                                if P<6478958 then
                                                    P=true n[B[1]]=P X={}P=U["moylPe59SC0Xdl"]
                                                else
                                                    P=8130596 E=nil
                                                end
                                            elseif P<6485909 then
                                                    o=v P=i P=7264676
                                                else
                                                    Q=O i="Model"v="IsA"v=o[v]v=v(o,i)P=v and 10779485 or 7148101
                                                end
end
                                        elseif P<6495046 then
                                                if P<6493930 then
                                                    P=n[B[3]]m={P()}r=m[2]E=m[4]X=m[1]d=m[3]m=X P=m and 14674925 or 902135
                                                else
                                                    x="Name"P=4508333 R=L[x]t=R==r C=t
                                                end
                                            else
                                                m=E Q="string"H="Name"G=U[Q]Q="find"X=G[Q]Q=N[H]H="Fruit"G=X(Q,H)P=G and 4132225 or 11562064
                                            end
end
                                    elseif P<6518282 then
                                            if P<6513593 then
                                                if P<6502548 then
                                                    C="HumanoidRootPart"i="CFrame"K="CFrame"g=U[K]K="new"h=g[K]a=r[C]C="CFrame"L=a[C]a="Position"K=L[a]P=11907876 g=h(K)O[i]=g
                                                else
                                                    E,G=m(d,E)P=E and 6206917 or 5028296
                                                end
                                            else
                                                P=15453788
                                            end
                                        elseif P<6538045 then
                                                if P<6525520 then
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 13987603 or 9778852
                                                else
                                                    nd,cd=sd(Xd,nd)P=nd and 4933534 or 15756420
                                                end
                                            else
                                                P=U["oSpvhtfRf7j3Kd"]X={}r=nil
                                            end
end
                                    end
end
                            elseif P<6599209 then
                                    if P<6582454 then
                                        if P<6565447 then
                                            if P<6553981 then
                                                if P<6551840 then
                                                    P=7148101
                                                else
                                                    P=n[B[1]]X=P()X={}P=U["bmFABv0qT3Jei3"]
                                                end
                                            elseif P<6558597 then
                                                    d=nil P=10027850
                                                else
                                                    X="AntiAFK"P=n[B[1]]r=k[1]d=r P[X]=d P=r and 15038560 or 11529223
                                                end
end
                                        elseif P<6578465 then
                                                if P<6567300 then
                                                    P=15360025
                                                else
                                                    r=nil P=2335783
                                                end
                                            else
                                                Q=E X="Model"P=d[Q]H=P P="IsA"P=H[P]P=P(H,X)O=P P=O and 3142666 or 7967261
                                            end
end
                                    elseif P<6594822 then
                                            if P<6587335 then
                                                if P<6585568 then
                                                    P=r P=not X P=P and 11509717 or 9948347
                                                else
                                                    P=d P=X and 4420238 or 2174892
                                                end
                                            else
                                                X=n[B[1]]P=not X P=P and 8159094 or 8156712
                                            end
                                        elseif P<6596719 then
                                                if P<6596434 then
                                                    X="getnilinstances"P=U[X]X=P()r=X m="GetChildren"X="next"E="NPCs"P=U[X]d=n[B[2]]X=d[E]m=X[m]m={m(X)}d=m[1]E=m[2]m=P P=1475654
                                                else
                                                    r="AutoGetWhiteBelt"X=n[B[1]]P=X[r]P=P and 6989075 or 3288692
                                                end
                                            else
                                                d="Relic"r="CheckTool"X=U[r]r=X(d)P=not r P=P and 14565278 or 16036394
                                            end
end
                                    end
                                elseif P<6625079 then
                                        if P<6618849 then
                                            if P<6612079 then
                                                if P<6608726 then
                                                    N="string"m=U[N]N="find"E=m[N]Q="Name"G=n[B[2]]N=G[Q]P=10950620 G="Fruit"m=E(N,G)r=m
                                                else
                                                    N="AutoDarkDagger"m=n[B[1]]E=m[N]P=12345577 d=not E X=d
                                                end
                                            elseif P<6617251 then
                                                    Ed=md P=Yd P=1407105
                                                else
                                                    P=8328135 N=n[B[1]]G="DetectPiranha"m=N[G]E=m
                                                end
end
                                        elseif P<6623206 then
                                                if P<6621322 then
                                                    E,G=m(d,E)P=E and 10361495 or 1442669
                                                else
                                                    Ad[11]=Ad[13]P=Ad[14]P=16049238
                                                end
                                            else
                                                X={}r=nil P=U["VDVvSTyw8YlA"]
                                            end
end
                                    elseif P<6640292 then
                                            if P<6637361 then
                                                if P<6630003 then
                                                    Q=nil H=nil P=1762679 O=nil
                                                else
                                                    P=G and 14198950 or 5572553
                                                end
                                            else
                                                i="string"P=3426491 h="Name"v=U[i]i="find"o=v[i]i=H[h]h="Fruit"v=o(i,h)O=v
                                            end
                                        elseif P<6651492 then
                                                if P<6645261 then
                                                    P=n[B[1]]X=P()P=U["QHIpWR4HxtudzA"]X={}
                                                else
                                                    E="DetectShark"P=nil X=n[B[1]]d=P P=X[E]P=P and 16531120 or 16485103
                                                end
                                            else
                                                P=14962184
                                            end
end
                                    end
end
                            end
end
                    elseif P<6951865 then
                            if P<6835217 then
                                if P<6745124 then
                                    if P<6692772 then
                                        if P<6676382 then
                                            if P<6659915 then
                                                if P<6657905 then
                                                    X="FireInvoke"N=r P=U[X]H="tostring"Q=U[H]G="ColorsDealer"H={Q(N)}X=P(G,I(H))P=5281021 N=nil
                                                else
                                                    i=v K="Name"g=H[K]X=g==i P=X and 4243580 or 3630788
                                                end
                                            elseif P<6661525 then
                                                    d="VerifyQuest"X=U[d]m=n[B[1]]N=m()m=1 E=N[m]d=X(E)P=not d P=P and 12699342 or 3519122
                                                else
                                                    P=E and 5050743 or 16136935
                                                end
end
                                        elseif P<6690899 then
                                                if P<6688695 then
                                                    X="FireInvoke"r="CyborgTrainer"P=U[X]d="Buy"X=P(r,d)X={}P=U["r3Qm2cSgvCNYZY"]
                                                else
                                                    X=O P=o P=O and 1463487 or 15670116
                                                end
                                            else
                                                d="Bones"m=1 E="Buy"N=1 X="FireInvoke"P=U[X]X=P(d,E,m,N)d="CheckInventory"m="Bones"E="Material"X=U[d]d=X(E,m)P=r==d P=P and 4109520 or 1018198
                                            end
end
                                    elseif P<6724605 then
                                            if P<6717892 then
                                                if P<6694576 then
                                                    X="StopTween"P=U[X]X={P()}P=U["Rj4Ck5y3vVQw"]X={I(X)}
                                                else
                                                    o=i P=h P=12270004
                                                end
                                            elseif P<6721775 then
                                                    X=1 m=#d N=m m=2 G=m m=0 Q=G<m m=X-G P=362123
                                                else
                                                    r=nil P=11060000
                                                end
end
                                        elseif P<6737381 then
                                                if P<6735412 then
                                                    P=bd md=Td P=6617003
                                                else
                                                    P=13812191
                                                end
                                            else
                                                y,t=a(C,y)P=y and 11566728 or 10415854
                                            end
end
                                    end
                                elseif P<6783530 then
                                        if P<6771976 then
                                            if P<6765499 then
                                                if P<6763186 then
                                                    P=U["W7OeRDzboRlH"]X={}
                                                else
                                                    P=true P=P and 3633437 or 13597836
                                                end
                                            elseif P<6770437 then
                                                    E="FireInvoke"m="ProQuestProgress"d=U[E]N="RichSon"E=d(m,N)d=0 r=E~=d X=r P=r and 8995533 or 14172553
                                                else
                                                    n[d]=X P=8154282
                                                end
end
                                        elseif P<6776438 then
                                                if P<6775032 then
                                                    X="ipairs"P=U[X]Q="Map"G=n[B[1]]N=G[Q]G="Waterfall"m=N[G]N="IslandModel"E=m[N]N="GetChildren"N=E[N]m={N(E)}E={P(I(m))}P=4375750 X=E[1]d=E[3]r=E[2]E=X
                                                else
                                                    X=n[B[5]]N="SelectedRod"O="FishReplicated"m=n[B[1]]E=m[N]d=X(E)d="require"X=U[d]N=n[B[4]]v="Head"K="HumanoidRootPart"G="Util"m=N[G]N="GetWaterHeightAtLocation"E=m[N]d=X(E)N="HumanoidRootPart"m=U[N]N="Position"E=m[N]X=d(E)E=X m="require"X=U[m]H=n[B[4]]Q=H[O]H="FishingClient"G=Q[H]O="Ray"Q="Config"N=G[Q]m=X(N)X=n[B[6]]H=U[O]O="new"Q=H[O]o=r[v]v="Position"O=o[v]g=U[K]K="CFrame"h=g[K]K="Rod"g="LookVector"i=h[g]g=m[K]K="MaxLaunchDistance"h=g[K]v=i*h i=.99751243781095 o=v*i i="Enemies"H=Q(O,o)v="Characters"o=n[B[6]]O=o[v]v=n[B[6]]L=0 o=v[i]v="Ray"Q={r,O,o}O="FindPartOnRayWithIgnoreList"O=X[O]O={O(X,H,Q)}G=O[2]X=n[B[6]]N=O[1]g="Vector3"o=U[v]v="new"O=o[v]h=U[g]g="new"i=h[g]K=3 g=0 h=i(g,K,L)g="Vector3"v=G+h h=U[g]g="new"L=0 i=h[g]g=0 K=-500 h={i(g,K,L)}o=O(v,I(h))i=n[B[6]]h="Characters"v=i[h]g="Enemies"h=n[B[6]]i=h[g]O={r,v
                                                    i}v="FindPartOnRayWithIgnoreList"v=X[v]v={v(X,o,O)}Q=v[1]H=v[2]X=nil o=P P=Q and 7389186 or 643946 O=X X=Q
                                                end
                                            else
                                                P=n[B[1]]X=P()X={}P=U["WGO0R1Y3OKhcYu"]
                                            end
end
                                    elseif P<6824151 then
                                            if P<6808712 then
                                                if P<6804938 then
                                                    r="rip_indra"P=n[B[4]]X=P(r)r=X P=r and 10205905 or 5056077
                                                else
                                                    O="PlayerGui"H=n[B[1]]Q=H[O]H="Main"G=Q[H]Q="Quest"N=G[Q]G="Visible"m=N[G]P=2936630 d=m
                                                end
                                            else
                                                Q="pairs"P=U[Q]v="GetAttributes"v=G[v]o={v(G)}v={P(I(o))}H=v[2]Q=v[1]O=v[3]P=5561588
                                            end
                                        elseif P<6831109 then
                                                if P<6826313 then
                                                    P=3292987 N="Value"m=n[B[2]]E=m[N]m=700 d=E>=m X=d
                                                else
                                                    E="task"d=U[E]E="wait"r=d[E]E=1 P=5931146 d=r(E)
                                                end
                                            else
                                                X={}P=U["h48N1bYeXrUJ"]
                                            end
end
                                    end
end
                            elseif P<6891790 then
                                    if P<6858589 then
                                        if P<6845392 then
                                            if P<6842133 then
                                                if P<6841927 then
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 8590973 or 8643100
                                                else
                                                    P=n[B[3]]d=true X={P(r,d)}X={I(X)}P=U["TJJ4ft0Hm8fh6E"]
                                                end
                                            elseif P<6842923 then
                                                    P="Deandre"X={P}P=U["FBwzUM4PcsDVjw"]
                                                else
                                                    P=1857545
                                                end
end
                                        elseif P<6850676 then
                                                if P<6845551 then
                                                    m=nil P=15013315 N=nil
                                                else
                                                    H=P O="FindFirstChild"O=Q[O]O=O(Q,d)X=O P=O and 11869732 or 12363471
                                                end
                                            else
                                                P=6510163 G=nil N=nil
                                            end
end
                                    elseif P<6879830 then
                                            if P<6871768 then
                                                if P<6865427 then
                                                    i=P Q=n[B[6]]O=false H=Q(O)o=true Q=n[B[6]]O=Q(o)o=P K=n[B[3]]g=#K K=0 h=g>K v=h P=h and 10676745 or 8632791
                                                else
                                                    X={}P=U["YPtTHfsRF90m"]
                                                end
                                            else
                                                d=n[B[2]]m="MoonPhase"E="GetAttribute"E=d[E]E=E(d,m)d=5 r=E~=d X=r P=3693494
                                            end
                                        elseif P<6890137 then
                                                if P<6882940 then
                                                    X={}r=nil P=U["Lsc4GSFnGDy6"]
                                                else
                                                    P=H P=7930790 N=Q
                                                end
                                            else
                                                g=nil i=nil P=4391263 h=nil v=nil
                                            end
end
                                    end
                                elseif P<6932969 then
                                        if P<6914026 then
                                            if P<6898159 then
                                                if P<6896772 then
                                                    H="HumanoidRootPart"P="FindFirstChild"P=Q[P]G=m P=P(Q,H)O="Humanoid"H=P o=H P="FindFirstChild"P=Q[P]P=P(Q,O)O=P P=H and 2557413 or 7264676
                                                else
                                                    N=E H="table"Q=U[H]P=1475654 H="insert"X=Q[H]Q=X(r,G)G=nil N=nil
                                                end
                                            elseif P<6912090 then
                                                    X={}P=U["TT8176xxCmgxap"]
                                                else
                                                    o="_WorldOrigin"P=n[B[2]]O=n[B[5]]H=O[o]O="Locations"Q=H[O]H="Prehistoric Island"G=Q[H]Q="CFrame"N=G[Q]m=P(N)P=13004774
                                                end
end
                                        elseif P<6931630 then
                                                if P<6918144 then
                                                    d="AbandonQuest"X="FireInvoke"P=U[X]X=P(d)d="task"X=U[d]d="wait"P=X[d]d=.1 X=P(d)d="EliteHunter"X="FireInvoke"P=U[X]X=P(d)P=3376459
                                                else
                                                    P=U["5Il5pH9jTE5j"]i=true O=n[B[4]]v={O(o,i)}X={I(v)}
                                                end
                                            else
                                                P=9159422
                                            end
end
                                    elseif P<6946878 then
                                            if P<6942079 then
                                                if P<6940766 then
                                                    P=7334035 d=nil
                                                else
                                                    X={}d=nil r=nil P=U["kFXjlW6wAPHW7"]
                                                end
                                            else
                                                X={}P=U["kWINd95rBaIa"]
                                            end
                                        elseif P<6948463 then
                                                if P<6947954 then
                                                    P={}X="ipairs"r=P P=U[X]m=n[B[1]]Q="GetTagged"G="_ChestTagged"Q=m[Q]N={Q(m,G)}m={P(I(N))}X=m[1]d=m[2]E=m[3]m=X P=5539730
                                                else
                                                    E=n[B[1]]m="Data"d=E[m]E="Race"r=d[E]d="Value"X=r[d]r="Ghoul"P=X==r P=P and 1238737 or 6260315
                                                end
                                            else
                                                P=O Q=H P=8423039
                                            end
end
                                    end
end
                            end
                        elseif P<7046112 then
                                if P<7004682 then
                                    if P<6979626 then
                                        if P<6971089 then
                                            if P<6963266 then
                                                if P<6952699 then
                                                    E=n[B[3]]P=16368565 d=E==r X=d
                                                else
                                                    Q=true G=E==Q P=G and 11665096 or 5827353
                                                end
                                            elseif P<6967247 then
                                                    P=3078083
                                                else
                                                    Ad[81]=Ad[79]Ad[85]="Price"Ad[84]=Ad[82][Ad[85]]Ad[85]=1000000 Ad[83]=Ad[84]>=Ad[85]P=Ad[83]and 2871431 or 7794011
                                                end
end
                                        elseif P<6975072 then
                                                if P<6973138 then
                                                    P=true P=P and 1513835 or 4821818
                                                else
                                                    P=309252
                                                end
                                            else
                                                P=n[B[4]]d=true X={P(r,d)}X={I(X)}P=U["YMDeaqzRdLKMXI"]
                                            end
end
                                    elseif P<6989199 then
                                            if P<6988748 then
                                                if P<6988046 then
                                                    P=h P=12269170 o=i
                                                else
                                                    r="SeaTerrorCC"X=n[B[2]]P=X[r]X="Destroy"X=P[X]X=X(P)P=8040304
                                                end
                                            else
                                                X="AutoWhiteBelt"P=U[X]X=P()P=3288692
                                            end
                                        elseif P<6998213 then
                                                if P<6993916 then
                                                    r=nil P=7128803
                                                else
                                                    P=n[B[1]]X=P()P=U["JQpiYnMg7U39"]X={}
                                                end
                                            else
                                                P=H H=A(12763316,{B[1],E
                                                G,B[2]})P="addDropdown"P=r[P]P=P(r,d,X,N,H)O=n[G]X=O H=P P=O and 12606368 or 14358776
                                            end
end
                                    end
                                elseif P<7035724 then
                                        if P<7020591 then
                                            if P<7017662 then
                                                if P<7016616 then
                                                    r="task"X=U[r]r="wait"d=9000000000.0 P=X[r]X=P()r="Map"P=n[B[2]]X="WaitForChild"X=P[X]X=X(P,r,d)P="FindFirstChild"r=X X="KitsuneIsland"P=r[P]P=P(r,X)P=P and 5018226 or 15076195
                                                else
                                                    X="FruitCheck"r=k[1]d=r P=n[B[1]]P[X]=d d="task"X=U[d]d="spawn"P=X[d]d=Y(10151664,{B[1]
                                                    B[2],B[3]})r=nil X=P(d)X={}P=U["MSK7OT80OiuE"]
                                                end
                                            elseif P<7018329 then
                                                    m,Q=N(E,m)P=m and 6894112 or 16331745
                                                else
                                                    v="Melee"O=P o=d==v Q=o P=o and 13152672 or 9313590
                                                end
end
                                        elseif P<7032051 then
                                                if P<7021580 then
                                                    G="AutoFarmPrince"N=n[B[1]]m=N[G]E=not m r=E P=4476163
                                                else
                                                    G="Map"P=n[B[3]]N=n[B[2]]m=N[G]N="Jungle"E=m[N]m="Torch"d=E[m]E="CFrame"r=d[E]X=P(r)P=5389207
                                                end
                                            else
                                                P=7776625
                                            end
end
                                    elseif P<7042450 then
                                            if P<7038045 then
                                                if P<7037717 then
                                                    P=n[B[1]]r=k[1]X="PointsSlider"d=r P[X]=d X={}r=nil P=U["rmQYHohlWOoQ5g"]
                                                else
                                                    P=Q and 10395301 or 1068380
                                                end
                                            else
                                                N="Position"m="CFrame"P=n[B[3]]E=U[m]m="new"d=E[m]m=r[N]E={d(m)}X=P(I(E))P=10429572
                                            end
                                        elseif P<7044589 then
                                                if P<7042847 then
                                                    X=E P=9781580
                                                else
                                                    r=n[B[2]]d="FindFirstChild"E="VisionRadius"d=r[d]d=d(r,E)X=d P=d and 4578717 or 3366390
                                                end
                                            else
                                                P=n[B[1]]P=P and 10439090 or 7600859
                                            end
end
                                    end
end
                            elseif P<7130369 then
                                    if P<7093226 then
                                        if P<7070863 then
                                            if P<7049250 then
                                                if P<7047604 then
                                                    X="MobsNextSpawn"d="Ship Deckhand"P=U[X]X={P(d)}P=U["h0bR8Fbyk3YP"]X={I(X)}
                                                else
                                                    E="Parent"d=r[E]X=d P=16011571
                                                end
                                            elseif P<7050563 then
                                                    P=d P=X and 2227869 or 469840
                                                else
                                                    P=n[B[2]]X="FindFirstChild"X=P[X]r="ESPquantumONYX"X=X(P,r)P="Destroy"P=X[P]P=P(X)P=3770315
                                                end
end
                                        elseif P<7092026 then
                                                if P<7072016 then
                                                    x="Storm blue"Pd="Part7"H="pairs"i="Part1"R="Part4"M="Part5"h="Really black"Q=U[H]u="Dusty Rose"Ud="Part10"J="Really black"P=12975153 g="Part2"V="Really black"jd="Part9"D="Part8"Id="Storm blue"t="Dusty Rose"e="Part6"y="Part3"q="Parsley green"a="Really black"z="Really black"v={[i]=h
                                                    [g]=a,[y]=t
                                                    [R]=x
                                                    [M]=z
                                                    [e]=q
                                                    [Pd]=J
                                                    [D]=u,[jd]=V,[Ud]=Id}i={Q(v)}H=i[1]O=i[2]o=i[3]
                                                else
                                                    K="Name"i=P g=E[K]K="Ice-Ice"h=g~=K P=h and 11280458 or 14142421 v=h
                                                end
                                            else
                                                E="CFrame"Q=-6.53588605e-009 N=-1324.34631 h=-5.3636442e-009 P=n[B[3]]d=U[E]O=-6.57083277e-009 i=-0.00654155109 E="new"m=37.4733238 g=-0.999978602 G=-0.999978602 o=1 v=-5.32077493e-009 H=.00654155109 r=d[E]E=1395.77307 d={r(E,m,N,G,Q,H,O,o,v,i,h,g)}X=P(I(d))P=12945929
                                            end
end
                                    elseif P<7125422 then
                                            if P<7114903 then
                                                if P<7108630 then
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()X=n[B[2]]r="Map"P=X[r]X="FindFirstChild"X=P[X]r="MysticIsland"X=X(P,r)r=X P=r and 5308488 or 16388280
                                                else
                                                    P=0 d="math"X=U[d]N="Character"r=P d="huge"P=X[d]d=P m=n[B[1]]E=m[N]X=E P=E and 7853823 or 11285820
                                                end
                                            else
                                                d=nil m=nil E=nil P=2826563
                                            end
                                        elseif P<7129605 then
                                                if P<7125971 then
                                                    m,Q=N(E,m)P=m and 4596503 or 11660393
                                                else
                                                    X="CheckTool"r="Fist of Darkness"P=U[X]X=P(r)P=X and 5467119 or 5012429
                                                end
                                            else
                                                X="FireInvoke"d="BuyBoat"P=U[X]N="BoatSelected"m=n[B[1]]E=m[N]X=P(d,E)P=2321966
                                            end
end
                                    end
                                elseif P<7156910 then
                                        if P<7147192 then
                                            if P<7136038 then
                                                if P<7134296 then
                                                    G=n[B[2]]Q="FastSettings"N=G[Q]G="Fast Attack"X=N==G P=X and 9576275 or 2923384
                                                else
                                                    X={}P=U["E38YrT2ukm2ck"]
                                                end
                                            elseif P<7145610 then
                                                    P=1833177
                                                else
                                                    P=n[B[1]]N=-7214 m=2282 E="CFrame"d=U[E]E="new"r=d[E]E=2948 d={r(E,m,N)}X=P(I(d))X={}P=U["JgAl6eorPknW"]
                                                end
end
                                        elseif P<7152479 then
                                                if P<7148634 then
                                                    P=9026068 Q=nil o=nil
                                                else
                                                    P=m P=11285820 X=E
                                                end
                                            else
                                                P=U["Il4mmYgewHYN"]X={d}
                                            end
end
                                    elseif P<7167770 then
                                            if P<7167395 then
                                                if P<7164007 then
                                                    P=n[B[1]]X=P()P=U["o2FpovRr2SAb"]X={}
                                                else
                                                    P=X and 4567131 or 14545574
                                                end
                                            else
                                                d=nil P=U["qTDrR6go7Bv3V2"]X={}r=nil
                                            end
                                        elseif P<7177697 then
                                                if P<7168569 then
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 9198818 or 1706888
                                                else
                                                    Q="Plastic"P="Material"G[P]=Q Q=0 P="Reflectance"G[P]=Q P=6858094
                                                end
                                            else
                                                bd=l(bd)Ad[2]=l(Ad[2])Ed=l(Ed)Ad[112]=true Ad[19]=nil Ad[107]=Y(14256636,{q})Ad[105]="Select Island"Ad[121]="BuyHaki"Ad[106]="walang kayo sorry"Ad[129]="BuyItem"Ad[110]=true Ad[104]="addDropdown"Ad[104]=Ad[97][Ad[104]]Ad[104]=Ad[104](Ad[97],Ad[105],Ad[106],Ad[103],Ad[107])Ad[105]="Start Traveling"Ad[111]="stop"Ad[109]="global"Ad[130]="Cannon"Ad[135]=1 Ad[59]=nil Ad[107]=false Ad[108]={[Ad[109]]=Ad[110]
                                                [Ad[111]]=Ad[112]}Ad[106]="TeleportToIsland"Ad[104]=Ad[13](Ad[97],Ad[105],Ad[106],Ad[107],Ad[108])Ad[106]=Y(14295854,{q
                                                Ad[99],dd})Ad[115]="BlackbeardReward"Ad[105]="spawn"Ad[104]=U[Ad[105]]Ad[105]=Ad[104](Ad[106])Ad[90]=l(Ad[90])Ad[105]="Travel"Ad[92]=nil Ad[70]=nil Ad[54]=nil Ad[25]=nil R=l(R)Ad[104]=Ad[14][Ad[105]]Ad[105]="addSection"Ad[105]=Ad[104][Ad[105]]Ad[105]=Ad[105](Ad[104])Ad[106]="Server Travel"Ad[113]="game"Ad[104]="addMenu"Ad[104]=Ad[105][Ad[104]]Ad[125]="BuyItem"Ad[75]=l(Ad[75])g=l(g)Ad[57]=nil Ad[104]=Ad[104](Ad[105],Ad[106])Ad[118]="Refund"Ad[117]="2"Ad[122]="Soru"Ad[43]=l(Ad[43])cd=l(cd)Ad[106]=S()Ad[109]="JobID ["Ad[107]=A(15550858,{})n[Ad[106]]=Ad[107]Ad[112]=U[Ad[113]]Ad[113]="PlaceId"Ad[111]=Ad[112][Ad[113]]Ad[112]="]"Ad[39]=nil Ad[110]=Ad[111]..Ad[112]Ad[107]="addTextbox"Ad[94]=nil Ad[107]=Ad[104][Ad[107]]Ad[108]=Ad[109]..Ad[110]Ad[109]=Y(11085462,{Ad[106]
                                                M})Ad[111]="Frags"jd=l(jd)Ad[107]=Ad[107](Ad[104],Ad[108],Ad[109])Ad[109]=W(16079714,{})Ad[108]="Copy Current Job ID"Ad[1]=l(Ad[1])Ad[110]=p(8066633,{H,o})Ad[107]="addButton"Ad[64]=nil Ad[107]=Ad[104][Ad[107]]Ad[107]=Ad[107](Ad[104],Ad[108],Ad[109])Ad[109]="Rejoin Server"Ad[108]="Misc Travel"Ad[107]="addMenu"Ad[137]="Bisento"Ad[107]=Ad[105][Ad[107]]Ad[107]=Ad[107](Ad[105],Ad[108])N=l(N)Ad[95]=nil Ad[141]="ThunderGodTalk"Id=l(Id)Ad[108]="addButton"Ad[108]=Ad[107][Ad[108]]Ad[108]=Ad[108](Ad[107],Ad[109],Ad[110])Ad[10]=l(Ad[10])Ad[109]="Server Hop, Random Server"Ad[110]=w(13355762,{H,o})Ad[108]="addButton"Ad[47]=l(Ad[47])Ad[13]=nil Ad[108]=Ad[107][Ad[108]]Ad[134]="Buy"Ad[120]="Buso"Ad[78]=nil Ad[123]="KenTalk"Ad[108]=Ad[108](Ad[107],Ad[109],Ad[110])Ad[109]="Shop"Ad[108]=Ad[14][Ad[109]]Ad[110]="Selection Shop"Ad[109]="addSection"Ad[119]="2"Ad[109]=Ad[108][Ad[109]]Ad[109]=Ad[109](Ad[108])Ad[68]=l(Ad[68])Ad[108]="addMenu"Ad[126]="Refined Flintlock"Ad[108]=Ad[109][Ad[108]]Ad[66]=nil Ad[108]=Ad[108](Ad[109],Ad[110])Ad[113]="Race Rerol"Ad[116]="Reroll"Ad[114]={Ad[115]
                                                Ad[116]
                                                Ad[117]}Ad[117]="BlackbeardReward"Ad[105]=nil Ad[32]=nil Ad[116]={Ad[117]
                                                Ad[118],Ad[119]}Ad[119]="BuyHaki"Ad[115]="Reset Stats"Ad[112]={[Ad[113]]=Ad[114]
                                                [Ad[115]]=Ad[116]}Ad[115]="Geppo"Ad[118]="Geppo"dd=l(dd)Ad[113]="Ability"nd=l(nd)Ad[31]=l(Ad[31])Ad[132]="Slingshot"Ad[117]="BuyHaki"Ad[77]=nil Ad[38]=nil Ad[116]={Ad[117],Ad[118]}Ad[118]={Ad[119]
                                                Ad[120]}Ad[6]=l(Ad[6])Ad[119]="Soru"Ad[124]="Buy"Ad[45]=l(Ad[45])Ad[117]="Buso Haki"Ad[120]={Ad[121],Ad[122]}Ad[121]="Observation Haki"Ad[22]=nil Ad[122]={Ad[123]
                                                Ad[124]}Ad[114]={[Ad[115]]=Ad[116]
                                                [Ad[117]]=Ad[118]
                                                [Ad[119]]=Ad[120]
                                                [Ad[121]]=Ad[122]}Ad[120]="Slingshot"Ad[119]="BuyItem"Ad[122]="Musket"H=l(H)Ad[127]="BuyItem"Ad[117]="Slingshot"Ad[128]="Refined Flintlock"Ad[115]="Gun"Ad[121]="BuyItem"Ad[118]={Ad[119],Ad[120]}Ad[120]={Ad[121]
                                                Ad[122]}Ad[124]="Flintlock"Ad[133]="1"Ad[119]="Musket"Ad[123]="BuyItem"Ad[121]="Flintlock"Ad[122]={Ad[123]
                                                Ad[124]}Ad[123]="Refined Slingshot"Ad[124]={Ad[125]
                                                Ad[126]}Ad[126]={Ad[127],Ad[128]}Ad[127]="Cannon"Ad[76]=nil Ad[125]="Refined Flintlock"Ad[131]="BlackbeardReward"Ad[128]={Ad[129]
                                                Ad[130]}Ad[130]={Ad[131],Ad[132],Ad[133]}Ad[139]="Soul Cane"Ad[131]="Bizarre Rifle"Ad[140]={Ad[141]}Ad[129]="Kabucha"Ad[83]=l(Ad[83])Ad[138]={Ad[139]}Ad[139]="Pole v.2"Ad[133]="Ectoplasm"Ad[132]={Ad[133]
                                                Ad[134]
                                                Ad[135]}X={}Ad[116]={[Ad[117]]=Ad[118],[Ad[119]]=Ad[120]
                                                [Ad[121]]=Ad[122]
                                                [Ad[123]]=Ad[124]
                                                [Ad[125]]=Ad[126],[Ad[127]]=Ad[128],[Ad[129]]=Ad[130]
                                                [Ad[131]]=Ad[132]}i=l(i)Ad[119]="Black Cape"Ad[129]="Duel Katana"Ad[117]="Accessory"Ad[27]=l(Ad[27])Ad[121]="Black Cape"Ad[120]={Ad[121]}Ad[121]="Swordsman Hat"Ad[11]=l(Ad[11])Ad[128]={Ad[129]}D=l(D)Ad[125]="Tomoe Ring"Ad[123]="Swordsman Hat"Ad[124]={Ad[125]}Ad[133]="Pipe"Ad[61]=nil Ad[122]={Ad[123]}Ad[123]="Tomoe Ring"Ad[118]={[Ad[119]]=Ad[120],[Ad[121]]=Ad[122],[Ad[123]]=Ad[124]}Ad[119]="Sword"Ad[121]="Cutlass"Ad[82]=nil Ad[125]="Katana"Ad[49]=nil Ad[50]=l(Ad[50])Ad[91]=nil Ad[131]="Triple Katana"Ad[135]="Dual-Headed Blade"Ad[124]={Ad[125]}Ad[125]="Iron Mace"Ad[136]={Ad[137]}Ad[123]="Cutlass"Ad[122]={Ad[123]}Ad[72]=nil Ad[134]={Ad[135]}Ad[135]="Bisento"Ad[130]={Ad[131]}Ad[127]="Iron Mace"Ad[123]="Katana"Ad[126]={Ad[127]}Ad[129]="Triple Katana"Ad[132]={Ad[133]}Ad[131]="Pipe"Ad[133]="Dual-Headed Blade"Ad[137]="Soul Cane"Ad[127]="Dual Katana"Ad[120]={[Ad[121]]=Ad[122]
                                                [Ad[123]]=Ad[124]
                                                [Ad[125]]=Ad[126]
                                                [Ad[127]]=Ad[128]
                                                [Ad[129]]=Ad[130],[Ad[131]]=Ad[132],[Ad[133]]=Ad[134]
                                                [Ad[135]]=Ad[136]
                                                [Ad[137]]=Ad[138],[Ad[139]]=Ad[140]}Ad[87]=l(Ad[87])Ad[7]=l(Ad[7])Ad[110]={[Ad[111]]=Ad[112]
                                                [Ad[113]]=Ad[114]
                                                [Ad[115]]=Ad[116],[Ad[117]]=Ad[118]
                                                [Ad[119]]=Ad[120]}P=U["rclmXTXCzkCf"]Ad[111]=S()kd=l(kd)n[Ad[111]]=Ad[110]ld=l(ld)Ad[115]="Geppo"Ad[110]=w(9182048,{Ad[111]})V=l(V)Ad[114]="Abilities"Ad[112]=S()n[Ad[112]]=Ad[110]Ad[118]=n[Ad[111]]Ad[113]="addDropdown"Ad[110]=b(5722347,{})Ad[79]=nil Ad[119]="Ability"Ad[33]=nil Yd=l(Yd)Ad[113]=Ad[108][Ad[113]]Ad[117]=Ad[118][Ad[119]]Ad[116]=Ad[110](Ad[117])Ad[117]=A(14652959,{q})Ad[113]=Ad[113](Ad[108],Ad[114],Ad[115],Ad[116],Ad[117])Ad[113]="addButton"Ad[119]="Gun"Ad[113]=Ad[108][Ad[113]]Ad[114]="Buy Ability"u=l(u)Ad[115]=W(14684325,{q
                                                Ad[112]})Ad[113]=Ad[113](Ad[108],Ad[114],Ad[115])Ad[115]="Slingshot"Ad[30]=nil Ad[89]=nil Ad[118]=n[Ad[111]]Ad[114]="Gun list"Ad[117]=Ad[118][Ad[119]]Ad[119]="Accessory"Ad[69]=l(Ad[69])Ad[116]=Ad[110](Ad[117])Ad[113]="addDropdown"Ad[117]=Z(16048519,{q})Ad[113]=Ad[108][Ad[113]]Ad[67]=l(Ad[67])rd=l(rd)Ad[113]=Ad[113](Ad[108],Ad[114],Ad[115],Ad[116],Ad[117])Ad[114]="Buy Gun"Ad[113]="addButton"Ad[120]="Join Marines Team"Ad[48]=l(Ad[48])Ad[113]=Ad[108][Ad[113]]Ad[115]=w(14040262,{q
                                                Ad[112]})Ad[113]=Ad[113](Ad[108],Ad[114],Ad[115])Ad[118]=n[Ad[111]]Ad[97]=nil Ad[115]=1 Ad[114]="Accessories"Ad[117]=Ad[118][Ad[119]]Ad[113]="addDropdown"Ad[71]=l(Ad[71])Ad[127]=Z(375125,{q,o})Ad[113]=Ad[108][Ad[113]]Ad[123]="Aimbot (Beta)"Ad[116]=Ad[110](Ad[117])Ad[117]=A(14761621,{q})Ad[113]=Ad[113](Ad[108],Ad[114],Ad[115],Ad[116],Ad[117])Ad[114]="Buy Accessory"Ad[113]="addButton"Ad[113]=Ad[108][Ad[113]]Ad[115]=w(5555812,{q
                                                Ad[112]})Ad[55]=nil Ad[113]=Ad[113](Ad[108],Ad[114],Ad[115])Ad[117]=Z(16772421,{q})Ad[114]="Item Shop"Ud=l(Ud)Ad[113]="addMenu"Ad[113]=Ad[109][Ad[113]]Ad[121]=A(189756,{})Ad[118]=b(6686304,{})Ad[113]=Ad[113](Ad[109],Ad[114])Ad[115]="Buy Haki Color"Ad[114]="addToggle"Ad[114]=Ad[113][Ad[114]]Ad[116]=false O=l(O)Ad[114]=Ad[114](Ad[113],Ad[115],Ad[116],Ad[117])Ad[114]="addToggle"Ad[119]=p(1469072,{Ad[112]})Ad[117]=W(4726874,{q})Ad[24]=nil Ad[115]="Buy Legendary Sword"Ad[116]=false Ad[26]=l(Ad[26])Ad[114]=Ad[113][Ad[114]]Ad[114]=Ad[114](Ad[113],Ad[115],Ad[116],Ad[117])Ad[116]=false Ad[114]="addToggle"Ad[5]=l(Ad[5])Ad[115]="Buy True Triple Katana"Ad[114]=Ad[113][Ad[114]]Ad[117]=b(14904531,{q})Ad[114]=Ad[114](Ad[113],Ad[115],Ad[116],Ad[117])Ad[111]=l(Ad[111])Ad[115]="Shop"Ad[116]="Race Shop"Xd=l(Xd)Ad[114]=Ad[14][Ad[115]]Ad[115]="addSection"Ad[115]=Ad[114][Ad[115]]Ad[115]=Ad[115](Ad[114])Ad[114]="addMenu"Ad[114]=Ad[115][Ad[114]]Ad[117]="Cyborg Race"Ad[114]=Ad[114](Ad[115],Ad[116])Ad[116]="addButton"Ad[116]=Ad[114][Ad[116]]Ad[124]=false Ad[116]=Ad[116](Ad[114],Ad[117],Ad[118])Ad[80]=nil Ad[126]=50 Ad[116]="addButton"Ad[117]="Ghoul Race"Ad[118]=W(4329669,{})Ad[116]=Ad[114][Ad[116]]Ad[116]=Ad[116](Ad[114],Ad[117],Ad[118])Ad[117]="Fragment Shop"Ad[116]="addMenu"Ad[118]="Reroll Race"Ad[116]=Ad[115][Ad[116]]Ad[116]=Ad[116](Ad[115],Ad[117])Ad[117]="addButton"Ad[117]=Ad[116][Ad[117]]Ad[117]=Ad[117](Ad[116],Ad[118],Ad[119])Ad[51]=nil Ad[117]="addButton"Ad[117]=Ad[116][Ad[117]]Ad[118]="Reset Player Stats"Ad[119]=p(10345122,{Ad[112]})Ad[117]=Ad[117](Ad[116],Ad[118],Ad[119])Ad[118]="Misc"Ad[117]=Ad[14][Ad[118]]Ad[84]=nil Ad[118]="addSection"Ad[21]=nil Ad[118]=Ad[117][Ad[118]]Ad[118]=Ad[118](Ad[117])Ad[122]=b(7722700,{o})Ad[119]="Team Selection"Ad[117]="addMenu"Ad[117]=Ad[118][Ad[117]]Ad[117]=Ad[117](Ad[118],Ad[119])Ad[119]="addButton"Ad[23]=nil Ad[119]=Ad[117][Ad[119]]Ad[74]=nil Ad[119]=Ad[119](Ad[117],Ad[120],Ad[121])Ad[119]="addButton"Ad[120]="Join Pirates Team"Ad[121]=b(7684580,{})Ad[119]=Ad[117][Ad[119]]Ad[119]=Ad[119](Ad[117],Ad[120],Ad[121])Ad[121]="Open Title Names"Ad[119]="addMenu"Ad[120]="Menu Openings"Ad[108]=nil Ad[119]=Ad[118][Ad[119]]Ad[119]=Ad[119](Ad[118],Ad[120])Ad[120]="addButton"Ad[120]=Ad[119][Ad[120]]Ad[8]=l(Ad[8])Ad[120]=Ad[120](Ad[119],Ad[121],Ad[122])Ad[121]="Open Awakenings"Ad[58]=nil Ad[106]=l(Ad[106])Ad[120]="addButton"Ad[120]=Ad[119][Ad[120]]Ad[86]=l(Ad[86])Ad[112]=l(Ad[112])Ad[65]=nil Ad[122]=w(6307167,{o})Ad[120]=Ad[120](Ad[119],Ad[121],Ad[122])Ad[121]="Misc"Ad[20]=nil Ad[125]=A(12325542,{q})Ad[120]=Ad[14][Ad[121]]Ad[121]="addSection"Bd=l(Bd)Ad[110]=nil t=nil Ad[121]=Ad[120][Ad[121]]Ad[88]=nil Ad[121]=Ad[121](Ad[120])Ad[122]="Players Clients"Ad[117]=nil Ad[120]="addMenu"Ad[120]=Ad[121][Ad[120]]Ad[120]=Ad[120](Ad[121],Ad[122])Ad[122]="addToggle"Ad[122]=Ad[120][Ad[122]]Ad[122]=Ad[122](Ad[120],Ad[123],Ad[124],Ad[125])Ad[125]=500 Ad[124]=50 Ad[122]="addSlider"Ad[122]=Ad[120][Ad[122]]Ad[123]="Walk Speed"Ad[122]=Ad[122](Ad[120],Ad[123],Ad[124],Ad[125],Ad[126],Ad[127])Ad[122]="addSlider"Ad[124]=50 Ad[122]=Ad[120][Ad[122]]Ad[123]="Jump Power"Ad[125]=500 Ad[44]=l(Ad[44])Ad[127]=w(3065362,{q
                                                o})Ad[126]=50 Ad[122]=Ad[122](Ad[120],Ad[123],Ad[124],Ad[125],Ad[126],Ad[127])Ad[125]=false Ad[12]=l(Ad[12])Ad[123]=S()sd=l(sd)Ad[122]=false n[Ad[123]]=Ad[122]Ad[124]="XrayView"Ad[53]=nil Ad[127]=10 Ad[126]=W(9532708,{Ad[123]})Ad[122]=W(16368643,{d})U[Ad[124]]=Ad[122]Ad[107]=nil Ad[81]=nil Ad[124]="X-ray Vision"Ad[122]="addToggle"Ad[122]=Ad[120][Ad[122]]Ad[122]=Ad[122](Ad[120],Ad[124],Ad[125],Ad[126])Ad[126]=w(14374414,{q
                                                G})Ad[125]=false Ad[122]="addToggle"Ad[124]="White Screen"Ad[122]=Ad[120][Ad[122]]Ad[122]=Ad[122](Ad[120],Ad[124],Ad[125],Ad[126])Ad[14]=nil Ad[41]=nil Ad[122]="addToggle"h=l(h)Ad[126]=W(4173686,{q})Ad[125]=false Ad[124]="Black Screen"Ad[109]=nil Sd=l(Sd)Ad[122]=Ad[120][Ad[122]]Ad[121]=nil Ad[122]=Ad[122](Ad[120],Ad[124],Ad[125],Ad[126])Ad[124]="spawn"Ad[125]=A(6464466,{q,o})x=nil Ad[119]=nil Ad[122]=U[Ad[124]]Ad[124]=Ad[122](Ad[125])Ad[116]=nil Ad[122]="addButton"Ad[104]=nil Ad[125]=Y(10806776,{o})Ad[124]="Click Teleport Tool"Ad[122]=Ad[120][Ad[122]]Ad[122]=Ad[122](Ad[120],Ad[124],Ad[125])Ad[40]=nil Ad[124]="Redeem all Codes"Ad[125]=b(15589353,{m})Ad[96]=nil Ad[85]=l(Ad[85])Ad[99]=l(Ad[99])Ad[122]="addButton"Ad[122]=Ad[120][Ad[122]]Ad[114]=nil Ad[122]=Ad[122](Ad[120],Ad[124],Ad[125])K=l(K)Ad[123]=l(Ad[123])Ad[126]=Y(1150392,{q
                                                Q})Ad[122]="addToggle"z=l(z)Ad[124]="Remove Fog"Ad[122]=Ad[120][Ad[122]]Ad[125]=false Ad[60]=nil Td=l(Td)Ad[122]=Ad[122](Ad[120],Ad[124],Ad[125],Ad[126])Ad[126]="Success Cleanup, Remove unnecessary utilities..."Ad[122]="addButton"Ad[124]="Force FPS BOOST"Ad[122]=Ad[120][Ad[122]]Ad[103]=nil Ad[125]=Y(1149335,{d,Q
                                                G})Ad[9]=l(Ad[9])Ad[122]=Ad[122](Ad[120],Ad[124],Ad[125])Ad[125]=A(3973309,{})Ad[124]="Developer Console"Ad[122]="addButton"d=l(d)Ad[122]=Ad[120][Ad[122]]e=l(e)Ad[122]=Ad[122](Ad[120],Ad[124],Ad[125])y=nil Ad[93]=nil m=l(m)Ad[28]=l(Ad[28])Ad[3]=l(Ad[3])Ad[125]="Gia Huy HUB (INFO)"Ad[122]=n[M]Ad[124]=Ad[122](Ad[125],Ad[126],Ad[127])Ad[125]="task"Ad[63]=nil Ad[124]=U[Ad[125]]Ad[125]="wait"Q=l(Q)v=l(v)Ad[122]=Ad[124][Ad[125]]Ad[46]=l(Ad[46])Ad[113]=nil Ad[125]=1 Ad[126]="All Functions, Modules, Dependencies, Successfully loaded."Ad[127]=10 Ad[124]=Ad[122](Ad[125])Ad[125]="Gia Huy HUB Fully Loaded"Ad[120]=nil Ad[115]=nil Ad[122]=n[M]Ad[118]=nil Ad[62]=nil Ad[124]=Ad[122](Ad[125],Ad[126],Ad[127])Ad[73]=nil o=l(o)Ad[125]="task"Ad[124]=U[Ad[125]]G=l(G)Ad[125]="wait"Ad[122]=Ad[124][Ad[125]]Ad[42]=l(Ad[42])Ad[125]=1 Ad[124]=Ad[122](Ad[125])q=l(q)Ad[122]=n[M]M=l(M)Ad[126]="Gia Huy HUB Script is 100% Free and Keyless"Ad[125]="Gia Huy HUB (INFO)"E=l(E)Ad[127]=10 Ad[124]=Ad[122](Ad[125],Ad[126],Ad[127])
                                            end
end
                                    end
end
                            end
end
                    end
                elseif P<7719772 then
                        if P<7444331 then
                            if P<7314074 then
                                if P<7264622 then
                                    if P<7203055 then
                                        if P<7191328 then
                                            if P<7185706 then
                                                if P<7182000 then
                                                    P=U["EzeWDODDqGDeoT"]X={}
                                                else
                                                    X=n[B[3]]h="HumanoidRootPart"i=O[h]h="Position"v=i[h]o="DistanceFromCharacter"o=X[o]o=o(X,v)X=70 P=o<=X P=P and 11589552 or 15260313
                                                end
                                            elseif P<7189038 then
                                                    X={}P=U["kv6gKuzdVQLyjc"]
                                                else
                                                    P=nil X={P}P=U["oKi8zvfLSzVqsg"]
                                                end
end
                                        elseif P<7201013 then
                                                if P<7193195 then
                                                    P=U["JuHbkqdRPqMRt"]X={}
                                                else
                                                    r="task"X=U[r]r="wait"P=X[r]r=.5 X=P(r)P=X and 856184 or 1945577
                                                end
                                            else
                                                P=U["kapwwCiZoJSSU"]X={}
                                            end
end
                                    elseif P<7255108 then
                                            if P<7241509 then
                                                if P<7219846 then
                                                    X={d}P=U["dUCwMtSF8h326z"]
                                                else
                                                    O="CFrame"P=n[B[4]]H=U[O]O="new"Q=H[O]v=6346 o=6 O=-9680 H={Q(O,o,v)}X=P(I(H))P=10135561
                                                end
                                            elseif P<7243843 then
                                                    G=n[B[2]]m=P Q="Character"N=G[Q]P=N and 11851408 or 13654676 E=N
                                                else
                                                    X={}P=U["o2ILROYO7l0j"]r=nil
                                                end
end
                                        elseif P<7262577 then
                                                if P<7261640 then
                                                    E=2 d=r>=E P=U["TARcsB0pNJEsI"]X={d}
                                                else
                                                    K="table"C="string"g=U[K]K="insert"x="Price"P=h h=g[K]P=1397418 K=n[B[3]]a=U[C]C="format"L=a[C]C="<font color=\"#00BFFF\">[ * ]</font> %s - $%s"y=n[B[5]]R=v[x]t={y(R)}a={L(C,i,I(t))}i=nil g=h(K,I(a))
                                                end
                                            else
                                                P=v H=o P=3786976
                                            end
end
                                    end
                                elseif P<7289182 then
                                        if P<7273603 then
                                            if P<7270729 then
                                                if P<7266361 then
                                                    P=o and 3770965 or 8527778
                                                else
                                                    P=12159849
                                                end
                                            elseif P<7271875 then
                                                    C="90"P=743256 a=C
                                                else
                                                    E=n[B[8]]m=E P={}r=P d=1 P=15914511 E=1 N=E E=0 G=N<E E=d-N
                                                end
end
                                        elseif P<7276957 then
                                                if P<7276796 then
                                                    Ad[1]=Ad[3]P=Ad[4]P=10928748
                                                else
                                                    O="getraidislands"H=U[O]G=P O=H()Q=not O P=Q and 14983525 or 13124824 N=Q
                                                end
                                            else
                                                P=n[B[3]]X=P(r)P=8259674
                                            end
end
                                    elseif P<7300033 then
                                            if P<7298401 then
                                                if P<7294928 then
                                                    O="EquipWeapon"H=U[O]P=14328381 O=H()O="AutoHaki"H=U[O]O=H()
                                                else
                                                    O="ParticleEmitter"H="IsA"H=G[H]H=H(G,O)Q=H P=H and 2435588 or 8058406
                                                end
                                            else
                                                r=X P=r and 11474036 or 8329875
                                            end
                                        elseif P<7310412 then
                                                if P<7308341 then
                                                    d,N=E(r,d)P=d and 6164415 or 10824184
                                                else
                                                    O=P v="Enemies"o=Q[v]v=0 H=o or v P=656571 G=H
                                                end
                                            else
                                                P=1261571 O=nil o=nil
                                            end
end
                                    end
end
                            elseif P<7379989 then
                                    if P<7357744 then
                                        if P<7347395 then
                                            if P<7333533 then
                                                if P<7322911 then
                                                    X="pcall"P=U[X]d="FastAttack"r=U[d]X=P(r)X={}P=U["HAo5ByfYP23Da"]
                                                else
                                                    P=656571 o=Q G=o
                                                end
                                            elseif P<7337241 then
                                                    P=6880775
                                                else
                                                    Ad[35]="Leather + Scrap Metal"Ad[37]="Magma Ore"Ad[36]="Angel Wings"Ad[38]="Fish Tail"Ad[34]={Ad[35],Ad[36],Ad[37],Ad[38]}P=12278038 Ad[33]=Ad[34]
                                                end
end
                                        elseif P<7354589 then
                                                if P<7349750 then
                                                    X={}P=U["LlAKJsbp13TjH"]
                                                else
                                                    d=k[2]r=k[1]X="tick"P=U[X]X=P()E=X N="LastUpdate"m=r[N]X=E-m N="MinInterval"m=r[N]P=X>=m P=P and 12778038 or 4655315
                                                end
                                            else
                                                P=N P=m and 15219491 or 409980
                                            end
end
                                    elseif P<7371462 then
                                            if P<7370681 then
                                                if P<7365467 then
                                                    N="Character"m=n[B[1]]E=m[N]m="Humanoid"d=E[m]E="Sit"X=d[E]d=true P=X==d P=P and 10684398 or 8827042
                                                else
                                                    X="fireclickdetector"P=U[X]G=n[B[2]]Q="CircleIsland"N=G[Q]G="RaidSummon"m=N[G]N="Button"E=m[N]m="Main"d=E[m]E="ClickDetector"r=d[E]X=P(r)P=5388967
                                                end
                                            else
                                                P=13417960
                                            end
                                        elseif P<7378921 then
                                                if P<7376883 then
                                                    E,N=r(d,E)P=E and 6495494 or 1645764
                                                else
                                                    h=v P=5680625
                                                end
                                            else
                                                P=o Q=O P=2022577
                                            end
end
                                    end
                                elseif P<7405768 then
                                        if P<7395726 then
                                            if P<7385107 then
                                                if P<7382480 then
                                                    X={}P=U["rY9Fnxrj5mxv"]
                                                else
                                                    r=k[1]X="AutoStats"P=n[B[1]]d=r P[X]=d d="AutoStats"X=n[B[1]]P=X[d]P=P and 15298126 or 9221647
                                                end
                                            elseif P<7388785 then
                                                    P=a and 7954346 or 13034210 y=a
                                                else
                                                    P=o P=X and 3519115 or 8911553
                                                end
end
                                        elseif P<7405098 then
                                                if P<7399781 then
                                                    E=n[B[5]]d=E==r X=d P=11142296
                                                else
                                                    cd="file"nd="io"Xd="os"Bd="debug"sd={Xd,nd,cd
                                                    Bd}nd="ipairs"P=7752608 Xd=U[nd]rd={Xd(sd)}nd=rd[1]Bd=rd[3]cd=rd[2]
                                                end
                                            else
                                                P=12945929
                                            end
end
                                    elseif P<7436474 then
                                            if P<7434726 then
                                                if P<7419265 then
                                                    r="Awakened Ice Admiral"P=n[B[1]]X=P(r)P=X and 13045932 or 6184518
                                                else
                                                    V=n[D]P=16086459 Ud=85211729168715 jd=V==Ud M=jd
                                                end
                                            else
                                                X=n[B[2]]r="FantasySky"P=X[r]X="Destroy"X=P[X]X=X(P)P=8040304
                                            end
                                        elseif P<7440236 then
                                                if P<7437273 then
                                                    X="Fishman"P=r==X P=P and 14500026 or 10638525
                                                else
                                                    P=16334747
                                                end
                                            else
                                                P=U["lQw8da12V9JlTZ"]X={}r=nil
                                            end
end
                                    end
end
                            end
                        elseif P<7599170 then
                                if P<7514273 then
                                    if P<7476089 then
                                        if P<7459442 then
                                            if P<7451356 then
                                                if P<7445268 then
                                                    X="AutoChest"r="StopChest"P=U[X]X=P()X=n[B[1]]P=X[r]P=P and 8967453 or 7558633
                                                else
                                                    P=n[B[1]]X=P()P=U["EDisob5852M9Wx"]X={}
                                                end
                                            elseif P<7458604 then
                                                    P=4413815
                                                else
                                                    X="FireInvoke"P=U[X]r="BlackbeardReward"E="2"d="Microchip"X=P(r,d,E)P=11100383
                                                end
end
                                        elseif P<7472808 then
                                                if P<7471550 then
                                                    X=n[B[1]]r="BuyLegendSword"P=X[r]P=P and 5539159 or 528491
                                                else
                                                    H=nil i=nil P=431418
                                                end
                                            else
                                                Q=N v="Model"o="IsA"o=H[o]o=o(H,v)O=o P=o and 6639340 or 3426491
                                            end
end
                                    elseif P<7495107 then
                                            if P<7489247 then
                                                if P<7479763 then
                                                    P=O Q=H P=383661
                                                else
                                                    E="AutoCraftBait"d=n[B[1]]X=d[E]P=X and 13018115 or 6776142
                                                end
                                            else
                                                P=d P=r and 8487163 or 13766028
                                            end
                                        elseif P<7501266 then
                                                if P<7495895 then
                                                    H="Character"E="pairs"P=14069356 d=U[E]Q=n[B[1]]G=Q[H]H="GetChildren"H=G[H]Q={H(G)}G={d(I(Q))}N=G[3]E=G[1]m=G[2]
                                                else
                                                    G="Enemies"P={}r=P X="ipairs"P=U[X]N=n[B[3]]m=N[G]G="GetChildren"G=m[G]N={G(m)}m={P(I(N))}X=m[1]E=m[3]P=13991489 d=m[2]m=X
                                                end
                                            else
                                                r="Order"P=n[B[4]]X=P(r)P=X and 16719372 or 13571220
                                            end
end
                                    end
                                elseif P<7559874 then
                                        if P<7531622 then
                                            if P<7515673 then
                                                if P<7514987 then
                                                    P=a g=L P=11349172
                                                else
                                                    d=nil P=U["myjGr8jog0CXiS"]r=l(r)X={}
                                                end
                                            elseif P<7525913 then
                                                    P=U["LwCqcz72ozwo"]X={}
                                                else
                                                    P=n[B[3]]N="CFrame"m=U[N]N="new"Q=-2964 E=m[N]G=315 N=-5119 m={E(N,G,Q)}X=P(I(m))P=6933868
                                                end
end
                                        elseif P<7556194 then
                                                if P<7546525 then
                                                    P=n[B[1]]X="WaitForChild"d=true X=P[X]r="PlayerGui"X=X(P,r)P="SetAttribute"r="FishIndexVisible"P=X[P]P=P(X,r,d)P=U["H2eaQ8MbVYyJ"]X={}
                                                else
                                                    J=n[d]P=J and 13504540 or 15762493 Pd=J
                                                end
                                            else
                                                X={}P=U["aLycRZoxRKvq4a"]
                                            end
end
                                    elseif P<7592904 then
                                            if P<7585316 then
                                                if P<7576470 then
                                                    X={X}P=U["wFcod0CMY6R70u"]
                                                else
                                                    r="string"X=U[r]d="FireInvoke"r="find"P=X[r]E="CakePrinceSpawner"r=U[d]d=r(E)r="open the portal now"X=P(d,r)P=X and 16275508 or 3648977
                                                end
                                            else
                                                H="Text"P=11220613 Q=n[r]G=Q[H]X=G
                                            end
                                        elseif P<7596884 then
                                                if P<7596066 then
                                                    Q="QuestType"E=P G=n[B[1]]N=G[Q]G=1 m=N==G P=m and 9561934 or 4004188 d=m
                                                else
                                                    Q,H=E(G,Q)P=Q and 6291087 or 4170554
                                                end
                                            else
                                                P=5205525 G=r
                                            end
end
                                    end
end
                            elseif P<7674125 then
                                    if P<7623290 then
                                        if P<7611117 then
                                            if P<7600956 then
                                                if P<7600411 then
                                                    h=nil P=3724016 i=nil
                                                else
                                                    G="Enemies"P={}r=P X="ipairs"P=U[X]N=n[B[2]]m=N[G]G="GetChildren"G=m[G]N={G(m)}m={P(I(N))}P=9991233 X=m[1]d=m[2]E=m[3]m=X
                                                end
                                            elseif P<7601585 then
                                                    P=162410 i=6 Q=n[B[4]]v="CFrame"h=6230 o=U[v]v="new"O=o[v]v=-9576 o={O(v,i,h)}H=Q(I(o))
                                                else
                                                    E="warn"m="[Teleport] Failed to decode Job ID"X=U[E]P=U["1ZODpOuRKdEy"]E=X(m)X={}
                                                end
end
                                        elseif P<7614540 then
                                                if P<7612256 then
                                                    m="Backpack"E=n[B[1]]d=E[m]m=true E="Awakening"X=d[E]d="RemoteFunction"E=1 P=X[d]d={[E]=m}X="InvokeServer"X=P[X]X=X(P,d)P=11690086
                                                else
                                                    P=U["VAR4j24V7XFKlQ"]X={}
                                                end
                                            else
                                                m="Order"d=n[B[1]]E=d(m)r=not E X=r P=r and 11253985 or 11615912
                                            end
end
                                    elseif P<7662720 then
                                            if P<7653780 then
                                                if P<7630163 then
                                                    X="AutoTaskEliteHunter"P=U[X]X=P()P=U["Y1pSAkXEtnKmch"]X={}
                                                else
                                                    X=n[B[1]]m="Vector3"G=33453 E=U[m]m="new"d=E[m]m=921 N=125 r="DistanceFromCharacter"r=X[r]E={d(m,N,G)}r=r(X,I(E))X=10 P=r<X P=P and 9453762 or 6192665
                                                end
                                            else
                                                X="pcall"P=U[X]r=Y(15108104,{B[1],B[2]})X=P(r)P=5505959
                                            end
                                        elseif P<7671142 then
                                                if P<7665685 then
                                                    X="WaitForChild"r="RF/DragonHunter"E="RequestQuest"P=n[B[1]]d="Context"X=P[X]X=X(P,r)r={[d]=E}P="InvokeServer"P=X[P]P=P(X,r)X={}P=U["SivTgXLqMzREiG"]
                                                else
                                                    K=n[B[3]]g=K[G]P=7264545 K="Level"h=g[K]g="Value"i=h[g]o=i
                                                end
                                            else
                                                E="GetChildren"X="next"d="Boats"P=U[X]r=n[B[1]]X=r[d]E=X[E]E={E(X)}d=E[2]r=E[1]E=P P=12704981
                                            end
end
                                    end
                                elseif P<7701327 then
                                        if P<7696352 then
                                            if P<7687806 then
                                                if P<7683366 then
                                                    Bd=Sd P=dd P=1594278
                                                else
                                                    r="SetTeam"X="FireInvoke"d="Pirates"P=U[X]X=P(r,d)P=U["mwuWXVS77wJ1"]X={}
                                                end
                                            elseif P<7694017 then
                                                    d="task"X=U[d]d="wait"P=X[d]d=.5 X=P(d)P=5905075
                                                else
                                                    O="pairs"g="HighValueFruitPrices"X=U[O]P=8609697 h=n[B[2]]i=h[g]h={X(i)}v=h[3]o=h[2]O=h[1]
                                                end
end
                                        elseif P<7700136 then
                                                if P<7696870 then
                                                    i="ipairs"o=H L="GetChildren"L=v[L]P=U[i]K={L(v)}L={P(I(K))}h=L[2]i=L[1]P=5676661 g=L[3]
                                                else
                                                    P=Q and 7971266 or 9810738
                                                end
                                            else
                                                P=13843519
                                            end
end
                                    elseif P<7714231 then
                                            if P<7711365 then
                                                if P<7707425 then
                                                    P=3140143
                                                else
                                                    N="CFrame"X="StartQuest"r="HauntedQuest2"P=U[X]m=U[N]G=172 Q=6078 N="new"d=1 E=m[N]N=-9517 m={E(N,G,Q)}X={P(r,d,I(m))}X={I(X)}P=U["hWLu4mgaogYUc"]
                                                end
                                            else
                                                G="CircleIsland"N=n[B[5]]m=N[G]N="RaidSummon"E=m[N]m="Button"d=E[m]E="Main"r=d[E]d="ClickDetector"X=r[d]P=not X P=P and 415040 or 5467028
                                            end
                                        elseif P<7717652 then
                                                if P<7716123 then
                                                    Q=-73 G=125 N="Vector3"X=n[B[2]]m=U[N]N="new"E=m[N]N=-1992 m={E(N,G,Q)}d=X(I(m))P=5136736
                                                else
                                                    X="AutoCollectBones"P=U[X]X=P()P=8424033
                                                end
                                            else
                                                P=1771099
                                            end
end
                                    end
end
                            end
end
                    elseif P<7986110 then
                            if P<7873108 then
                                if P<7790753 then
                                    if P<7758879 then
                                        if P<7752690 then
                                            if P<7724421 then
                                                if P<7722142 then
                                                    N="string"X=U[N]N="format"P=X[N]N="%dh %dm %ds"X={P(N,d,E,m)}X={I(X)}P=U["LzcoRdOI8qAMs"]
                                                else
                                                    r="WaitForChild"X=n[B[1]]r=X[r]d="PlayerGui"r=r(X,d)X="WaitForChild"X=r[X]d="TitlesMenu"X=X(r,d)r="Open"P=X[r]X="Fire"X=P[X]X=X(P)X={}P=U["ql5uLUaL56HQ7u"]
                                                end
                                            elseif P<7743558 then
                                                    Ad[107]=2056 Ad[122]=718 Ad[100]="Pirate Starter"Ad[104]=17 Ad[103]="CFrame"Ad[134]=54 Ad[106]=25 Ad[105]=1434 Ad[102]=U[Ad[103]]Ad[103]="new"Ad[119]=4359 Ad[111]=146 Ad[101]=Ad[102][Ad[103]]Ad[103]=889 Ad[102]=Ad[101](Ad[103],Ad[104],Ad[105])Ad[101]="Marine Starter"Ad[131]=8349 Ad[105]="CFrame"Ad[108]=15 Ad[104]=U[Ad[105]]Ad[124]=873 Ad[105]="new"Ad[103]=Ad[104][Ad[105]]Ad[105]=-2728 Ad[117]=-1344 Ad[104]=Ad[103](Ad[105],Ad[106],Ad[107])Ad[103]="Middle Town"Ad[107]="CFrame"Ad[106]=U[Ad[107]]Ad[107]="new"Ad[105]=Ad[106][Ad[107]]Ad[107]=-688 Ad[112]=45 Ad[110]=37 Ad[109]=1585 Ad[115]=4373 Ad[132]=5 Ad[106]=Ad[105](Ad[107],Ad[108],Ad[109])Ad[133]=1820 Ad[105]="Jungle"Ad[109]="CFrame"Ad[114]=21 Ad[108]=U[Ad[109]]Ad[109]="new"Ad[136]=7 Ad[116]=87 Ad[107]=Ad[108][Ad[109]]Ad[109]=-1614 Ad[108]=Ad[107](Ad[109],Ad[110],Ad[111])Ad[113]=3837 Ad[111]="CFrame"Ad[107]="Pirate Village"Ad[110]=U[Ad[111]]Ad[111]="new"Ad[109]=Ad[110][Ad[111]]Ad[111]=-1173 Ad[110]=Ad[109](Ad[111],Ad[112],Ad[113])Ad[113]="CFrame"Ad[112]=U[Ad[113]]Ad[113]="new"Ad[126]=5547 Ad[125]=-1754 Ad[109]="Desert"Ad[111]=Ad[112][Ad[113]]Ad[127]=-380 Ad[113]=944 Ad[112]=Ad[111](Ad[113],Ad[114],Ad[115])Ad[115]="CFrame"Ad[114]=U[Ad[115]]Ad[111]="Frozen Village"Ad[123]=-2551 Ad[115]="new"Ad[120]=7 Ad[113]=Ad[114][Ad[115]]Ad[115]=1298 Ad[114]=Ad[113](Ad[115],Ad[116],Ad[117])Ad[113]="Marine Fortress"Ad[117]="CFrame"Ad[116]=U[Ad[117]]Ad[118]=21 Ad[117]="new"Ad[115]=Ad[116][Ad[117]]Ad[117]=-4810 Ad[116]=Ad[115](Ad[117],Ad[118],Ad[119])Ad[115]="Colosseum"Ad[119]="CFrame"Ad[118]=U[Ad[119]]Ad[128]=6 Ad[119]="new"Ad[117]=Ad[118][Ad[119]]Ad[121]=-3014 Ad[119]=-1535 Ad[118]=Ad[117](Ad[119],Ad[120],Ad[121])Ad[117]="Lower Skylands"Ad[121]="CFrame"Ad[120]=U[Ad[121]]Ad[121]="new"Ad[119]=Ad[120][Ad[121]]Ad[129]=736 P=609577 Ad[121]=-4814 Ad[120]=Ad[119](Ad[121],Ad[122],Ad[123])Ad[123]="CFrame"Ad[130]=9 Ad[122]=U[Ad[123]]Ad[119]="Skylands"Ad[123]="new"Ad[121]=Ad[122][Ad[123]]Ad[123]=-4652 Ad[122]=Ad[121](Ad[123],Ad[124],Ad[125])Ad[125]="CFrame"Ad[124]=U[Ad[125]]Ad[121]="Upper Skylands"Ad[125]="new"Ad[123]=Ad[124][Ad[125]]Ad[125]=-7895 Ad[124]=Ad[123](Ad[125],Ad[126],Ad[127])Ad[123]="Prison"Ad[135]=4108 Ad[127]="CFrame"Ad[126]=U[Ad[127]]Ad[127]="new"Ad[125]=Ad[126][Ad[127]]Ad[127]=4870 Ad[126]=Ad[125](Ad[127],Ad[128],Ad[129])Ad[129]="CFrame"Ad[128]=U[Ad[129]]Ad[125]="Magma Village"Ad[129]="new"Ad[127]=Ad[128][Ad[129]]Ad[129]=-5290 Ad[128]=Ad[127](Ad[129],Ad[130],Ad[131])Ad[131]="CFrame"Ad[127]="Underwater City"Ad[130]=U[Ad[131]]Ad[131]="new"Ad[129]=Ad[130][Ad[131]]Ad[131]=61164 Ad[130]=Ad[129](Ad[131],Ad[132],Ad[133])Ad[133]="CFrame"Ad[129]="Fountain City"Ad[132]=U[Ad[133]]Ad[137]=5355 Ad[133]="new"Ad[131]=Ad[132][Ad[133]]Ad[133]=5287 Ad[132]=Ad[131](Ad[133],Ad[134],Ad[135])Ad[135]="CFrame"Ad[131]="Jean-Luc Island"Ad[134]=U[Ad[135]]Ad[135]="new"Ad[133]=Ad[134][Ad[135]]Ad[135]=-2850 Ad[134]=Ad[133](Ad[135],Ad[136],Ad[137])Ad[98]={[Ad[100]]=Ad[102]
                                                    [Ad[101]]=Ad[104],[Ad[103]]=Ad[106]
                                                    [Ad[105]]=Ad[108]
                                                    [Ad[107]]=Ad[110],[Ad[109]]=Ad[112]
                                                    [Ad[111]]=Ad[114],[Ad[113]]=Ad[116]
                                                    [Ad[115]]=Ad[118]
                                                    [Ad[117]]=Ad[120]
                                                    [Ad[119]]=Ad[122],[Ad[121]]=Ad[124]
                                                    [Ad[123]]=Ad[126]
                                                    [Ad[125]]=Ad[128]
                                                    [Ad[127]]=Ad[130]
                                                    [Ad[129]]=Ad[132],[Ad[131]]=Ad[134]}n[Ad[99]]=Ad[98]
                                                else
                                                    Bd,rd=nd(cd,Bd)P=Bd and 9101381 or 6019685
                                                end
end
                                        elseif P<7758426 then
                                                if P<7754393 then
                                                    h="Parent"i=G[h]h="Parent"v=i[h]P=3922235 h="Humanoid"i="FindFirstChild"i=v[i]i=i(v,h)o=not i H=o
                                                else
                                                    P=n[B[1]]E="CFrame"m=1209 d=U[E]E="new"r=d[E]E=5864 N=808 d={r(E,m,N)}X=P(I(d))X={}P=U["Q4QMLIzKtldvi"]
                                                end
                                            else
                                                o="Humanoid"P="FindFirstChild"P=O[P]P=P(O,o)o=P v="PrimaryPart"P=O[v]i=o v=P P=o and 5857010 or 1455185
                                            end
end
                                    elseif P<7771627 then
                                            if P<7762492 then
                                                if P<7760183 then
                                                    R="task"q="Haunted Castle"t=U[R]R="wait"y=t[R]t=y()t="fireclickdetector"y=U[t]e=n[B[6]]u="Haunted Castle"z=e[q]e="Tablet"M=z[e]x=M[O]M="ClickDetector"R=x[M]t=y(R)R="string"t=U[R]x="tostring"R="find"y=t[R]R=U[x]D=n[B[6]]J=D[u]D="Tablet"Pd=J[D]q=Pd[O]Pd="Line"e=q[Pd]q="Rotation"z=e[q]e="Z"M=z[e]x=R(M)t=y(x,a)P=t and 13209980 or 7760112
                                                else
                                                    P=n[B[3]]G=N P[m]=G P=11811562
                                                end
                                            elseif P<7767742 then
                                                    m=true P=n[B[9]]X={P(d,m)}P=U["qORWMNfw1TbvIO"]X={I(X)}
                                                else
                                                    P=h and 8086707 or 2994026
                                                end
end
                                        elseif P<7786849 then
                                                if P<7777871 then
                                                    P=1087935
                                                else
                                                    X=n[B[1]]r="Character"P=X[r]r=P P=r and 7048697 or 16011571 X=r
                                                end
                                            else
                                                E="Character"d=n[B[1]]X=d[E]Q="Dressrosa"d="HumanoidRootPart"P=X[d]X="CFrame"G=n[B[8]]N=G[Q]G="BartiloPlates"m=N[G]G="platesbartilo"N=U[G]G=N()E=m[G]m="CFrame"d=E[m]P[X]=d G="Dressrosa"d="task"X=U[d]d="wait"P=X[d]X=P()X="firetouchinterest"P=U[X]N=n[B[8]]m=N[G]N="BartiloPlates"E=m[N]G="Character"N="platesbartilo"m=U[N]N=m()d=E[N]N=n[B[1]]m=N[G]N="HumanoidRootPart"E=m[N]m=0 X=P(d,E,m)X="firetouchinterest"P=U[X]N=n[B[8]]G="Dressrosa"m=N[G]N="BartiloPlates"E=m[N]N="platesbartilo"m=U[N]G="Character"N=m()d=E[N]N=n[B[1]]m=N[G]N="HumanoidRootPart"E=m[N]m=1 X=P(d,E,m)P=13072617
                                            end
end
                                    end
                                elseif P<7825791 then
                                        if P<7797609 then
                                            if P<7794118 then
                                                if P<7791529 then
                                                    E=0 d=#r P=d==E P=P and 8732022 or 13484662
                                                else
                                                    Ad[85]="table"Ad[81]=nil Ad[84]=U[Ad[85]]P=1697657 Ad[85]="insert"Ad[83]=Ad[84][Ad[85]]Ad[86]="Name"Ad[85]=Ad[82][Ad[86]]Ad[84]=Ad[83](Ad[76],Ad[85])Ad[82]=nil
                                                end
                                            elseif P<7795820 then
                                                    X={}P=U["qIUkm47SbU7TN5"]
                                                else
                                                    X={}P=U["REHSNsafZhEGK"]
                                                end
end
                                        elseif P<7815024 then
                                                if P<7809044 then
                                                    P=n[B[6]]P=P and 6330984 or 4050327
                                                else
                                                    H=nil P=7817485 Q=nil
                                                end
                                            else
                                                N,H=G(m,N)P=N and 15358062 or 16356612
                                            end
end
                                    elseif P<7860969 then
                                            if P<7854287 then
                                                if P<7852375 then
                                                    P=v P={[Q]=d
                                                    [H]=G,[O]=o}o="Description"H=W(12277390,{N,B[1]
                                                    E
                                                    B[2]})Q=P X={}N=l(N)E=l(E)O=Q[o]P="addToggle"P=r[P]m=nil P=P(r,d,G,H,O)r=nil d=nil P=U["01GorZDzomrP"]Q=nil G=nil
                                                else
                                                    m=P Q="Character"G=n[B[1]]N=G[Q]Q="HumanoidRootPart"G="FindFirstChild"G=N[G]G=G(N,Q)E=G P=G and 5246948 or 7149075
                                                end
                                            else
                                                r=k[1]d=n[B[1]]X=d P=d and 12566808 or 5846825
                                            end
                                        elseif P<7868072 then
                                                if P<7861303 then
                                                    G=1 P=11894563 N=E[G]m=N
                                                else
                                                    r="SeaTerrorCC"X=n[B[2]]P=X[r]P=P and 6988150 or 8040304
                                                end
                                            else
                                                N=n[B[7]]G="Character"m=N[G]P=15309279 N="FindFirstChild"N=m[N]G="HumanoidRootPart"N=N(m,G)d=N
                                            end
end
                                    end
end
                            elseif P<7936958 then
                                    if P<7902976 then
                                        if P<7891631 then
                                            if P<7881387 then
                                                if P<7879511 then
                                                    P=15874372 x=1 R=K+x K=R
                                                else
                                                    H=n[B[3]]y="KenMaxDodges"O="CommE"g="GetAttribute"v="Dodges low! ("P=H[O]H="FireServer"O="Ken"H=P[H]K="KenDodgesLeft"C="GetAttribute"o=true H=H(P,O,o)O="Observation"P=n[B[11]]h=n[B[2]]g=h[g]g=g(h,K)a=n[B[2]]C=a[C]C=C(a,y)a=")"K="/"L=C..a h=K..L i=g..h o=v..i v=10 H=P(O,o,v)P=10801514
                                                end
                                            elseif P<7887545 then
                                                    X={}P=U["QJFaxPnSF7vh6"]
                                                else
                                                    r="Auto_Random_Surprise"X=n[B[1]]P=X[r]P=P and 4370667 or 10667976
                                                end
end
                                        elseif P<7902573 then
                                                if P<7895421 then
                                                    P=13745641
                                                else
                                                    X=n[B[1]]r="Character"P=X[r]P=P and 15347329 or 2335783
                                                end
                                            else
                                                P=O P=13373242 G=H
                                            end
end
                                    elseif P<7923323 then
                                            if P<7922163 then
                                                if P<7915417 then
                                                    X="fireclickdetector"P=U[X]N=n[B[1]]G="Waterfall"m=N[G]N="SealedKatana"E=m[N]m="Hitbox"d=E[m]E="ClickDetector"r=d[E]X=P(r)P=4256606
                                                else
                                                    t=C P=3280660
                                                end
                                            else
                                                P=n[B[4]]P=P and 11938345 or 15418082
                                            end
                                        elseif P<7931678 then
                                                if P<7930401 then
                                                    r=n[B[2]]E="IslandRaiding"P=14167670 d="GetAttribute"d=r[d]d=d(r,E)X=d
                                                else
                                                    P=G P=N and 14008211 or 480972
                                                end
                                            else
                                                r=k[1]P=false n[B[1]]=P d=k[2]o="typeof"N=P X=n[B[2]]O=U[o]Q=P o=O(r)O="Vector3"H=o==O P=H and 11827911 or 8877509 G=H
                                            end
end
                                    end
                                elseif P<7964928 then
                                        if P<7949897 then
                                            if P<7938455 then
                                                if P<7938037 then
                                                    m=true P=2957083 X=n[B[5]]E=X(d,m)
                                                else
                                                    P=false X={P}P=U["9QV98rCE3YsIu"]
                                                end
                                            elseif P<7941215 then
                                                    r="GetDistance"G=-120 X=U[r]m="Vector3"N=14888 E=U[m]m="new"d=E[m]m=28982 E={d(m,N,G)}r=X(I(E))X=2000 P=r>X P=P and 2271728 or 900578
                                                else
                                                    r="error"E=0 P=U[r]d=n[B[7]]r=P(d,E)P=7272881
                                                end
end
                                        elseif P<7954087 then
                                                if P<7950203 then
                                                    Q=not G P=Q and 733403 or 1678092
                                                else
                                                    X={}P=U["WsNUDdcTsPgu"]
                                                end
                                            else
                                                z="Health"M=a[z]R=P z=0 x=M>z t=x P=x and 7917463 or 3280660
                                            end
end
                                    elseif P<7974155 then
                                            if P<7971748 then
                                                if P<7969609 then
                                                    P=O and 9396474 or 15994186
                                                else
                                                    H="table"Q=U[H]H="insert"P=Q[H]Q=P(r,G)Q="BringEnemies"P=U[Q]Q=P(G)P=9810738
                                                end
                                            else
                                                X="tick"P=U[X]X=P()o="Pos"P=n[B[1]]O="CFrame"H=N[O]G=X O=U[o]Q=H*O H=true X=P(Q,H)X="EquipWeapon"P=U[X]X=P()X="AutoHaki"P=U[X]X=P()P=d and 13686899 or 11340492 X=d
                                            end
                                        elseif P<7981503 then
                                                if P<7980782 then
                                                    P=U["HpVBHyi5HXNh"]X={}
                                                else
                                                    X="pcall"r=b(13147276,{B[1]})P=U[X]X=P(r)P=12690227
                                                end
                                            else
                                                P=4414217
                                            end
end
                                    end
end
                            end
                        elseif P<8131259 then
                                if P<8052755 then
                                    if P<8033056 then
                                        if P<8008095 then
                                            if P<7992619 then
                                                if P<7987002 then
                                                    P=4146147
                                                else
                                                    P=E P=X and 5202662 or 6556931
                                                end
                                            elseif P<8002057 then
                                                    X={}d=nil r=nil P=U["fjkDOogi5kqw"]
                                                else
                                                    P=i X=v P=1064362
                                                end
end
                                        elseif P<8026755 then
                                                if P<8015720 then
                                                    P="Enabled"Q=false G[P]=Q P=9513628
                                                else
                                                    P=16057802 O=nil
                                                end
                                            else
                                                P=U["8SYTinMC6Ll1c"]X={}
                                            end
end
                                    elseif P<8039058 then
                                            if P<8037653 then
                                                if P<8036381 then
                                                    r=k[1]d="typeof"X=U[d]d=X(r)X="CFrame"P=d==X P=P and 2883406 or 11575655
                                                else
                                                    Ad[35]=n[jd]P=Ad[35]and 606061 or 14897154
                                                end
                                            else
                                                P=U["cJBHRouFHOdz"]X={}
                                            end
                                        elseif P<8050060 then
                                                if P<8043374 then
                                                    P=1478511
                                                else
                                                    r=k[1]d=r P=n[B[1]]X="BuyGear"P[X]=d d="task"X=U[d]d="spawn"r=nil P=X[d]d=W(2735527,{B[1]})X=P(d)P=U["7b0sKg9j51ZXTM"]X={}
                                                end
                                            else
                                                r="DevilFruitESP"X=n[B[1]]P=X[r]P=P and 16498658 or 8713651
                                            end
end
                                    end
                                elseif P<8094308 then
                                        if P<8074559 then
                                            if P<8068957 then
                                                if P<8066630 then
                                                    O="Trail"P=2435588 H="IsA"H=G[H]H=H(G,O)Q=H
                                                else
                                                    P=n[B[1]]E="game"d=U[E]X="Teleport"X=P[X]E="PlaceId"r=d[E]d=n[B[2]]X=X(P,r,d)X={}P=U["TF7dH8KiFK8Aef"]
                                                end
                                            elseif P<8070065 then
                                                    a="Vector3"L=U[a]a="new"g="Size"K=L[a]y=70 a=70 C=70 L=K(a,C,y)h[g]=L K=1 g="Transparency"h[g]=K g="CanCollide"K=false h[g]=K K=true g="Massless"L="Character"h[g]=K K=n[B[1]]g=K[L]K="FindFirstChildWhichIsA"K=g[K]L="Tool"K=K(g,L)P=K and 11333884 or 9922011
                                                else
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()X="FireInvoke"P=U[X]d="Buy"r="UpgradeRace"X=P(r,d)P=9567824
                                                end
end
                                        elseif P<8081551 then
                                                if P<8078057 then
                                                    X={}P=U["S7Gqk8mBEv6M"]
                                                else
                                                    P=X and 86675 or 4743690
                                                end
                                            else
                                                X={i}P=U["ZyW4gWsF2obhgz"]
                                            end
end
                                    elseif P<8114969 then
                                            if P<8112674 then
                                                if P<8095948 then
                                                    P=U["XLwptx9xhRjq"]X={}
                                                else
                                                    P="WaitForChild"r=X X="HumanoidRootPart"P=r[P]P=P(r,X)X="HumanoidRootPart"U[X]=P G="SelectedRod"d=n[B[3]]N=n[B[1]]m=N[G]E=d(m)X=not E P=X and 2123511 or 7487595
                                                end
                                            else
                                                X={}P=U["B3C592Jb6cFLea"]
                                            end
                                        elseif P<8130096 then
                                                if P<8126894 then
                                                    E="GetChildren"X="next"P=U[X]X=n[B[1]]E=X[E]E={E(X)}r=E[1]d=E[2]E=P P=10467796
                                                else
                                                    P=U["Eeya0Adu249c"]X={}
                                                end
                                            else
                                                P=U["aslcVWUT55sdVa"]X={}
                                            end
end
                                    end
end
                            elseif P<8188572 then
                                    if P<8161343 then
                                        if P<8157252 then
                                            if P<8148590 then
                                                if P<8135827 then
                                                    Sd="pairs"cd=P rd=U[Sd]Sd=n[o]Bd=rd~=Sd nd=Bd P=Bd and 5369178 or 12903673
                                                else
                                                    X="next"P=U[X]X=n[B[2]]E=X d=P P=11293182 r=nil
                                                end
                                            elseif P<8154377 then
                                                    x=l(x)q=nil t=l(t)M=l(M)P=3558371 R=l(R)z=l(z)e=l(e)
                                                else
                                                    X="pcall"r=A(16754905,{B[2]
                                                    B[3]
                                                    B[1],B[4]})P=U[X]X=P(r)X={}P=U["tSGBWFHuwoNe"]
                                                end
end
                                        elseif P<8159638 then
                                                if P<8158952 then
                                                    P=2015188
                                                else
                                                    X={}P=U["RcQ174TVY6Co"]
                                                end
                                            else
                                                P=U["o799q5tGyHkHv0"]X={}r=nil
                                            end
end
                                    elseif P<8181185 then
                                            if P<8178970 then
                                                if P<8165738 then
                                                    X="AutoChest"P=U[X]X=P()P=9639927
                                                else
                                                    E,G=m(d,E)P=E and 8422579 or 3568799
                                                end
                                            else
                                                C="tostring"P=U[C]t="l1"y=U[t]C=P(y)P="l2"U[P]=C P=4885646
                                            end
                                        elseif P<8188028 then
                                                if P<8187870 then
                                                    P=409980 N=nil
                                                else
                                                    r="ESPBerry"X=n[B[1]]P=X[r]P=P and 8390295 or 10442776
                                                end
                                            else
                                                X="TrainDummy"P=U[X]X=P()P=6280980
                                            end
end
                                    end
                                elseif P<8232805 then
                                        if P<8227396 then
                                            if P<8210381 then
                                                if P<8196289 then
                                                    E="Mastery"X=r[E]m="Mastery"E=d[m]P=X<E X={P}P=U["Dh2wMFX4ArNNB"]
                                                else
                                                    P=n[B[2]]X=P(d)P=6933868
                                                end
                                            elseif P<8218708 then
                                                    P=true X={P}P=U["M7Pq6dpVRkPYp"]
                                                else
                                                    P=11304369 K="Light-Light"g=E==K i=g
                                                end
end
                                        elseif P<8229399 then
                                                if P<8227799 then
                                                    r="DressrosaQuestProgress"X="FireInvoke"P=U[X]X=P(r)r=X X="KilledIceBoss"P=r[X]P=P and 3573992 or 2379258
                                                else
                                                    P=14758817
                                                end
                                            else
                                                N=2 m=1 d=n[B[1]]E=d(m,N)d=1 r=E==d X=r P=r and 9562103 or 10900677
                                            end
end
                                    elseif P<8258781 then
                                            if P<8247507 then
                                                if P<8235958 then
                                                    E="Diamond"r=n[B[1]]d=r(E)X=d P=d and 13675963 or 15707203
                                                else
                                                    P=14976836 r=nil
                                                end
                                            else
                                                P=11465521 G="Special Microchip"m=n[B[6]]N=m(G)E=not N r=E
                                            end
                                        elseif P<8277182 then
                                                if P<8265960 then
                                                    X={}P=U["Z6G0DaQ4yaCR2M"]
                                                else
                                                    P=9389117
                                                end
                                            else
                                                N="Head"m="FindFirstChild"P=12978779 E=n[r]m=E[m]m=m(E,N)X=m
                                            end
end
                                    end
end
                            end
end
                    end
end
            end
end
    elseif P<12507542 then
            if P<10408485 then
                if P<9342518 then
                    if P<8758017 then
                        if P<8539814 then
                            if P<8397307 then
                                if P<8331599 then
                                    if P<8326493 then
                                        if P<8317635 then
                                            if P<8300386 then
                                                if P<8284783 then
                                                    P=v P=1392394 X=o
                                                else
                                                    P=O and 8936699 or 16608845
                                                end
                                            elseif P<8316745 then
                                                    P=13831871
                                                else
                                                    P="FindFirstChild"O=N o="tostring"P=r[P]X=U[o]o={X(O)}P=P(r,I(o))o=P X=o P=o and 14444138 or 1064362
                                                end
end
                                        elseif P<8324658 then
                                                if P<8322736 then
                                                    v=-6.23161966e-008 r="CFrame"N=-1.36805838e-008 E=864.836731 o=.584473014 m=.811413169 X=U[r]i=.811413169 r="new"O=4.25682458e-008 Q=4.75227395e-008 G=-0.584473014 P=X[r]H=1 r=5661.89014 d=1211.31909 X=P(r,d,E,m,N,G,Q,H,O,o,v,i)r=X m="Position"P=n[B[2]]X=P(r)E=r[m]H="Character"Q=n[B[3]]G=Q[H]Q="HumanoidRootPart"N=G[Q]G="Position"m=N[G]d=E-m E="Magnitude"X=d[E]d=5 P=X<=d P=P and 1213861 or 12805106
                                                else
                                                    P=nil X={P}P=U["O7ORCudWMIQFrj"]
                                                end
                                            else
                                                X="MobsNextSpawn"d="Arctic Warrior"P=U[X]X=P(d)P=4887175
                                            end
end
                                    elseif P<8328376 then
                                            if P<8327696 then
                                                if P<8327296 then
                                                    X="Cyborg"P=r==X P=P and 16095234 or 11721434
                                                else
                                                    H=O P=o P=5624007
                                                end
                                            elseif P<8327776 then
                                                    P=n[B[3]]X={P(r)}X={I(X)}P=U["uZRT5LPapmwE"]
                                                else
                                                    P=E and 5029846 or 11354729
                                                end
end
                                        elseif P<8330563 then
                                                if P<8329849 then
                                                    X=n[B[1]]r="AutoOpenColors"P=X[r]P=P and 3545202 or 8038541
                                                else
                                                    r=nil P=U["p79wKInccDlpBC"]X={}
                                                end
                                            else
                                                Ad[127]=240 Ad[111]=331 Ad[107]=29 Ad[104]="CFrame"Ad[113]=15 Ad[121]=18 Ad[109]=13 Ad[101]="The Cafe"Ad[103]=U[Ad[104]]Ad[104]="new"Ad[108]=2771 Ad[105]=73 Ad[106]=290 Ad[112]=597 Ad[102]=Ad[103][Ad[104]]Ad[104]=-382 Ad[120]=-5277 Ad[103]=Ad[102](Ad[104],Ad[105],Ad[106])Ad[102]="First Spot"Ad[106]="CFrame"Ad[105]=U[Ad[106]]Ad[116]=-2696 Ad[106]="new"Ad[104]=Ad[105][Ad[106]]Ad[106]=-11 Ad[114]=905 Ad[115]=73 Ad[105]=Ad[104](Ad[106],Ad[107],Ad[108])Ad[104]="Dark Arena"Ad[108]="CFrame"Ad[107]=U[Ad[108]]Ad[108]="new"Ad[110]=-3259 Ad[106]=Ad[107][Ad[108]]Ad[125]=40 Ad[108]=3494 Ad[107]=Ad[106](Ad[108],Ad[109],Ad[110])Ad[110]="CFrame"Ad[124]=32869 Ad[117]=194 Ad[122]=-5096 Ad[109]=U[Ad[110]]Ad[106]="Don Swan Mansion"Ad[110]="new"Ad[108]=Ad[109][Ad[110]]Ad[110]=-317 Ad[109]=Ad[108](Ad[110],Ad[111],Ad[112])Ad[128]=-10178 Ad[112]="CFrame"Ad[111]=U[Ad[112]]Ad[108]="Don Swan Room"Ad[112]="new"Ad[110]=Ad[111][Ad[112]]Ad[112]=2285 Ad[111]=Ad[110](Ad[112],Ad[113],Ad[114])Ad[114]="CFrame"Ad[110]="Green Zone"Ad[118]=-776 Ad[130]=2863 Ad[113]=U[Ad[114]]Ad[114]="new"Ad[112]=Ad[113][Ad[114]]Ad[114]=-2258 Ad[113]=Ad[112](Ad[114],Ad[115],Ad[116])Ad[123]=125 Ad[112]="Graveyard"Ad[116]="CFrame"Ad[115]=U[Ad[116]]Ad[116]="new"Ad[114]=Ad[115][Ad[116]]Ad[116]=-5552 Ad[119]=408 Ad[126]=-6178 Ad[115]=Ad[114](Ad[116],Ad[117],Ad[118])Ad[118]="CFrame"P=609577 Ad[117]=U[Ad[118]]Ad[118]="new"Ad[116]=Ad[117][Ad[118]]Ad[114]="Snow Mountain"Ad[118]=752 Ad[117]=Ad[116](Ad[118],Ad[119],Ad[120])Ad[120]="CFrame"Ad[116]="Hot and Cold"Ad[129]=8 Ad[119]=U[Ad[120]]Ad[120]="new"Ad[118]=Ad[119][Ad[120]]Ad[120]=-5897 Ad[119]=Ad[118](Ad[120],Ad[121],Ad[122])Ad[122]="CFrame"Ad[118]="Cursed Ship"Ad[121]=U[Ad[122]]Ad[122]="new"Ad[120]=Ad[121][Ad[122]]Ad[122]=919 Ad[121]=Ad[120](Ad[122],Ad[123],Ad[124])Ad[124]="CFrame"Ad[123]=U[Ad[124]]Ad[124]="new"Ad[122]=Ad[123][Ad[124]]Ad[124]=5505 Ad[123]=Ad[122](Ad[124],Ad[125],Ad[126])Ad[122]="Forgotten Island"Ad[120]="Ice Castle"Ad[126]="CFrame"Ad[125]=U[Ad[126]]Ad[126]="new"Ad[124]=Ad[125][Ad[126]]Ad[126]=-3050 Ad[125]=Ad[124](Ad[126],Ad[127],Ad[128])Ad[124]="Remote Island"Ad[128]="CFrame"Ad[127]=U[Ad[128]]Ad[128]="new"Ad[126]=Ad[127][Ad[128]]Ad[128]=4816 Ad[127]=Ad[126](Ad[128],Ad[129],Ad[130])Ad[100]={[Ad[101]]=Ad[103]
                                                [Ad[102]]=Ad[105],[Ad[104]]=Ad[107]
                                                [Ad[106]]=Ad[109]
                                                [Ad[108]]=Ad[111]
                                                [Ad[110]]=Ad[113],[Ad[112]]=Ad[115]
                                                [Ad[114]]=Ad[117]
                                                [Ad[116]]=Ad[119]
                                                [Ad[118]]=Ad[121],[Ad[120]]=Ad[123]
                                                [Ad[122]]=Ad[125],[Ad[124]]=Ad[127]}n[Ad[99]]=Ad[100]
                                            end
end
                                    end
                                elseif P<8370247 then
                                        if P<8360997 then
                                            if P<8345082 then
                                                if P<8332463 then
                                                    P=n[B[1]]X=n[B[2]]r=nil P[X]=r X={}P=U["zwhlPezlV81KXI"]
                                                else
                                                    Q=n[B[4]]v="CFrame"o=U[v]v="new"h=6291 i=270 O=o[v]P=1125135 v=-9758 o={O(v,i,h)}H=Q(I(o))
                                                end
                                            elseif P<8349450 then
                                                    P=5294383
                                                else
                                                    i="GetAttribute"h="ServerState"i=v[i]i=i(v,h)h="Biting"X=i==h P=X and 16718374 or 3083633
                                                end
end
                                        elseif P<8368455 then
                                                if P<8365438 then
                                                    r=k[1]P=r and 14463098 or 4989095
                                                else
                                                    P=U["YIzLlWQoa75zX"]X={X}
                                                end
                                            else
                                                N="LastCastLocation"m=n[B[2]]E=m[N]P=E and 15792761 or 727137
                                            end
end
                                    elseif P<8378830 then
                                            if P<8373931 then
                                                if P<8370790 then
                                                    d="AbandonQuest"X="FireInvoke"P=U[X]X=P(d)d="task"X=U[d]d="wait"P=X[d]d=.1 X=P(d)X="FireInvoke"P=U[X]d="EliteHunter"X=P(d)P=7334035
                                                else
                                                    r="task"X=U[r]r="wait"G="_WorldOrigin"P=X[r]X=P()X="pairs"P=U[X]N=n[B[2]]m=N[G]N="Locations"E=m[N]N="GetChildren"N=E[N]m={N(E)}E={P(I(m))}P=11887684 X=E[1]d=E[3]r=E[2]E=X
                                                end
                                            else
                                                P=12799452
                                            end
                                        elseif P<8390440 then
                                                if P<8388867 then
                                                    r="task"X=U[r]r="wait"P=X[r]r=.3 X=P(r)X="TempleTimeStash"r="RaceV4Progress"P=U[X]X=P()X="FireInvoke"d="Teleport"P=U[X]X=P(r,d)N=-120 E="CFrame"m=14888 P=n[B[1]]d=U[E]E="new"r=d[E]E=28982 d={r(E,m,N)}X=P(I(d))P=6077508
                                                else
                                                    X="BerriesESP"P=U[X]X=P()P=10442776
                                                end
                                            else
                                                X=n[B[1]]r="AutoActiveRaceV4"P=X[r]P=P and 110376 or 4820413
                                            end
end
                                    end
end
                            elseif P<8448971 then
                                    if P<8422657 then
                                        if P<8409488 then
                                            if P<8403381 then
                                                if P<8399996 then
                                                    X={}P=U["6WpOimCOxIudf"]
                                                else
                                                    d="AbandonQuest"X="FireInvoke"P=U[X]X=P(d)d="task"X=U[d]d="wait"P=X[d]d=.1 X=P(d)d="EliteHunter"X="FireInvoke"P=U[X]X=P(d)P=15965805
                                                end
                                            elseif P<8408967 then
                                                    P=X and 7182937 or 16182719
                                                else
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 16214631 or 14893397
                                                end
end
                                        elseif P<8421660 then
                                                if P<8411539 then
                                                    P=7760112
                                                else
                                                    X="pcall"P=U[X]r=Y(2525868,{B[1]})X=P(r)P=15861910
                                                end
                                            else
                                                N=E o="Name"O=G[o]o="Part"H=O==o P=H and 8790128 or 1294278 Q=H
                                            end
end
                                    elseif P<8435615 then
                                            if P<8423659 then
                                                if P<8423023 then
                                                    N=n[B[1]]G="PlayerGui"m=N[G]N="Main"E=m[N]m="Quest"d=E[m]E="Container"r=d[E]d="QuestTitle"X=r[d]E="Value"r="Title"P=X[r]d=n[B[2]]r=P X=d[E]d=850 P=X>=d P=P and 4221648 or 15300539
                                                else
                                                    P=Q and 8015695 or 9513628
                                                end
                                            else
                                                P=U["z4PaGZZFGidV"]X={}
                                            end
                                        elseif P<8445537 then
                                                if P<8442586 then
                                                    H="Owner"m=d G=P Q="FindFirstChild"Q=N[Q]Q=Q(N,H)X=Q P=Q and 9471812 or 15411616
                                                else
                                                    r=b(2371799,{B[1]
                                                    B[2],B[3],B[4],B[5]})X="pcall"P=U[X]X=P(r)P=U["WbNZVBNjR7Lu"]X={}
                                                end
                                            else
                                                X="FireInvoke"r="Buso"P=U[X]X=P(r)P=13450723
                                            end
end
                                    end
                                elseif P<8492722 then
                                        if P<8469172 then
                                            if P<8457221 then
                                                if P<8453836 then
                                                    Id=79091703265657 Ud=n[D]P=1014902 V=Ud==Id M=V
                                                else
                                                    H=nil Q=nil P=3524651
                                                end
                                            elseif P<8467252 then
                                                    G=nil Q=nil P=5947408
                                                else
                                                    P=n[B[2]]N=-4501.50684 E="CFrame"Q="CircleIsland"d=U[E]E="new"r=d[E]m=250.645355 E=-6438.73535 d={r(E,m,N)}X=P(I(d))X="fireclickdetector"P=U[X]G=n[B[3]]N=G[Q]G="RaidSummon2"m=N[G]N="Button"E=m[N]m="Main"d=E[m]E="ClickDetector"r=d[E]X=P(r)P=14144354
                                                end
end
                                        elseif P<8483303 then
                                                if P<8475719 then
                                                    P=1502119
                                                else
                                                    X="CheckInventory"m=300 P=U[X]d="Shizu"r="Mastery"E=300 X=P(r,d,E)E="Saishi"r=X d="Mastery"Q="Shizu"X="CheckInventory"P=U[X]X=P(d,E,m)m="Oroshi"G="Sword"d=X E="Mastery"X="CheckInventory"P=U[X]N=300 X=P(E,m,N)N="CheckInventory"E=X m=U[N]N=m(G,Q)X=N P=N and 12059372 or 15229712
                                                end
                                            else
                                                E=A(13506391,{B[7],B[4],B[8],B[9]})P=13843519 d="pcall"r=U[d]d=r(E)
                                            end
end
                                    elseif P<8526706 then
                                            if P<8504379 then
                                                if P<8502552 then
                                                    P=10963611
                                                else
                                                    P=n[B[2]]X=P()P=3658564
                                                end
                                            else
                                                X={}P=U["EurDY80jBKpC"]
                                            end
                                        elseif P<8533092 then
                                                if P<8528170 then
                                                    Q=nil G=nil O=nil P=7017947 H=nil
                                                else
                                                    P=O m=P P=12263138 H=nil O=nil
                                                end
                                            else
                                                E=n[B[6]]d=P N="Special Microchip"m=E(N)r=m P=m and 5600905 or 7495063
                                            end
end
                                    end
end
                            end
                        elseif P<8633182 then
                                if P<8586920 then
                                    if P<8561340 then
                                        if P<8557849 then
                                            if P<8552727 then
                                                if P<8549052 then
                                                    Q,O=N(G,Q)P=Q and 4514532 or 641249
                                                else
                                                    X=n[B[2]]r="Heartbeat"P=X[r]X="Wait"X=P[X]X=X(P)X="Destroy"P=n[B[1]]X=P[X]X=X(P)P=6760429
                                                end
                                            elseif P<8556073 then
                                                    E="Check"d="ZQuestProgress"r="FireInvoke"X=U[r]r=X(d,E)P=not r P=P and 15526704 or 3961416
                                                else
                                                    r="AutoCollectEgg"X=n[B[1]]P=X[r]P=P and 16737863 or 11385899
                                                end
end
                                        elseif P<8559863 then
                                                if P<8558893 then
                                                    h="ToolTip"o=P i=E[h]h="Blox Fruit"v=i==h P=v and 2593405 or 7379435 O=v
                                                else
                                                    P=12784216
                                                end
                                            else
                                                P=13120289
                                            end
end
                                    elseif P<8578929 then
                                            if P<8573539 then
                                                if P<8573363 then
                                                    m=n[B[2]]N="Map"E=m[N]m="Jungle"d=E[m]E="QuestPlates"r=d[E]d="Door"X=r[d]r="CanCollide"P=X[r]P=P and 654084 or 2151889
                                                else
                                                    o="ipairs"X=U[o]h={X(O)}i=h[3]o=h[1]P=1355157 v=h[2]
                                                end
                                            elseif P<8575079 then
                                                    r="RF/InteractDragonQuest"N="DragonRace"P=n[B[2]]E="Dragon Wizard"X=P(r)d="NPC"m="Command"P="InvokeServer"P=X[P]r={[d]=E,[m]=N}P=P(X,r)P=13049764
                                                else
                                                    P=n[B[1]]X=P()X={}P=U["ZWkhJwEgkZmRH"]
                                                end
end
                                        elseif P<8583559 then
                                                if P<8582818 then
                                                    X="AutoTaskYama"P=U[X]X=P()P=11847179
                                                else
                                                    d="SimulationRadius"X="sethiddenproperty"P=U[X]r=n[B[1]]N="math"m=U[N]N="huge"E=m[N]X=P(r,d,E)P=U["o581b6ARHsVRi1"]X={}
                                                end
                                            else
                                                o=nil P=8527778
                                            end
end
                                    end
                                elseif P<8613606 then
                                        if P<8609690 then
                                            if P<8601557 then
                                                if P<8599217 then
                                                    r=w(4267861,{B[1]})X="pcall"P=U[X]X=P(r)P=6841849
                                                else
                                                    P=H H=20 P=d and 2642927 or 16716379 G=40 N=Q and H m=N or G
                                                end
                                            elseif P<8604828 then
                                                    v="Name"H=G o=O[v]P=o==r P=P and 7758426 or 11309209
                                                else
                                                    h="Humanoid"i=G[h]O=P h="Health"v=i[h]i=0 o=v>i H=o P=o and 4439932 or 2774862
                                                end
end
                                        elseif P<8610995 then
                                                if P<8610054 then
                                                    v,h=O(o,v)P=v and 6657923 or 2953912
                                                else
                                                    Q=-6968 X=n[B[4]]G=299 N="CFrame"m=U[N]N="new"E=m[N]N=6571 m=E(N,G,Q)r="DistanceFromCharacter"E="Position"r=X[r]d=m[E]r=r(X,d)X=2 P=r>X P=P and 12833957 or 12025306
                                                end
                                            else
                                                H=Q P=Q and 15371998 or 566823
                                            end
end
                                    elseif P<8624188 then
                                            if P<8622765 then
                                                if P<8619288 then
                                                    o="FindFirstChild"v="HumanoidRootPart"o=H[o]o=o(H,v)P=o and 9749063 or 1196769 O=o
                                                else
                                                    P=X and 1206251 or 7167677
                                                end
                                            else
                                                K="ServerState"g="GetAttribute"g=v[g]g=g(v,K)K="ReeledIn"h=g==K P=16334958 X=h
                                            end
                                        elseif P<8632671 then
                                                if P<8628607 then
                                                    P=309252 r=nil
                                                else
                                                    E=P r=k[1]E=14400 P=U["eTpCHDOz09HO2"]m=7200 d=r and m X=d or E d=X m="os"E=U[m]m="time"X=E[m]E=X()X=E%d m=X X=d-m X={X}
                                                end
                                            else
                                                P=i i="<font color=\"#00BFFF\">[ * ]</font> No fruits available"L=n[B[4]]Q=v or i h=P v=P K=#L L=0 g=K>L i=g P=g and 9045186 or 4900090
                                            end
end
                                    end
end
                            elseif P<8700294 then
                                    if P<8668006 then
                                        if P<8647932 then
                                            if P<8642338 then
                                                if P<8640300 then
                                                    n[d]=L P=n[d]P=P and 7986223 or 5181949
                                                else
                                                    v="typeof"P=15582294 o=U[v]v=o(E)o="table"O=v==o Q=O
                                                end
                                            elseif P<8642993 then
                                                    P=X and 16591095 or 13297253
                                                else
                                                    P=U["FNblbBVd4se6C"]X={}
                                                end
end
                                        elseif P<8661509 then
                                                if P<8650956 then
                                                    X={}P=U["zI7awpk4DWnuI0"]
                                                else
                                                    P=521343 r=nil
                                                end
                                            else
                                                E="Character"d=n[B[1]]r=k[1]X=d[E]d="FindFirstChild"d=X[d]d=d(X,r)P=not d P=P and 2739197 or 8160039
                                            end
end
                                    elseif P<8679075 then
                                            if P<8673450 then
                                                if P<8668802 then
                                                    P=U["yi2yzdg6a592Q"]X={}
                                                else
                                                    N="Checkfruit"d=P m=U[N]N=m()E=not N r=E P=E and 12133154 or 4700605
                                                end
                                            else
                                                E=n[B[3]]X=E P=16035365
                                            end
                                        elseif P<8686001 then
                                                if P<8682450 then
                                                    P=n[B[6]]X=P(r)P=8238994
                                                else
                                                    r="_WorldOrigin"P=n[B[1]]X="WaitForChild"X=P[X]X=X(P,r)r="Locations"P="WaitForChild"P=X[P]P=P(X,r)r=P X=5 d=1 E=d d=-1 P=12458524 m=d d=0 N=m<d d=X-m
                                                end
                                            else
                                                X=false X={X}P=U["9iNxZdLJiG3N3u"]
                                            end
end
                                    end
                                elseif P<8729247 then
                                        if P<8713856 then
                                            if P<8707779 then
                                                if P<8702623 then
                                                    X="pcall"r=w(11745377,{B[1],B[2]})P=U[X]X=P(r)P=2696252
                                                else
                                                    E="Detective"X="RegisterRemote"P=U[X]d="DressrosaQuestProgress"X=P(d,E)P=6514402
                                                end
                                            elseif P<8711514 then
                                                    r=A(2690495,{B[1]})X="pcall"P=U[X]X=P(r)P=6180995
                                                else
                                                    r="ESPChest"X=n[B[1]]P=X[r]P=P and 2498711 or 8187978
                                                end
end
                                        elseif P<8725008 then
                                                if P<8718035 then
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 15211758 or 8129478
                                                else
                                                    X="pcall"r=b(2184781,{B[1]})P=U[X]X=P(r)P=16334747
                                                end
                                            else
                                                N=r H="tostring"G="LegendarySwordDealer"X="FireInvoke"P=U[X]Q=U[H]H={Q(N)}X=P(G,I(H))N=nil P=15834909
                                            end
end
                                    elseif P<8746967 then
                                            if P<8739699 then
                                                if P<8732439 then
                                                    P=nil X={P}P=U["S5ElnGyUN4zmKT"]
                                                else
                                                    X="AutoBuyChip"r=k[1]d=r P=n[B[1]]P[X]=d P=U["3dR9pZMd6XdIY"]X={}r=nil
                                                end
                                            else
                                                P=13738116 m="HumanoidRootPart"E="WaitForChild"N=5 E=r[E]E=E(r,m,N)d=E
                                            end
                                        elseif P<8755308 then
                                                if P<8747126 then
                                                    X="checkelites"P=U[X]X=P()r=X P=r and 8771686 or 6880775
                                                else
                                                    P=y t=L N=P P=2170195 m=t
                                                end
                                            else
                                                P=K P=O and 4390790 or 5385531
                                            end
end
                                    end
end
                            end
end
                    elseif P<9088394 then
                            if P<8928898 then
                                if P<8883524 then
                                    if P<8817308 then
                                        if P<8792825 then
                                            if P<8782436 then
                                                if P<8770755 then
                                                    E="Cake Prince"r=n[B[1]]d=r(E)P=d and 3741880 or 2354966 X=d
                                                else
                                                    d="VerifyQuest"X=U[d]d=X(r)P=not d P=P and 8370343 or 12120891
                                                end
                                            elseif P<8788399 then
                                                    X="pcall"r=Y(5282515,{B[1]})P=U[X]X=P(r)P=13109449
                                                else
                                                    H="IsA"H=G[H]P=1294278 O="MeshPart"H=H(G,O)Q=H
                                                end
end
                                        elseif P<8815839 then
                                                if P<8806170 then
                                                    N="string"X=U[N]N="format"P=X[N]N="%ds"X={P(N,m)}P=U["ffAgTLpHbWcXZ"]X={I(X)}
                                                else
                                                    P=1848355 O=nil H=nil
                                                end
                                            else
                                                X={}P=U["Zv0kKRx3j1n5J"]
                                            end
end
                                    elseif P<8845307 then
                                            if P<8839383 then
                                                if P<8834853 then
                                                    m="CFrame"H=2 P=n[B[2]]G="CFrame"E=r[m]N=U[G]G="new"m=N[G]G=0 Q=3 N=m(G,Q,H)d=E*N X=P(d)d="task"X=U[d]d="wait"P=X[d]d=.1 X=P(d)P=3660161
                                                else
                                                    X={}P=U["NQL4VDaS3o1dR"]
                                                end
                                            elseif P<8842513 then
                                                    P=v and 13743947 or 6284368
                                                else
                                                    H=n[B[1]]O="Map"Q=H[O]G=d H="Turtle"X=Q[H]Q="QuestTorches"H="Torch"P=X[Q]X="FindFirstChild"X=P[X]Q=H..G X=X(P,Q)Q=X X=Q P=Q and 12301120 or 11775195
                                                end
end
                                        elseif P<8878388 then
                                                if P<8849032 then
                                                    E="VerifyQuest"m="Training Dummy"d=U[E]E=d(m)r=not E X=r P=r and 9959570 or 8079975
                                                else
                                                    m=G P=Q P=G and 11145360 or 5748066
                                                end
                                            else
                                                m=n[B[5]]N="FarmMode"X=m[N]m="No Quest"P=X==m P=P and 13892158 or 8919783
                                            end
end
                                    end
                                elseif P<8907396 then
                                        if P<8898008 then
                                            if P<8884957 then
                                                if P<8883920 then
                                                    X="Visible"P=d[X]P=P and 3311962 or 15652602
                                                else
                                                    o=nil v=nil P=11309209
                                                end
                                            elseif P<8894965 then
                                                    P=16402987 i="Mastery"v=H[i]o=v>=E X=o
                                                else
                                                    P=9154913 O="Sea_1"H=N[O]G=H
                                                end
end
                                        elseif P<8907300 then
                                                if P<8899414 then
                                                    P=O Q=H P=8613448
                                                else
                                                    X="pairs"r=k[1]P=2500 d=P P=nil E=P O="Enemies"P={}m=P P=U[X]H=n[B[1]]Q=H[O]O="GetChildren"O=Q[O]H={O(Q)}Q={P(I(H))}G=Q[3]X=Q[1]N=Q[2]P=10244296 Q=X
                                                end
                                            else
                                                P="LocalTransparencyModifier"Q=0 G[P]=Q P=8956965
                                            end
end
                                    elseif P<8916459 then
                                            if P<8910955 then
                                                if P<8908873 then
                                                    r=l(r)P=U["LF0qQtpqIMuZf"]X={}
                                                else
                                                    m="wait"N=.5 X=U[m]m=X(N)m="Kabucha"X=r==m P=X and 4205753 or 15547639
                                                end
                                            else
                                                h="SelectedRod"i=n[B[1]]v=i[h]X="FindFirstChild"X=r[X]X=X(r,v)v=X P=v and 8360157 or 4889929
                                            end
                                        elseif P<8921321 then
                                                if P<8918228 then
                                                    P=n[B[7]]P=P and 10595728 or 12164305
                                                else
                                                    P=14672101
                                                end
                                            else
                                                H="Name"N=m Q=G[H]H="Advanced Fruit Dealer"X=Q==H P=X and 1682325 or 6012259
                                            end
end
                                    end
end
                            elseif P<9021180 then
                                    if P<8989698 then
                                        if P<8967478 then
                                            if P<8947576 then
                                                if P<8941045 then
                                                    K="tonumber"o="table"v="Name"O=U[o]o="insert"h="Name"P=O[o]i=H[h]y="Mastery"g=U[K]a="Rarity"L=H[a]h="Rarity"K=g(L)g="Mastery"a="tonumber"L=U[a]C=H[y]a=L(C)o={[v]=i
                                                    [h]=K,[g]=a}O=P(E,o)P=16608845
                                                else
                                                    m=E Q="BasePart"G="IsA"G=N[G]G=G(N,Q)P=G and 662179 or 6845542
                                                end
                                            elseif P<8958510 then
                                                    N=nil P=14667420 G=nil
                                                else
                                                    E="God's Chalice"r=n[B[2]]d=r(E)P=d and 4605560 or 12564750 X=d'
                                                end
end
                                        elseif P<8973048 then
                                                if P<8970931 then
                                                    X="pcall"P=U[X]r=b(3783570,{B[1]})X=P(r)P=10813907
                                                else
                                                    X={N}P=U["EkNAL3xvLZrNJS"]
                                                end
                                            else
                                                N=n[B[1]]G="Character"m=N[G]N="FindFirstChild"G="Humanoid"N=m[N]P=3215752 N=N(m,G)d=N
                                            end
end
                                    elseif P<9009730 then
                                            if P<9007538 then
                                                if P<8997187 then
                                                    m="ProQuestProgress"N="RichSon"E="FireInvoke"d=U[E]E=d(m,N)d=1 P=14172553 r=E~=d X=r
                                                else
                                                    E=true P=n[B[4]]X=P(d,E)P=5031519
                                                end
                                            else
                                                P=d and 6346315 or 1471015
                                            end
                                        elseif P<9018592 then
                                                if P<9015336 then
                                                    P=nil X={P}P=U["z3SpmRxm1zZAu"]
                                                else
                                                    P=3884467
                                                end
                                            else
                                                N=E O="BasePart"H="IsA"H=G[H]H=H(G,O)Q=H P=H and 12264402 or 7038041
                                            end
end
                                    end
                                elseif P<9066206 then
                                        if P<9044998 then
                                            if P<9028340 then
                                                if P<9022708 then
                                                    X="pcall"P=U[X]r=b(4176735,{B[1],B[2]
                                                    B[3],B[4]})X=P(r)X={}P=U["nJBzSA2cLZ4NB"]
                                                else
                                                    O,o=G(H,O)P=O and 6489142 or 10563558
                                                end
                                            elseif P<9041382 then
                                                    g=nil K=nil P=16178224
                                                else
                                                    P=4866445
                                                end
end
                                        elseif P<9058944 then
                                                if P<9047629 then
                                                    L="table"K=U[L]a="\n"L="concat"g=K[L]P=4900090 L=n[B[4]]K=g(L,a)i=K
                                                else
                                                    X={}P=U["2zfhJQkLZsTC"]
                                                end
                                            else
                                                n[B[5]]=X r=nil P=8917288
                                            end
end
                                    elseif P<9072172 then
                                            if P<9068056 then
                                                if P<9066802 then
                                                    E="task"d=U[E]E="wait"r=d[E]E=1 d=r(E)P=7700420
                                                else
                                                    X=n[B[1]]E=n[r]d=X(E)n[r]=d E=n[r]X=not E P=X and 7601812 or 2216579
                                                end
                                            else
                                                P=W(11386669,{m})a={P()}X={I(a)}P=U["CB83nLkIiNxNc"]
                                            end
                                        elseif P<9087388 then
                                                if P<9078717 then
                                                    d=k[2]r=k[1]P=not r P=P and 15334396 or 1322477
                                                else
                                                    m=n[B[2]]N="Character"E=m[N]m="FindFirstChild"N="RaceTransformed"m=E[m]m=m(E,N)P=12508022 r=m
                                                end
                                            else
                                                t=S()n[t]=L R="math"x=100 Ud=10000 X=U[R]R="random"P=X[R]D="tostring"R=1 X=P(R,x)M=255 e=1 R=S()n[R]=X P=n[Q]q=2 x=0 X=P(x,M)x=S()n[x]=X M=1 P=n[Q]z=n[R]X=P(M,z)M=S()n[M]=X X=n[Q]z=X(e,q)X=1 V=0 P=z==X X=":(%d*):"q=":"z=S()n[z]=P J=U[D]P="gsub"u=n[Q]P=g[P]jd={u(V,Ud)}D=J(I(jd))J=":"Pd=D..J e=q..Pd P=P(g,X,e)q="pcall"e=S()Pd=p(8231612,{Q
                                                t,o,E,d
                                                K,z
                                                e
                                                R,M
                                                x
                                                O})n[e]=P X=U[q]q={X(Pd)}P={I(q)}q=P P=n[z]P=P and 10186164 or 7546738
                                            end
end
                                    end
end
                            end
                        elseif P<9196308 then
                                if P<9144744 then
                                    if P<9114623 then
                                        if P<9103592 then
                                            if P<9101685 then
                                                if P<9094277 then
                                                    X={}P=U["itKAwRmuDdoF"]
                                                else
                                                    Xd=Bd ld="_G"Ed=U[ld]dd=Ed[rd]ld=n[kd]Ed=ld[rd]Sd=dd~=Ed P=Sd and 10589445 or 10199259
                                                end
                                            elseif P<9102729 then
                                                    P=4871515
                                                else
                                                    Q=H P=O P=1520288
                                                end
end
                                        elseif P<9112397 then
                                                if P<9105946 then
                                                    o=1 P=r+o r=P o=n[B[1]]h="Position"i=O[h]v="DistanceFromCharacter"v=o[v]v=v(o,i)o=v<d P=o and 13280120 or 1430446
                                                else
                                                    P=13354556
                                                end
                                            else
                                                E=n[B[2]]m=E()r=m P=3303508
                                            end
end
                                    elseif P<9126980 then
                                            if P<9120254 then
                                                if P<9117597 then
                                                    r=k[1]P=n[B[1]]X="Random_Auto"d=r P[X]=d X={}P=U["lcaOYH5OWGzp"]r=nil
                                                else
                                                    X={}P=U["1KfEWhtmebTd"]
                                                end
                                            else
                                                X="Destroy"P=3473619 X=m[X]X=X(m)
                                            end
                                        elseif P<9139941 then
                                                if P<9129848 then
                                                    G=nil P=4794424
                                                else
                                                    i="Parent"h="Humanoid"O=P v=G[i]i="FindFirstChild"i=v[i]i=i(v,h)o=not i H=o P=o and 13768885 or 7478363
                                                end
                                            else
                                                P=8328487
                                            end
end
                                    end
                                elseif P<9174896 then
                                        if P<9154918 then
                                            if P<9152627 then
                                                if P<9152221 then
                                                    E="task"P=6149684 d=U[E]E="wait"r=d[E]E=.2 d=r(E)X=d
                                                else
                                                    h="Name"i="string"g=""v=U[i]i="gsub"X=v[i]i=N[h]h=" Fruit"v=X(i,h,g)g="Name"i=n[B[3]]h="Backpack"X=i[h]i="FindFirstChild"h=N[g]i=X[i]i=i(X,h)P=i and 4029847 or 4828227
                                                end
                                            elseif P<9153936 then
                                                    P=343825 g=nil h=nil O=nil
                                                else
                                                    X=G P=Q P=G and 16257050 or 14443204
                                                end
end
                                        elseif P<9161438 then
                                                if P<9155293 then
                                                    d=P G="Parent"N=n[B[1]]m=N[G]E=not m r=E P=E and 11329824 or 15209415
                                                else
                                                    O="GetAttribute"o="KenDodgesLeft"H=n[B[2]]O=H[O]O=O(H,o)H=.5 P=O<=H P=P and 7880556 or 10801514
                                                end
                                            else
                                                X=N P=G P=11094577
                                            end
end
                                    elseif P<9188967 then
                                            if P<9185564 then
                                                if P<9179086 then
                                                    P=n[B[1]]X=P()X={}P=U["TBq7eDa47bDG"]
                                                else
                                                    m=n[B[1]]r=k[1]d=k[2]E=m[d]X=E P=E and 13621071 or 4447804
                                                end
                                            else
                                                P=U["w0YmUvPVrDvJJ"]X={d
                                                m,N
                                                E}
                                            end
                                        elseif P<9194825 then
                                                if P<9189756 then
                                                    H=n[B[4]]O="Disconnect"O=H[O]O=O(H)P=13387872 H=nil n[B[4]]=H
                                                else
                                                    P=U["4kBd50t11Q0p"]X={}
                                                end
                                            else
                                                P=O X=H P=10627996
                                            end
end
                                    end
end
                            elseif P<9259363 then
                                    if P<9221737 then
                                        if P<9208546 then
                                            if P<9199103 then
                                                if P<9197117 then
                                                    P=x P=R and 7879068 or 15874372
                                                else
                                                    X="pcall"P=U[X]r=W(12106998,{B[1]})X=P(r)P=7167775
                                                end
                                            elseif P<9203096 then
                                                    r="AutoFactory"X=n[B[1]]P=X[r]P=P and 564890 or 5093437
                                                else
                                                    d="StartQuest"X="FireInvoke"m=1 P=U[X]E="BartiloQuest"X=P(d,E,m)P=4353903
                                                end
end
                                        elseif P<9219052 then
                                                if P<9217101 then
                                                    P=11610899
                                                else
                                                    X="AutoFarmCakePrince"P=U[X]X=P()P=U["7kRGbOUYjS3gr9"]X={}
                                                end
                                            else
                                                X={}P=U["HvHSMALB1lEu"]r=nil
                                            end
end
                                    elseif P<9228978 then
                                            if P<9228141 then
                                                if P<9223699 then
                                                    x="IslandChunks"R=h[x]x="E"P=3093554 t=R[x]x="Eye4"R="FindFirstChild"R=t[R]R=R(t,x)C=R
                                                else
                                                    N=nil P=12689311 m=nil
                                                end
                                            else
                                                Ad[101]=n[V]P=Ad[101]and 14433034 or 1014939
                                            end
                                        elseif P<9242281 then
                                                if P<9239924 then
                                                    X="AutoUpgradeDragonTalon"P=n[B[1]]r=k[1]d=r P[X]=d P=not r P=P and 16095802 or 11241184
                                                else
                                                    X="FireInvoke"m="Cousin"d="Check"P=U[X]r="Cousin"X=P(r,d)r="FireInvoke"N="CheckTime"P=U[r]G={P(m,N)}d=G[2]E=G[3]m=X H="tonumber"r=G[1]P=""N=P G=P Q=U[H]H=Q(r)Q=0 G=50 X=H or Q P=X<G P=P and 514826 or 6956892
                                                end
                                            else
                                                i="FireInvoke"h="StoreFruit"X=U[i]L="-"K=L..v P=14533241 g=v..K i=X(h,g,N)
                                            end
end
                                    end
                                elseif P<9296494 then
                                        if P<9286944 then
                                            if P<9279358 then
                                                if P<9276293 then
                                                    N=nil Q="TeleService"G=nil P=U[Q]H=n[B[3]]Q="Teleport"O=n[B[4]]Q=P[Q]Q=Q(P,H,O)P=13146703 m=nil
                                                else
                                                    P=5505959
                                                end
                                            elseif P<9282028 then
                                                    m="workspace"X="next"P=U[X]E=U[m]N="GetChildren"m="Characters"X=E[m]N=X[N]N={N(X)}m=N[2]E=N[1]N=P P=7125477
                                                else
                                                    P=U["MJX0aM6tsaefS3"]X={}
                                                end
end
                                        elseif P<9294123 then
                                                if P<9293826 then
                                                    d=#r E=0 P=d>E P=P and 13771477 or 2753226
                                                else
                                                    E="Cocoa Warrior"d="Chocolate Bar Battler"r={d
                                                    E}P=n[B[2]]X=P(r)r=X P=r and 452974 or 2235640
                                                end
                                            else
                                                O="Humanoid"H=r[O]O="Health"P=1566105 Q=H[O]H=0 G=Q>H m=G
                                            end
end
                                    elseif P<9327282 then
                                            if P<9317721 then
                                                if P<9312206 then
                                                    P=U["EwABNXqkhTNoxS"]X={}
                                                else
                                                    v=P h="Sword"i=d==h o=i P=i and 16691969 or 13978186
                                                end
                                            else
                                                y="Left"K="Right"C="Placard6"o="Placard2"g="Placard4"v="Right"H="Placard1"h="Left"P=2844916 i="Placard3"a="Left"L="Placard5"R="Left"t="Placard7"O="Right"Q={[H]=O
                                                [o]=v,[i]=h
                                                [g]=K
                                                [L]=a
                                                [C]=y
                                                [t]=R}H=nil O=nil
                                            end
                                        elseif P<9339790 then
                                                if P<9333518 then
                                                    Q="Accessory"P=790603 G=d==Q m=G
                                                else
                                                    P=14069356 d=nil G=nil
                                                end
                                            else
                                                G=nil P=2137780 N=nil
                                            end
end
                                    end
end
                            end
end
                    end
                elseif P<9843661 then
                        if P<9576660 then
                            if P<9448651 then
                                if P<9396421 then
                                    if P<9374549 then
                                        if P<9365692 then
                                            if P<9347468 then
                                                if P<9343149 then
                                                    o=n[B[9]]v="StartObsHop"O=o[v]H=O P=4760280
                                                else
                                                    P=16493133
                                                end
                                            elseif P<9351133 then
                                                    r="ESPIsland"X=n[B[1]]P=X[r]P=P and 157342 or 8051799
                                                else
                                                    X="EquipToolName"P=U[X]r="Library Key"X=P(r)P=11281873
                                                end
end
                                        elseif P<9366790 then
                                                if P<9365816 then
                                                    m=nil N=nil G=nil P=3911571 d=nil E=nil
                                                else
                                                    X={}P=U["O7JVvIgsWmI7"]
                                                end
                                            else
                                                Ad[10]=P Ad[13]="coroutine"Ad[12]=U[Ad[13]]Ad[11]=Ad[12]~=z Ad[9]=Ad[11]P=Ad[11]and 11260701 or 15870607
                                            end
end
                                    elseif P<9386226 then
                                            if P<9380927 then
                                                if P<9378265 then
                                                    N="NPCPos"P=13079848 d=n[B[8]]m=U[N]N={m()}E=d(I(N))
                                                else
                                                    P=n[B[4]]X={P(r)}X={I(X)}P=U["hpvsfETciGwC"]
                                                end
                                            elseif P<9383804 then
                                                    d=m P=N P=4004188
                                                else
                                                    X="AutoFarmLevel"P=U[X]X=P()X={}P=U["MrHO0ZUYukJX"]
                                                end
end
                                        elseif P<9395398 then
                                                if P<9388486 then
                                                    X=Q P=H P=15617377
                                                else
                                                    m="SetSpawnPoint"X={}P=U["r9kB6bHFEUgyP"]r=nil E="FireInvoke"d=U[E]E=d(m)
                                                end
                                            else
                                                v="Modules"o=n[B[3]]O=o[v]K="Equip"o="Net"H=O[o]o="StorageName"O="RF/FruitCustomizerRF"i="color"g="Context"P=H[O]v=Q[i]Q=nil H="InvokeServer"h="AuraSkin"i="Type"O={[o]=v,[i]=h
                                                [g]=K}H=P[H]G=nil H=H(P,O)P=15949858
                                            end
end
                                    end
                                elseif P<9419976 then
                                        if P<9414634 then
                                            if P<9406685 then
                                                if P<9400215 then
                                                    h="Position"o=n[B[2]]i=O[h]v="DistanceFromCharacter"v=o[v]v=v(o,i)o=3 P=v>o P=P and 3046797 or 5261329
                                                else
                                                    P=3445293 L=nil
                                                end
                                            elseif P<9407897 then
                                                    Q=nil P=1182175
                                                else
                                                    Q=m H=P P=m and 3636881 or 3007995
                                                end
end
                                        elseif P<9415579 then
                                                if P<9415124 then
                                                    P=X and 2831344 or 6182563
                                                else
                                                    d="Craft"r="CraftItem"E="TRexSkull"X="FireInvoke"P=U[X]X=P(r,d,E)P=U["iqbfstSJpp87"]X={}
                                                end
                                            else
                                                P=U["BK0Z2YiCqQIt"]X={}
                                            end
end
                                    elseif P<9438769 then
                                            if P<9437245 then
                                                if P<9430816 then
                                                    R="IslandChunks"P=C t="FindFirstChild"t=h[t]y=P t=t(h,R)P=t and 9222905 or 3093554 C=t
                                                else
                                                    L="Name"K=i[L]L="Living Zombie"g=K==L h=g P=g and 1381121 or 13886002 v=O
                                                end
                                            else
                                                d=5 X=1 P=nil r=P E=d P=11822487 d=1 m=d d=0 N=m<d d=X-m
                                            end
                                        elseif P<9447552 then
                                                if P<9446674 then
                                                    P=1087935 r=nil
                                                else
                                                    G=nil P=9186049
                                                end
                                            else
                                                X=n[B[2]]d="SaveManager"P=X[d]X="Set"X=P[X]d=n[B[3]]X=X(P,d,r)P=4303480
                                            end
end
                                    end
end
                            elseif P<9516382 then
                                    if P<9486865 then
                                        if P<9464876 then
                                            if P<9455644 then
                                                if P<9453417 then
                                                    K=n[N]L="description"h=P g=K[L]K=nil i=g or K P=7849805 o=i
                                                else
                                                    d="BuyCheck"X="FireInvoke"E=4 P=U[X]r="Ectoplasm"X=P(r,d,E)r="task"X=U[r]r="wait"d="Buy"P=X[r]r="Ectoplasm"X=P()E=4 X="FireInvoke"P=U[X]X=P(r,d,E)P=7032153
                                                end
                                            elseif P<9461771 then
                                                    P=n[B[4]]X=n[B[3]]d=r P[X]=d P=1279269
                                                else
                                                    O="BerryBush"E=nil G="math"o="GetTagged"N=U[G]G="huge"m=N[G]G="next"N=U[G]G=n[B[1]]o=G[o]o={o(G,O)}P=16348076 Q=o[1]H=o[2]
                                                end
end
                                        elseif P<9480871 then
                                                if P<9475112 then
                                                    O="tostring"i="Owner"H=U[O]P=15411616 v=N[i]i="Value"o=v[i]O=H(o)v="Name"o=n[B[2]]H=o[v]Q=O==H X=Q
                                                else
                                                    G=P m=X G="Enemy"Q="Ally"P=5805647 N=E and Q X=N or G N=S()n[N]=X E=nil X=n[B[4]]H=w(13057422,{B[2],r,B[1],N})N=l(N)O=p(2213515,{B[5]
                                                    B[1]})Q=n[r]G=X(Q,m,H,O)m=nil
                                                end
                                            else
                                                X="pcall"r=w(2128271,{B[1]})P=U[X]X=P(r)P=12557727
                                            end
end
                                    elseif P<9494083 then
                                            if P<9492775 then
                                                if P<9487449 then
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 16180090 or 16227257
                                                else
                                                    r="TweenMGear"X=n[B[1]]P=X[r]P=P and 7100983 or 537456
                                                end
                                            else
                                                r="AutoAgility"X=n[B[1]]P=X[r]P=P and 11365453 or 706695
                                            end
                                        elseif P<9510291 then
                                                if P<9499832 then
                                                    G=n[B[3]]P=10174991 Q=G(N)
                                                else
                                                    X="pcall"r=W(2201616,{B[1]})P=U[X]X=P(r)P=12393434
                                                end
                                            else
                                                G=nil P=3620844 N=nil
                                            end
end
                                    end
                                elseif P<9562066 then
                                        if P<9535386 then
                                            if P<9526294 then
                                                if P<9519290 then
                                                    d="InvokeServer"P=n[B[1]]r="GetFruits"d=P[d]X={d(P,r)}X={I(X)}P=U["eKzQ5ZF3eqbnY"]
                                                else
                                                    g="Level"h=n[B[3]]i=h[G]h="FindFirstChild"h=i[h]h=h(i,g)o=h v=P P=h and 7669621 or 7264545
                                                end
                                            elseif P<9532863 then
                                                    X="NoWorld"E="NoWorld"r=k[1]P=r U[X]=P d=U[E]E=true X=d==E P=X and 1100124 or 16548894
                                                else
                                                    P=U["D1RFOa3wuwHIAO"]m="MobsNextSpawn"d=U[m]m={d(E)}X={I(m)}
                                                end
end
                                        elseif P<9561050 then
                                                if P<9543954 then
                                                    G="CFrame"P=n[B[3]]Q=10 N=U[G]G="new"m=N[G]G=-1037 H=1800 N={m(G,Q,H)}m="RobotTalk"X=P(I(N))X="FireInvoke"P=U[X]X=P(m)P=6323996
                                                else
                                                    m="table"E=U[m]m="sort"P=E[m]m=w(13394950,{})E=P(d,m)m=1 E=d[m]m="Enemy"P=E[m]X={P}P=U["Mq3scStQ35Ccnh"]
                                                end
                                            else
                                                O="Mobs"H=n[B[1]]Q=H[O]N=P H="Hydra Enforcer"G=Q==H P=G and 9382963 or 588616 m=G
                                            end
end
                                    elseif P<9568440 then
                                            if P<9566948 then
                                                if P<9563212 then
                                                    P=X and 12881727 or 8917288
                                                else
                                                    d="string"m="CakePrinceSpawner"N=true X=U[d]d="find"P=X[d]E="FireInvoke"d=U[E]E=d(m,N)d="Do you want to open the portal now?"X=P(E,d)P=X and 14764017 or 9797844
                                                end
                                            else
                                                X=n[B[1]]r="BuyGear"P=X[r]P=P and 8072265 or 16211861
                                            end
                                        elseif P<9575366 then
                                                if P<9572137 then
                                                    P=16348076 G=nil O=nil
                                                else
                                                    P="Diablo"X={P}P=U["kzCCbZBD1SF4"]
                                                end
                                            else
                                                N="GetHits"G=S()X=U[N]N=X()n[G]=N Q=n[G]N=#Q Q=0 X=N>Q P=X and 13167467 or 10209691
                                            end
end
                                    end
end
                            end
                        elseif P<9747977 then
                                if P<9662860 then
                                    if P<9635062 then
                                        if P<9608405 then
                                            if P<9594291 then
                                                if P<9591818 then
                                                    r="checkelites"X=U[r]r=X()P=not r P=P and 4222562 or 8747021
                                                else
                                                    P=X and 10538734 or 1137437
                                                end
                                            elseif P<9599704 then
                                                    P=13109449
                                                else
                                                    P=6270429
                                                end
end
                                        elseif P<9626860 then
                                                if P<9613760 then
                                                    P=15745862
                                                else
                                                    X="GetButton"P=U[X]X=P()r=X P=r and 5172790 or 15724387
                                                end
                                            else
                                                m="global"E=n[B[3]]d=E[m]X=d P=15462236
                                            end
end
                                    elseif P<9656561 then
                                            if P<9653373 then
                                                if P<9645808 then
                                                    r=nil P=309252
                                                else
                                                    P=15581431
                                                end
                                            else
                                                r="doorsaber"X=U[r]r=X()P=not r P=P and 8572829 or 11851827
                                            end
                                        elseif P<9661327 then
                                                if P<9657449 then
                                                    G=d Q="Plate"o="BrickColor"X=Q..G H="BrickColor"P=r[X]Q=P X=Q[H]O=U[o]o="new"H=O[o]o="Sand yellow"O=H(o)P=X==O P=P and 5869962 or 1396794
                                                else
                                                    P=12278038 Ad[42]="Fish Tail"Ad[44]="Nightmare Catcher"Ad[39]="Conjured Cocoa"Ad[37]="Leather + Scrap Metal"Ad[38]="Demonic Wisp"Ad[40]="Dragon Scale"Ad[43]="Mini Tusk"Ad[41]="Gunpowder"Ad[36]={Ad[37],Ad[38]
                                                    Ad[39]
                                                    Ad[40],Ad[41]
                                                    Ad[42],Ad[43],Ad[44]}Ad[33]=Ad[36]
                                                end
                                            else
                                                G=433.864 P=n[B[2]]m="CFrame"E=U[m]N=9.086 m="new"d=E[m]m=-16927.451 E={d(m,N,G)}X=P(I(E))P=2321966
                                            end
end
                                    end
                                elseif P<9722853 then
                                        if P<9698247 then
                                            if P<9674426 then
                                                if P<9665320 then
                                                    Ad[6]=16777216.0 Ad[3]=16777216.0 bd=n[ld]Ad[4]="RandomStrings"Ad[2]=1 Ad[1]=bd(Ad[2],Ad[3])Ad[3]=U[Ad[4]]Ad[4]="randomString"Ad[2]=Ad[3][Ad[4]]Ad[3]=Ad[2]()Ad[5]=1 Ad[2]=n[ld]Ad[4]=Ad[2](Ad[5],Ad[6])bd=Ad[3]^Ad[4]Td=Ad[1]-bd P=U["hrKhacnezdfuiB"]Ad[3]="RandomStrings"Ad[2]=U[Ad[3]]Ad[3]="randomString"Ad[1]=Ad[2][Ad[3]]Ad[2]=Ad[1]()bd=Ad[2]/Td X={bd}
                                                else
                                                    P=U["O31EOhfxNhjESa"]m=n[B[7]]Q=true G={m(N,Q)}X={I(G)}
                                                end
                                            elseif P<9694853 then
                                                    P=U["vnaTe3yvvU0Z"]X={}
                                                else
                                                    P=6184518 r=nil
                                                end
end
                                        elseif P<9712285 then
                                                if P<9702869 then
                                                    P=4772660 E=nil
                                                else
                                                    P=12719973 g="table"h=U[g]v=o g="insert"v=nil X=h[g]g=n[B[2]]h=X(g,i)i=nil
                                                end
                                            else
                                                g="Color3"K=1 h=U[g]P=14185867 L=1 g="new"i=h[g]g=1 h=i(g,K,L)o=h
                                            end
end
                                    elseif P<9736246 then
                                            if P<9724874 then
                                                if P<9723486 then
                                                    t="PrimaryPart"y=L[t]P=7387754 C=y
                                                else
                                                    P=3443484
                                                end
                                            else
                                                O=7.5884703e-009 P=n[B[3]]Q=-4.0340602e-009 v=-5.8864642e-009 o=1 E="CFrame"H=.459603906 d=U[E]G=.888123989 N=5.26677656 h=8.71560069e-009 E="new"m=29.8520069 g=.888123989 r=d[E]E=-1404.07996 i=-0.459603906 d={r(E,m,N,G,Q,H,O,o,v,i,h,g)}X=P(I(d))P=11964004
                                            end
                                        elseif P<9747300 then
                                                if P<9742779 then
                                                    X=n[B[3]]E=X()P=E and 11552968 or 11380743
                                                else
                                                    P=12061423
                                                end
                                            else
                                                Ad[4]=P Ad[7]="xpcall"Ad[6]=U[Ad[7]]Ad[5]=Ad[6]~=t Ad[3]=Ad[5]P=Ad[5]and 7276782 or 16736647
                                            end
end
                                    end
end
                            elseif P<9799966 then
                                    if P<9784660 then
                                        if P<9773753 then
                                            if P<9749350 then
                                                if P<9748851 then
                                                    r="EmberTemplate"X="FindFirstChild"P=n[B[1]]X=P[X]X=X(P,r)r=X P=r and 1622408 or 7166806 X=r
                                                else
                                                    o=O P=O and 1525194 or 2938694
                                                end
                                            elseif P<9755264 then
                                                    m="Data"r=k[1]E=n[B[1]]d=E[m]E="Points"X=d[E]d="Value"P=X[d]m=1 d=P E=d>=m P=E and 4617110 or 9414806 X=E
                                                else
                                                    P="FindFirstChild"X="BodyVelocity"P=O[P]P=P(O,X)v=P P=not v P=P and 12266381 or 15295357
                                                end
end
                                        elseif P<9781909 then
                                                if P<9778963 then
                                                    P=U["MwA5CTeKqGG3LG"]X={}
                                                else
                                                    P=X and 11659446 or 12782611
                                                end
                                            else
                                                P=X and 2861450 or 15499258
                                            end
end
                                    elseif P<9789160 then
                                            if P<9787997 then
                                                if P<9785306 then
                                                    X={}P=U["xECWPo7MWAS9"]
                                                else
                                                    Ad[32]="Reborn Skeleton"Ad[8]="Angel Wings"P=Ad[3]Ad[10]="Shanda"Ad[3]=S()Ad[11]="Royal Squad"Ad[5]=S()n[Ad[3]]=Ad[1]Ad[1]={}Ad[13]="Wysper"Ad[20]="Magma Admiral"Ad[19]="Military Spy"n[Ad[5]]=Ad[1]Ad[6]="spawncache"Ad[12]="Royal Soldier"Ad[1]=W(15279725,{Ad[2]
                                                    m})U[Ad[6]]=Ad[1]Ad[1]=w(16452828,{Ad[5],Ad[2]
                                                    Ad[3],dd,bd})Ad[38]="Tiktok Shop"Ad[6]="MobsNextSpawn"U[Ad[6]]=Ad[1]Ad[6]="Sea_1"Ad[27]="Dragon Crew Warrior"Ad[30]="Mythological Pirate"Ad[24]="Factory Staff"Ad[14]="Thunder God"Ad[21]="Fishman Commando"Ad[9]={Ad[10],Ad[11]
                                                    Ad[12],Ad[13],Ad[14]}Ad[10]="Leather + Scrap Metal"Ad[22]="Fishman Lord"Ad[12]="Brute"Ad[13]="Pirate"Ad[11]={Ad[12],Ad[13]}Ad[14]="Military Soldier"Ad[13]={Ad[14]
                                                    Ad[19],Ad[20]}Ad[14]="Fish Tail"Ad[23]="Ship Officer"Ad[12]="Magma Ore"Ad[20]="Fishman Warrior"Ad[19]={Ad[20]
                                                    Ad[21],Ad[22]}Ad[7]={[Ad[8]]=Ad[9],[Ad[10]]=Ad[11]
                                                    [Ad[12]]=Ad[13]
                                                    [Ad[14]]=Ad[19]}Ad[21]="Ship Engineer"Ad[26]="Vampire"Ad[22]="Ship Steward"Ad[20]="Ship Deckhand"Ad[10]="Leather + Scrap Metal"Ad[12]="Marine Captain"Ad[11]={Ad[12]}Ad[12]="Magma Ore"Ad[8]="Sea_2"Ad[19]="Lava Pirate"Ad[14]="Magma Ninja"Ad[13]={Ad[14],Ad[19]}Ad[14]="Ectoplasm"Ad[25]={Ad[26]}Ad[28]="Pistol Billionaire"Ad[19]={Ad[20]
                                                    Ad[21],Ad[22]
                                                    Ad[23]}Ad[20]="Mystic Droplet"Ad[39]="cart-quantum"Ad[22]="Water Fighter"Ad[21]={Ad[22]}Ad[23]={Ad[24]}Ad[22]="Radioactive Material"Ad[24]="Vampire Fang"Ad[9]={[Ad[10]]=Ad[11],[Ad[12]]=Ad[13]
                                                    [Ad[14]]=Ad[19],[Ad[20]]=Ad[21],[Ad[22]]=Ad[23]
                                                    [Ad[24]]=Ad[25]}Ad[14]="Jungle Pirate"Ad[33]="Living Zombie"Ad[22]="Fishman Raider"Ad[29]={Ad[30]}Ad[31]={Ad[32],Ad[33]}Ad[26]="Dragon Crew Archer"Ad[10]="Sea_3"Ad[20]="Demonic Soul"Ad[24]="Chocolate Bar Battler"Ad[30]="Nightmare Catcher"Ad[13]={Ad[14]}Ad[14]="Demonic Wisp"Ad[25]="Cocoa Warrior"Ad[12]="Leather + Scrap Metal"Ad[35]=-379.268 Ad[19]={Ad[20]}Ad[20]="Fish Tail"Ad[23]="Fishman Captain"Ad[21]={Ad[22]
                                                    Ad[23]}Ad[22]="Conjured Cocoa"Ad[23]={Ad[24],Ad[25]}Ad[25]={Ad[26]
                                                    Ad[27]}Ad[27]={Ad[28]}Ad[28]="Mini Tusk"Ad[26]="Gunpowder"Ad[24]="Dragon Scale"Ad[11]={[Ad[12]]=Ad[13],[Ad[14]]=Ad[19]
                                                    [Ad[20]]=Ad[21]
                                                    [Ad[22]]=Ad[23],[Ad[24]]=Ad[25]
                                                    [Ad[26]]=Ad[27],[Ad[28]]=Ad[29]
                                                    [Ad[30]]=Ad[31]}Ad[1]={[Ad[6]]=Ad[7]
                                                    [Ad[8]]=Ad[9]
                                                    [Ad[10]]=Ad[11]}Ad[26]=14889.427 Ad[20]="Demonic Soul"Ad[37]="map-quantum"Ad[9]=S()Ad[7]="StartQuest"Ad[6]=S()Ad[23]=true Ad[31]=234.312 Ad[22]="Posessed Mummy"n[Ad[6]]=Ad[1]Ad[1]=Z(4774742,{o,dd})U[Ad[7]]=Ad[1]Ad[1]=w(14480173,{o})Ad[7]="VerifyQuest"Ad[21]=true Ad[14]="Living Zombie"U[Ad[7]]=Ad[1]Ad[7]="NPCPos"Ad[1]=Y(11282197,{K})Ad[10]="GetQuest"U[Ad[7]]=Ad[1]Ad[28]=14894.427 Ad[1]=0 Ad[7]=S()Ad[25]=true n[Ad[7]]=Ad[1]Ad[13]=true Ad[8]=S()Ad[1]=nil n[Ad[8]]=Ad[1]Ad[12]="Reborn Skeleton"Ad[1]=70 n[Ad[9]]=Ad[1]Ad[1]=b(13542619,{z
                                                    q
                                                    Ad[8],Ad[7],Ad[9]
                                                    M
                                                    o
                                                    dd})Ad[34]=14889.427 Ad[27]=-206.95 Ad[19]=true Ad[11]={[Ad[12]]=Ad[13],[Ad[14]]=Ad[19]
                                                    [Ad[20]]=Ad[21]
                                                    [Ad[22]]=Ad[23]}U[Ad[10]]=Ad[1]Ad[19]=true Ad[22]="Cake Guard"Ad[14]="Head Baker"Ad[29]=-422.11 Ad[21]=true Ad[10]="BonesList"Ad[24]="Cookie Crafter"Ad[20]="Baking Staff"Ad[12]="CakesList"Ad[23]=true Ad[13]={[Ad[14]]=Ad[19],[Ad[20]]=Ad[21],[Ad[22]]=Ad[23],[Ad[24]]=Ad[25]}Ad[25]=-210.587 Ad[14]="RaceList"Ad[23]="CFrame"Ad[20]="Fishman"Ad[22]=U[Ad[23]]Ad[23]="new"Ad[21]=Ad[22][Ad[23]]Ad[23]=28224.057 Ad[24]=14889.427 Ad[22]=Ad[21](Ad[23],Ad[24],Ad[25])Ad[25]="CFrame"Ad[24]=U[Ad[25]]Ad[25]="new"Ad[23]=Ad[24][Ad[25]]Ad[21]="Human"Ad[25]=29237.295 Ad[24]=Ad[23](Ad[25],Ad[26],Ad[27])Ad[32]=14889.128 Ad[23]="Cyborg"Ad[27]="CFrame"Ad[26]=U[Ad[27]]Ad[27]="new"Ad[25]=Ad[26][Ad[27]]Ad[27]=28492.414 Ad[26]=Ad[25](Ad[27],Ad[28],Ad[29])Ad[29]="CFrame"Ad[30]=14918.075 Ad[25]="Skypiea"Ad[28]=U[Ad[29]]Ad[29]="new"Ad[27]=Ad[28][Ad[29]]Ad[29]=28967.408 Ad[28]=Ad[27](Ad[29],Ad[30],Ad[31])Ad[33]=454.596 Ad[31]="CFrame"Ad[27]="Ghoul"Ad[30]=U[Ad[31]]Ad[31]="new"Ad[29]=Ad[30][Ad[31]]Ad[31]=28672.721 Ad[30]=Ad[29](Ad[31],Ad[32],Ad[33])Ad[29]="Mink"Ad[33]="CFrame"Ad[32]=U[Ad[33]]Ad[33]="new"Ad[31]=Ad[32][Ad[33]]Ad[33]=29020.66 Ad[32]=Ad[31](Ad[33],Ad[34],Ad[35])Ad[19]={[Ad[20]]=Ad[22]
                                                    [Ad[21]]=Ad[24]
                                                    [Ad[23]]=Ad[26],[Ad[25]]=Ad[28],[Ad[27]]=Ad[30]
                                                    [Ad[29]]=Ad[32]}Ad[23]=true Ad[27]=true Ad[26]="Jeremy"Ad[20]="HumanRace"Ad[25]=true Ad[22]="Orbitus"Ad[36]="Travel"Ad[24]="Diamond"Ad[21]={[Ad[22]]=Ad[23]
                                                    [Ad[24]]=Ad[25],[Ad[26]]=Ad[27]}Ad[1]={[Ad[10]]=Ad[11]
                                                    [Ad[12]]=Ad[13],[Ad[14]]=Ad[19]
                                                    [Ad[20]]=Ad[21]}Ad[31]="visual-quantum"Ad[12]="GetPathFruit"Ad[10]=S()n[Ad[10]]=Ad[1]Ad[1]=S()Ad[11]=W(9078452,{dd})n[Ad[1]]=Ad[11]Ad[11]=A(8118377,{d})U[Ad[12]]=Ad[11]Ad[11]=w(6036114,{u,h,o,dd
                                                    bd,Ad[1]})Ad[12]="AutoFarmSecondSea"U[Ad[12]]=Ad[11]Ad[11]=Y(4168886,{jd
                                                    h
                                                    Td
                                                    bd
                                                    Ad[1]
                                                    o
                                                    d
                                                    dd})Ad[12]="AutoFarmThirdSea"U[Ad[12]]=Ad[11]Ad[12]="checkelites"Ad[11]=p(4598592,{Td})U[Ad[12]]=Ad[11]Ad[11]=A(9871637,{Td
                                                    bd
                                                    Ad[1]})Ad[12]="AutoFarmDoughKing"U[Ad[12]]=Ad[11]Ad[12]="platesbartilo"Ad[11]=W(8539,{g})Ad[14]="PlayerESP"U[Ad[12]]=Ad[11]Ad[11]=w(8422686,{o,h
                                                    bd,Ad[1]
                                                    dd
                                                    Td,M
                                                    g})Ad[12]="AutoBartiloQuest"U[Ad[12]]=Ad[11]Ad[11]=b(14340082,{o
                                                    dd
                                                    d,bd
                                                    Ad[1],M})Ad[12]="AutoStartRaceV2"U[Ad[12]]=Ad[11]Ad[12]="checkv3boss"Ad[11]=Y(8233355,{Td})U[Ad[12]]=Ad[11]Ad[11]=W(11891188,{o
                                                    dd
                                                    bd
                                                    Ad[1],M,E})Ad[12]="AutoEvolveV3"U[Ad[12]]=Ad[11]Ad[11]=Y(6947013,{N
                                                    o})Ad[12]="DetectChest"Ad[13]=A(16285355,{})U[Ad[12]]=Ad[11]Ad[12]="AutoChest"Ad[35]="rabbit-quantum"Ad[11]=A(15345682,{o
                                                    dd})U[Ad[12]]=Ad[11]Ad[11]=p(15016152,{u
                                                    o,dd})Ad[12]="AutoGetDBV2"U[Ad[12]]=Ad[11]Ad[12]="AutoFarmMaterial"Ad[11]=w(4886865,{q
                                                    u
                                                    Ad[6],jd,V
                                                    bd,Ad[1]})U[Ad[12]]=Ad[11]Ad[11]=w(11353122,{d,Ad[1],dd})Ad[12]="AutoFarmPirateRaid"Ad[23]="Subtitle"U[Ad[12]]=Ad[11]Ad[12]="doortourch"Ad[11]=w(4581825,{g})U[Ad[12]]=Ad[11]Ad[12]="doorcup"Ad[11]=A(3535288,{g})U[Ad[12]]=Ad[11]Ad[12]="doorsaber"Ad[11]=A(10781277,{g})U[Ad[12]]=Ad[11]Ad[11]=p(11870256,{o
                                                    d,dd,bd,Ad[1]})Ad[12]="AutoUnlockSaber"U[Ad[12]]=Ad[11]Ad[12]="checktushtorch"Ad[11]=W(9438078,{d})U[Ad[12]]=Ad[11]Ad[12]="AutoCompleteTrial"Ad[11]=w(10271538,{})Ad[26]="v.LIVE"U[Ad[12]]=Ad[11]Ad[12]="checkSecretDoor"Ad[11]=A(6772156,{d})U[Ad[12]]=Ad[11]Ad[12]="AutoGetTushita"Ad[11]=p(6103288,{Td,dd,bd
                                                    Ad[1]})U[Ad[12]]=Ad[11]Ad[11]=Z(8667166,{o})Ad[12]="EquipSword"Ad[22]="Gia Huy HUB"U[Ad[12]]=Ad[11]Ad[12]="CustomFarm"Ad[11]=Y(11446034,{h,V
                                                    jd
                                                    bd,Ad[1]})U[Ad[12]]=Ad[11]Ad[11]=W(8479515,{o})Ad[12]="AutoGetTTK"U[Ad[12]]=Ad[11]Ad[11]=b(1647475,{V,q,bd,Ad[1]})Ad[12]="AutoSwordMastery"Ad[28]="Purple"U[Ad[12]]=Ad[11]Ad[12]="AutoGetSkullGuitar"Ad[11]=w(5187246,{h,Q
                                                    o,dd
                                                    d,g})U[Ad[12]]=Ad[11]Ad[11]=p(10517269,{Td,bd
                                                    Ad[1]
                                                    dd})Ad[12]="AutoDarkbeard"U[Ad[12]]=Ad[11]Ad[12]="AutoWhiteBelt"Ad[11]=Y(2200986,{o,R
                                                    dd
                                                    bd
                                                    z,Ad[1]})U[Ad[12]]=Ad[11]Ad[11]=p(5511527,{o
                                                    R,dd})Ad[12]="AutoPurpleBelt"U[Ad[12]]=Ad[11]Ad[12]="AutoCursedCaptain"Ad[11]=Y(14475571,{Td
                                                    bd,Ad[1]})U[Ad[12]]=Ad[11]Ad[12]="GetButton"Ad[11]=b(13288267,{g})U[Ad[12]]=Ad[11]Ad[11]=w(12763759,{Td
                                                    bd
                                                    Ad[1],dd})Ad[12]="AutoKillRipIndra"U[Ad[12]]=Ad[11]Ad[11]=w(1945500,{o
                                                    q,bd,Ad[1]})Ad[12]="AutoTrainGear"Ad[34]="Trials"U[Ad[12]]=Ad[11]Ad[12]="AutoFullLawRaid"Ad[11]=p(15708159,{Td
                                                    bd
                                                    Ad[1]
                                                    dd,g
                                                    M})U[Ad[12]]=Ad[11]Ad[11]=p(3867842,{N
                                                    o,O
                                                    u
                                                    bd
                                                    jd
                                                    V
                                                    dd,q,D
                                                    M})Ad[12]="AutoFarmObservation"Ad[25]="Version"U[Ad[12]]=Ad[11]Ad[21]="Title"Ad[27]="Theme"Ad[12]="AutoTaskEliteHunter"Ad[11]=b(9589225,{bd
                                                    Ad[1]
                                                    dd})U[Ad[12]]=Ad[11]Ad[11]=Y(14327383,{Td
                                                    bd,Ad[1]})Ad[24]="Blox Fruit"Ad[12]="AutoFactoryRaid"U[Ad[12]]=Ad[11]Ad[11]=Y(7411884,{Td
                                                    bd,Ad[1]
                                                    o,dd})Ad[12]="AutoTaskRengoku"U[Ad[12]]=Ad[11]Ad[41]="misc-quantum"Ad[12]="AutoSoulReaper"Ad[11]=w(1048425,{bd
                                                    Ad[1],dd})U[Ad[12]]=Ad[11]Ad[12]="TrainDummy"Ad[11]=p(8845689,{o
                                                    bd,Ad[1]
                                                    dd})Ad[29]="user-quantum"U[Ad[12]]=Ad[11]Ad[12]="AutoGetGhoulRace"Ad[11]=w(6948147,{o,bd,Ad[1],dd,Td})U[Ad[12]]=Ad[11]Ad[12]="AutoGetCyborgRace"Ad[11]=W(6212643,{o,g
                                                    dd,Td,bd,Ad[1],M,d})U[Ad[12]]=Ad[11]Ad[12]="round"Ad[11]=w(12074862,{})U[Ad[12]]=Ad[11]Ad[11]=S()Ad[12]=Y(10841814,{})n[Ad[11]]=Ad[12]Ad[12]=S()n[Ad[12]]=Ad[13]Ad[13]=w(13090037,{E
                                                    o,q
                                                    Ad[12],Ad[11]})U[Ad[14]]=Ad[13]Ad[13]=w(4200828,{o
                                                    d
                                                    q
                                                    Ad[12]})Ad[14]="IslandESP"Ad[20]={[Ad[21]]=Ad[22]
                                                    [Ad[23]]=Ad[24]
                                                    [Ad[25]]=Ad[26]
                                                    [Ad[27]]=Ad[28]}U[Ad[14]]=Ad[13]Ad[13]=Y(12005338,{o,d,q
                                                    Ad[12]})Ad[14]="FruitESP"Ad[21]="AddTab"Ad[28]="Player"Ad[25]="swords-quantum"U[Ad[14]]=Ad[13]Ad[13]=p(14407740,{o,d
                                                    q,Ad[12]})Ad[24]="Sub Farm"Ad[14]="ChestESP"Ad[32]="Dungeon"U[Ad[14]]=Ad[13]Ad[13]=F(9869969,{e
                                                    q})Ad[27]="ship-quantum"Ad[14]=f(1195391,{e,q})Ad[23]="home-quantum"Ad[19]="CreateDropdown"U[Ad[19]]=Ad[14]Ad[14]=n[e]Ad[19]="CreateWindow"Ad[19]=Ad[14][Ad[19]]Ad[19]=Ad[19](Ad[14],Ad[20])Ad[20]="Home"Ad[22]="Home"Ad[21]=Ad[19][Ad[21]]Ad[21]=Ad[21](Ad[19],Ad[22],Ad[23])Ad[22]="Sub"Ad[23]="AddTab"Ad[23]=Ad[19][Ad[23]]Ad[26]="Sea Event"Ad[23]=Ad[23](Ad[19],Ad[24],Ad[25])Ad[24]="Sevent"Ad[40]="Misc"Ad[25]="AddTab"Ad[25]=Ad[19][Ad[25]]Ad[25]=Ad[25](Ad[19],Ad[26],Ad[27])Ad[27]="AddTab"Ad[27]=Ad[19][Ad[27]]Ad[30]="Dragon Update"Ad[27]=Ad[27](Ad[19],Ad[28],Ad[29])Ad[26]="Player"Ad[29]="AddTab"Ad[33]="raid-quantum"Ad[28]="Dragon"Ad[29]=Ad[19][Ad[29]]Ad[29]=Ad[29](Ad[19],Ad[30],Ad[31])Ad[30]="Raid"Ad[31]="AddTab"Ad[31]=Ad[19][Ad[31]]Ad[31]=Ad[31](Ad[19],Ad[32],Ad[33])Ad[32]="Trial"Ad[33]="AddTab"Ad[33]=Ad[19][Ad[33]]Ad[33]=Ad[33](Ad[19],Ad[34],Ad[35])Ad[34]="Travel"Ad[35]="AddTab"Ad[35]=Ad[19][Ad[35]]Ad[35]=Ad[35](Ad[19],Ad[36],Ad[37])Ad[36]="Shop"Ad[37]="AddTab"Ad[37]=Ad[19][Ad[37]]Ad[37]=Ad[37](Ad[19],Ad[38],Ad[39])Ad[38]="Misc"Ad[39]="AddTab"Ad[39]=Ad[19][Ad[39]]Ad[39]=Ad[39](Ad[19],Ad[40],Ad[41])Ad[14]={[Ad[20]]=Ad[21]
                                                    [Ad[22]]=Ad[23]
                                                    [Ad[24]]=Ad[25],[Ad[26]]=Ad[27]
                                                    [Ad[28]]=Ad[29],[Ad[30]]=Ad[31],[Ad[32]]=Ad[33],[Ad[34]]=Ad[35],[Ad[36]]=Ad[37],[Ad[38]]=Ad[39]}Ad[33]=b(1881987,{q
                                                    d
                                                    dd})Ad[29]="stop"Ad[28]=true Ad[27]="global"Ad[21]="Sevent"Ad[20]=Ad[14][Ad[21]]Ad[30]=true Ad[24]="AutoMirageIsland"Ad[21]="addSection"Ad[21]=Ad[20][Ad[21]]Ad[32]=W(11923554,{q,d
                                                    dd})Ad[21]=Ad[21](Ad[20])Ad[25]=false Ad[20]="addMenu"Ad[20]=Ad[21][Ad[20]]Ad[31]="callback"Ad[34]="MarineBrigade"Ad[23]="Teleport to Mirage"Ad[22]="Mirage Event"Ad[20]=Ad[20](Ad[21],Ad[22])Ad[26]={[Ad[27]]=Ad[28],[Ad[29]]=Ad[30],[Ad[31]]=Ad[32]}Ad[22]=Ad[13](Ad[20],Ad[23],Ad[24],Ad[25],Ad[26])Ad[22]="addMenu"Ad[22]=Ad[21][Ad[22]]Ad[26]=false Ad[23]="Kitsune Event"Ad[29]=true Ad[22]=Ad[22](Ad[21],Ad[23])Ad[25]="TeleportKitsune"Ad[41]="The Sentinel"Ad[24]="Teleport to Shrine"Ad[31]=true Ad[39]="Grand Brigade"Ad[32]="callback"Ad[30]="stop"Ad[28]="global"Ad[27]={[Ad[28]]=Ad[29],[Ad[30]]=Ad[31]
                                                    [Ad[32]]=Ad[33]}Ad[32]="PirateGrandBrigade"Ad[33]="MarineSloop"Ad[23]=Ad[13](Ad[22],Ad[24],Ad[25],Ad[26],Ad[27])Ad[26]=Z(2725972,{q})Ad[37]="Lantern"Ad[24]="Auto Collect Azure Embers"Ad[23]="addToggle"Ad[25]=false Ad[23]=Ad[22][Ad[23]]Ad[23]=Ad[23](Ad[22],Ad[24],Ad[25],Ad[26])Ad[25]="task"Ad[24]=U[Ad[25]]Ad[25]="spawn"Ad[38]="Guardian"Ad[23]=Ad[24][Ad[25]]Ad[29]="Dinghy"Ad[25]=W(8469251,{q
                                                    d
                                                    o})Ad[24]=Ad[23](Ad[25])Ad[25]=false Ad[30]="PirateSloop"Ad[26]=W(1207230,{q,R})Ad[23]="addToggle"Ad[23]=Ad[22][Ad[23]]Ad[40]="Sloop"Ad[24]="Auto Trade Azure"Ad[23]=Ad[23](Ad[22],Ad[24],Ad[25],Ad[26])Ad[25]="Sea Farm"Ad[35]="MarineGrandBrigade"Ad[24]="Sevent"Ad[23]=Ad[14][Ad[24]]Ad[24]="addSection"Ad[31]="PirateBrigade"Ad[27]=3 Ad[24]=Ad[23][Ad[24]]Ad[24]=Ad[24](Ad[23])Ad[36]="Beast Hunter"Ad[23]="addMenu"Ad[28]={Ad[29]
                                                    Ad[30],Ad[31],Ad[32],Ad[33],Ad[34],Ad[35]
                                                    Ad[36]
                                                    Ad[37],Ad[38]
                                                    Ad[39]
                                                    Ad[40],Ad[41]}Ad[23]=Ad[24][Ad[23]]Ad[26]="Select Boat"Ad[30]="Level 2"Ad[33]="Level 5"Ad[23]=Ad[23](Ad[24],Ad[25])Ad[29]=A(4512691,{q})Ad[25]="addDropdown"Ad[34]="Level 6"Ad[25]=Ad[23][Ad[25]]Ad[25]=Ad[25](Ad[23],Ad[26],Ad[27],Ad[28],Ad[29])Ad[40]="Sword"Ad[28]=b(10383143,{q})Ad[27]=false Ad[26]="Auto Find Prehistoric Island"Ad[35]="Infinite"Ad[25]="addToggle"Ad[29]="Level 1"Ad[25]=Ad[23][Ad[25]]Ad[31]="Level 3"Ad[25]=Ad[25](Ad[23],Ad[26],Ad[27],Ad[28])Ad[26]="Informative"Ad[27]="to change boat speed, go to main settings and adjust the tweening speed"Ad[37]="Shark (Corrupted)"Ad[25]="addLabel"Ad[25]=Ad[23][Ad[25]]Ad[32]="Level 4"Ad[28]={Ad[29],Ad[30],Ad[31],Ad[32],Ad[33]
                                                    Ad[34]
                                                    Ad[35]}Ad[25]=Ad[25](Ad[23],Ad[26],Ad[27])Ad[38]="Shell (Celestial)"Ad[27]=6 Ad[29]=w(16312837,{q})Ad[25]="addDropdown"Ad[26]="Select Zone"Ad[25]=Ad[23][Ad[25]]Ad[25]=Ad[25](Ad[23],Ad[26],Ad[27],Ad[28],Ad[29])Ad[25]=w(7671908,{d,o})Ad[26]="CheckBoat"U[Ad[26]]=Ad[25]Ad[26]="CheckSeaLevel"Ad[25]=A(161050,{q})U[Ad[26]]=Ad[25]Ad[25]=A(8901254,{d
                                                    o})Ad[26]="GetSeaMons"Ad[32]="stop"Ad[28]=false Ad[31]=true Ad[30]="global"U[Ad[26]]=Ad[25]Ad[33]=true Ad[25]=p(16601392,{q
                                                    dd
                                                    o
                                                    Ad[1],d})Ad[29]={[Ad[30]]=Ad[31],[Ad[32]]=Ad[33]}Ad[27]="AutoSail"Ad[30]="Fishing Rod"Ad[26]="AutoSailBoat"Ad[36]="Treasure Rod"Ad[34]="Shark Rod"U[Ad[26]]=Ad[25]Ad[26]="Auto Sail"Ad[25]=Ad[13](Ad[23],Ad[26],Ad[27],Ad[28],Ad[29])Ad[29]="SelectedRod"Ad[27]=W(10224105,{q})Ad[26]="spawn"Ad[25]=U[Ad[26]]Ad[28]=Y(5819152,{q})Ad[41]="Blox Fruit"Ad[26]=Ad[25](Ad[27])Ad[25]="addToggle"Ad[26]="Attack Shark"Ad[25]=Ad[23][Ad[25]]Ad[27]=false Ad[25]=Ad[25](Ad[23],Ad[26],Ad[27],Ad[28])Ad[26]="Attack Piranha"Ad[32]="Fishing Rod"Ad[25]="addToggle"Ad[27]=false Ad[28]=Y(2184702,{q})Ad[25]=Ad[23][Ad[25]]Ad[25]=Ad[25](Ad[23],Ad[26],Ad[27],Ad[28])Ad[25]="addMenu"Ad[25]=Ad[24][Ad[25]]Ad[26]="Fishing"Ad[25]=Ad[25](Ad[24],Ad[26])Ad[27]=W(7854948,{o})Ad[26]=S()n[Ad[26]]=Ad[27]Ad[27]=S()Ad[28]=b(1279052,{Ad[26]
                                                    o})Ad[33]="Gold Rod"n[Ad[27]]=Ad[28]Ad[28]=n[q]Ad[35]="Shell Rod"Ad[28][Ad[29]]=Ad[30]Ad[28]="addDropdown"Ad[31]={Ad[32]
                                                    Ad[33],Ad[34]
                                                    Ad[35],Ad[36]
                                                    Ad[37],Ad[38]}Ad[37]="Epic Bait"Ad[32]=Y(1134542,{q})Ad[35]="Abyssal Bait"Ad[28]=Ad[25][Ad[28]]Ad[29]="Fishing Rods"Ad[30]=1 Ad[28]=Ad[28](Ad[25],Ad[29],Ad[30],Ad[31],Ad[32])Ad[28]=n[q]Ad[38]="Carnivore Bait"Ad[30]="Basic Bait"Ad[39]="Melee"Ad[34]="Good Bait"Ad[29]="SelectedBait"Ad[36]="Frozen Bait"Ad[28][Ad[29]]=Ad[30]Ad[30]=1 Ad[33]="Kelp Bait"Ad[29]="Baits"Ad[28]="addDropdown"Ad[28]=Ad[25][Ad[28]]Ad[32]="Basic Bait"Ad[31]={Ad[32],Ad[33],Ad[34],Ad[35],Ad[36]
                                                    Ad[37]
                                                    Ad[38]}Ad[32]=Z(946014,{q})Ad[28]=Ad[28](Ad[25],Ad[29],Ad[30],Ad[31],Ad[32])Ad[28]=S()Ad[30]="Fishing Status"Ad[29]=w(15294886,{q
                                                    o
                                                    Ad[26],m,Ad[27],d})Ad[31]="Waiting for rod..."n[Ad[28]]=Ad[29]Ad[29]="addLabel"Ad[29]=Ad[25][Ad[29]]Ad[29]=Ad[29](Ad[25],Ad[30],Ad[31])Ad[30]="FishingInfo"Ad[31]=S()U[Ad[30]]=Ad[29]Ad[34]=b(13563784,{q
                                                    Ad[28]})Ad[33]="task"Ad[30]=nil n[Ad[31]]=Ad[30]Ad[32]=U[Ad[33]]Ad[33]="spawn"Ad[30]=Ad[32][Ad[33]]Ad[33]=b(12778050,{o
                                                    q
                                                    Ad[31]
                                                    M})Ad[32]=Ad[30](Ad[33])Ad[32]="Open Fish Index"Ad[30]="addButton"Ad[33]=b(1007475,{o})Ad[38]={Ad[39]
                                                    Ad[40],Ad[41]}Ad[30]=Ad[25][Ad[30]]Ad[30]=Ad[30](Ad[25],Ad[32],Ad[33])Ad[40]="global"Ad[32]="Auto Fishing"Ad[33]=false Ad[30]="addToggle"Ad[41]=true Ad[35]="Weapon"Ad[30]=Ad[25][Ad[30]]Ad[30]=Ad[30](Ad[25],Ad[32],Ad[33],Ad[34])Ad[34]=b(11918019,{q})Ad[30]="addToggle"Ad[30]=Ad[25][Ad[30]]Ad[32]="Auto Craft Bait"Ad[36]="SelectWeapon"Ad[33]=false Ad[30]=Ad[30](Ad[25],Ad[32],Ad[33],Ad[34])Ad[32]="Home"Ad[33]="Main Farm"Ad[30]=Ad[14][Ad[32]]Ad[32]="addSection"Ad[32]=Ad[30][Ad[32]]Ad[32]=Ad[32](Ad[30])Ad[30]="addMenu"Ad[34]="CreateDropdown"Ad[37]="Melee"Ad[30]=Ad[32][Ad[30]]Ad[39]={[Ad[40]]=Ad[41]}Ad[30]=Ad[30](Ad[32],Ad[33])Ad[33]=U[Ad[34]]Ad[34]=Ad[33](Ad[30],Ad[35],Ad[36],Ad[37],Ad[38],Ad[39])Ad[36]="FarmMode"Ad[34]="CreateDropdown"Ad[41]="Nearest"Ad[35]="Farm Method"Ad[39]="Quest"Ad[37]="Quest"Ad[33]=U[Ad[34]]Ad[40]="No Quest"Ad[38]={Ad[39],Ad[40],Ad[41]}Ad[40]="global"Ad[41]=true Ad[39]={[Ad[40]]=Ad[41]}Ad[34]=Ad[33](Ad[30],Ad[35],Ad[36],Ad[37],Ad[38],Ad[39])Ad[35]=1000 Ad[38]=Z(10411843,{q})Ad[33]="addSlider"Ad[36]=5000 Ad[39]=true Ad[34]="Nearest (Distance)"Ad[33]=Ad[30][Ad[33]]Ad[37]=1500 Ad[33]=Ad[33](Ad[30],Ad[34],Ad[35],Ad[36],Ad[37],Ad[38])Ad[38]="global"Ad[41]=true Ad[40]="stop"Ad[35]="AutoFarm"Ad[36]=false Ad[34]="Auto Farm"Ad[37]={[Ad[38]]=Ad[39],[Ad[40]]=Ad[41]}Ad[39]=true Ad[38]="global"Ad[41]="Accept Quest for Bones/Cakes"Ad[33]=Ad[13](Ad[30],Ad[34],Ad[35],Ad[36],Ad[37])Ad[35]="AcceptQuests"Ad[36]=false Ad[34]="AutoFarmLevel"Ad[33]=A(10751542,{z
                                                    bd
                                                    V,h
                                                    q
                                                    o
                                                    dd,R
                                                    Ad[1]})Ad[40]="description"Ad[37]={[Ad[38]]=Ad[39]
                                                    [Ad[40]]=Ad[41]}Ad[38]="global"U[Ad[34]]=Ad[33]Ad[41]=true Ad[34]="Take Quest"Ad[39]=true Ad[33]=Ad[13](Ad[30],Ad[34],Ad[35],Ad[36],Ad[37])Ad[40]="stop"Ad[37]={[Ad[38]]=Ad[39],[Ad[40]]=Ad[41]}Ad[36]=false Ad[35]="AutoFarmBones"Ad[34]="Auto Bones"Ad[33]=Ad[13](Ad[30],Ad[34],Ad[35],Ad[36],Ad[37])Ad[34]="AutoBones"Ad[38]="global"Ad[33]=b(2552270,{q,bd,Ad[10]
                                                    Ad[1],dd})Ad[35]="Auto_Random_Surprise"U[Ad[34]]=Ad[33]Ad[36]=false Ad[39]=true Ad[34]="Auto Random Surprise"Ad[37]={[Ad[38]]=Ad[39]}Ad[38]="global"Ad[33]=Ad[13](Ad[30],Ad[34],Ad[35],Ad[36],Ad[37])Ad[39]=true Ad[37]={[Ad[38]]=Ad[39]}Ad[35]="AutoPray"Ad[34]="Auto Pray"Ad[41]=true Ad[36]=false Ad[39]=true Ad[33]=Ad[13](Ad[30],Ad[34],Ad[35],Ad[36],Ad[37])Ad[34]="spawn"Ad[33]=U[Ad[34]]Ad[38]="global"Ad[35]=A(15364771,{q})Ad[34]=Ad[33](Ad[35])Ad[35]="AutoTryLuck"Ad[34]="Auto Try Luck"Ad[36]=false Ad[37]={[Ad[38]]=Ad[39]}Ad[33]=Ad[13](Ad[30],Ad[34],Ad[35],Ad[36],Ad[37])Ad[40]="stop"Ad[34]="spawn"Ad[35]=A(2388675,{q})Ad[36]=false Ad[39]=true Ad[33]=U[Ad[34]]Ad[34]=Ad[33](Ad[35])Ad[35]="AutoFarmPrince"Ad[38]="global"Ad[37]={[Ad[38]]=Ad[39]
                                                    [Ad[40]]=Ad[41]}Ad[34]="Auto Katakuri"Ad[33]=Ad[13](Ad[30],Ad[34],Ad[35],Ad[36],Ad[37])Ad[34]="AutoFarmCakePrince"Ad[33]=W(2680927,{bd,Ad[10]
                                                    q,Td
                                                    o,dd
                                                    Ad[1]})Ad[40]="stop"Ad[38]="global"U[Ad[34]]=Ad[33]Ad[35]="IgnoreCakePrince"Ad[34]="Ignore Katakuri"Ad[39]=true Ad[36]=false Ad[41]=true Ad[37]={[Ad[38]]=Ad[39]}Ad[38]="global"Ad[33]=Ad[13](Ad[30],Ad[34],Ad[35],Ad[36],Ad[37])Ad[35]="AutoDoughKing"Ad[34]="Auto Dough King"Ad[36]=false Ad[39]=true Ad[37]={[Ad[38]]=Ad[39]
                                                    [Ad[40]]=Ad[41]}Ad[33]=Ad[13](Ad[30],Ad[34],Ad[35],Ad[36],Ad[37])Ad[33]={}Ad[34]=n[u]P=Ad[34]and 7345228 or 8036524
                                                end
                                            else
                                                m="Handle"E=n[B[2]]d=E[m]E="FindFirstChild"m="ESPquantumONYX"E=d[E]P=11673700 E=E(d,m)X=E
                                            end
                                        elseif P<9797710 then
                                                if P<9795920 then
                                                    X="pcall"P=U[X]r=b(9969841,{B[1]})X=P(r)P=832488
                                                else
                                                    o,v=H(O,o)P=o and 14294608 or 10085931
                                                end
                                            else
                                                P=r and 11959983 or 15192124
                                            end
end
                                    end
                                elseif P<9818363 then
                                        if P<9813056 then
                                            if P<9804442 then
                                                if P<9803516 then
                                                    X={}P=U["4w8aUgVK0dxHn"]
                                                else
                                                    P=h P=13131527 o=i
                                                end
                                            elseif P<9812544 then
                                                    P=13991489 G=nil N=nil
                                                else
                                                    X="ipairs"P=U[X]G=n[B[2]]H="GetChildren"H=G[H]Q={H(G)}G={P(I(Q))}N=G[3]m=G[2]P=3524651 X=G[1]G=X
                                                end
end
                                        elseif P<9815233 then
                                                if P<9815007 then
                                                    a=1 C=12 o=h L="sub"L=o[L]L=L(o,a,C)a="_BerryCFrame"K=L==a P=K and 6123281 or 3445293
                                                else
                                                    d=nil P=12360775
                                                end
                                            else
                                                P=U["6hvWUDvTXpWH1x"]O="Count"X=H[O]X={X}
                                            end
end
                                    elseif P<9824162 then
                                            if P<9822270 then
                                                if P<9820760 then
                                                    N=n[B[3]]m=not N X=m P=m and 4559729 or 4965305
                                                else
                                                    G=1000 P="WaitForChild"m="Vector3"X="WaterBase-Plane"P=r[P]d=9000000000.0 P=P(r,X,d)X="Size"E=U[m]m="new"N=80 r=nil d=E[m]m=1000 E=d(m,N,G)P[X]=E X={}P=U["Qxozv2O36N1Iu"]
                                                end
                                            else
                                                P=o P=O and 11170247 or 16057802
                                            end
                                        elseif P<9840795 then
                                                if P<9828390 then
                                                    P=i O=v P=12357045
                                                else
                                                    P=12330983 O=nil o=nil
                                                end
                                            else
                                                r=b(9385569,{})X="pcall"P=U[X]X=P(r)P=14784535
                                            end
end
                                    end
end
                            end
end
                    elseif P<10127429 then
                            if P<10007324 then
                                if P<9945545 then
                                    if P<9873027 then
                                        if P<9861085 then
                                            if P<9855504 then
                                                if P<9851189 then
                                                    r=A(4133162,{B[1]
                                                    B[2]})X="pcall"P=U[X]X=P(r)P=1928616
                                                else
                                                    Q="Decal"P="IsA"P=G[P]P=P(G,Q)P=P and 4123927 or 7295411
                                                end
                                            elseif P<9857516 then
                                                    X="tostring"P=U[X]r=k[1]X=P(r)d="(%d%d%d)"P="reverse"P=X[P]E="%1,"P=P(X)X="gsub"X=P[X]X=X(P,d,E)m="gsub"P="reverse"d="^,"P=X[P]P=P(X)E=""m=P[m]X={m(P,d,E)}X={I(X)}P=U["OdDKsYuLLjvd"]
                                                else
                                                    g=12 o=O h=1 i="sub"i=o[i]i=i(o,h,g)h="_BerryCFrame"P=i==h P=P and 13434295 or 506453
                                                end
end
                                        elseif P<9870937 then
                                                if P<9867321 then
                                                    G=H P=O P=H and 5205525 or 7599108
                                                else
                                                    N=S()m=k[4]r=k[1]d=k[2]E=S()n[E]=k[3]n[N]=k[5]G=n[N]X=G P=G and 2988333 or 11092682
                                                end
                                            else
                                                X="CheckTool"P=U[X]r="Red Key"X=P(r)P=X and 13368266 or 8758627
                                            end
end
                                    elseif P<9908925 then
                                            if P<9896732 then
                                                if P<9877145 then
                                                    P=o P=8601156 Q=O
                                                else
                                                    L="Name"H=v g="CheckTool"h=U[g]K=i[L]g=h(K)P=g and 15295196 or 7472297
                                                end
                                            elseif P<9902794 then
                                                    E="Bones"P=n[B[3]]d=r[E]X=P(d)d=X P=d and 4219834 or 14622710
                                                else
                                                    X="isnetworkowner"P=U[X]P=P and 6009260 or 5753954 r=k[1]
                                                end
end
                                        elseif P<9927853 then
                                                if P<9925953 then
                                                    K=nil P=1967443
                                                else
                                                    P=nil X={P}P=U["AwmNBrV6ufKh"]
                                                end
                                            else
                                                X="FireInvoke"P=U[X]d="StartQuest"m=n[B[1]]N=m()m=2 E=N[m]N=n[B[1]]G=N()N=3 m=G[N]X=P(d,E,m)X=n[B[2]]d="QuestDebounce"P=X[d]P=P and 12575303 or 8268133
                                            end
end
                                    end
                                elseif P<9970911 then
                                        if P<9960612 then
                                            if P<9955177 then
                                                if P<9951229 then
                                                    d="Character"r=n[B[1]]X=r[d]r="Head"P=X[r]r=S()n[r]=P P=n[r]d="ESPquantumONYX"X="FindFirstChild"X=P[X]X=X(P,d)d=X X=n[B[3]]E="ESPPlayer"P=X[E]P=P and 15388037 or 4804636
                                                else
                                                    X=m P=N P=m and 9477891 or 3455887
                                                end
                                            elseif P<9959259 then
                                                    P=G P=X and 16564319 or 14736518
                                                else
                                                    N=n[B[1]]G="PlayerGui"P=8079975 m=N[G]N="Main"E=m[N]m="FindFirstChild"m=E[m]N="Quest"m=m(E,N)E="Visible"d=m[E]r=not d X=r
                                                end
end
                                        elseif P<9969313 then
                                                if P<9966961 then
                                                    N="pairs"P=U[N]H={P(m)}P=8543002 Q=H[3]G=H[2]N=H[1]
                                                else
                                                    v="HumanoidRootPart"P=1809117 o=O[v]X=o
                                                end
                                            else
                                                X=n[B[1]]r="AutoRengoku"P=X[r]P=P and 12903069 or 3035366
                                            end
end
                                    elseif P<9986812 then
                                            if P<9983742 then
                                                if P<9976017 then
                                                    X=n[B[1]]r="AutoRaid"P=X[r]P=P and 13247358 or 12232577
                                                else
                                                    P=4984901
                                                end
                                            else
                                                d=X P=not d P=P and 617530 or 13222141
                                            end
                                        elseif P<9992844 then
                                                if P<9989110 then
                                                    P=13282349
                                                else
                                                    E,G=m(d,E)P=E and 2370611 or 9290547
                                                end
                                            else
                                                P=14521995 v="string"O=U[v]v="format"H=O[v]v="Fruits Found: %d\nPosition: %.2f Studs Away"O=H(v,r,d)G=O
                                            end
end
                                    end
end
                            elseif P<10071513 then
                                    if P<10048807 then
                                        if P<10025241 then
                                            if P<10015284 then
                                                if P<10009735 then
                                                    r=n[B[1]]d="Character"X=r[d]r="Humanoid"P=X[r]d=n[B[2]]E="WalkSpeed"r=d[E]X="WalkSpeed"P[X]=r P=U["wxPrX6Sfu0r6K3"]X={}
                                                else
                                                    X="IsA"P=n[B[1]]r="Sparkles"X=P[X]X=X(P,r)P=X and 4431085 or 10744172
                                                end
                                            elseif P<10020202 then
                                                    X={}E=nil P=U["ifBBt49osnc2H0"]r=nil
                                                else
                                                    P=4233372
                                                end
end
                                        elseif P<10040065 then
                                                if P<10030983 then
                                                    r=nil X={}P=U["ee9RI5LzGOfyz"]
                                                else
                                                    i="Vector3"h=178 H=n[B[3]]g=6033 v=U[i]i="new"o=v[i]i=-8800.0 v={o(i,h,g)}O="DistanceFromCharacter"O=H[O]O=O(H,I(v))H=10 Q=O>H P=Q and 6394450 or 9318584
                                                end
                                            else
                                                d=n[B[1]]E="Character"r=d[E]X=r P=r and 2534237 or 1865212
                                            end
end
                                    elseif P<10057659 then
                                            if P<10053100 then
                                                if P<10051644 then
                                                    P=Q and 6176927 or 3514013
                                                else
                                                    P=n[B[1]]X="AutoAttack"r=k[1]d=r r=nil P[X]=d P=U["LA9N8Z6uiQWd"]X={}
                                                end
                                            else
                                                m=4 P=2790398 E=d==m X=E
                                            end
                                        elseif P<10067705 then
                                                if P<10064982 then
                                                    X=n[B[3]]N="Orbitus"G="Jeremy"m="Diamond"E={m
                                                    N
                                                    G}d=X(E)P=d and 15787812 or 2875860
                                                else
                                                    P=10669978
                                                end
                                            else
                                                m="FindFirstChild"m=E[m]m=m(E,r)P=6285266 X=m
                                            end
end
                                    end
                                elseif P<10104936 then
                                        if P<10090876 then
                                            if P<10085199 then
                                                if P<10074778 then
                                                    P=d P=not X P=P and 10107862 or 14282427
                                                else
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 813105 or 7950744
                                                end
                                            elseif P<10089287 then
                                                    P=6864828
                                                else
                                                    N="Legendary"d="Common"Q="Mythical"X="Common - Mythical"G="Mythical"H="Mythical"m="Rare"E="Uncommon"o="Mythical"r={d
                                                    E,m,N,G}G="Legendary"d="Uncommon - Mythical"N="Rare"m="Uncommon"E={m,N,G
                                                    Q}Q="Legendary"m="Rare - Mythical"G="Rare"O="Mythical"N={G
                                                    Q
                                                    H}H="Legendary"G="Legendary - Mythical"Q={H,O}H="Mythical"O={o}P={[X]=r,[d]=E,[m]=N,[G]=Q
                                                    [H]=O}r=P E=n[B[1]]d=r[E]X=d P=d and 10704137 or 6069315
                                                end
end
                                        elseif P<10099965 then
                                                if P<10091834 then
                                                    E="BartiloQuestProgress"d="FireInvoke"X=U[d]m="Bartilo"d=X(E,m)X=2 P=d==X P=P and 4758157 or 6427840
                                                else
                                                    G="NPCPos"d=n[B[8]]v="NPCPos"P=13079848 g="Character"N=U[G]G=N()o=U[v]v=o()o="Position"O=v[o]h=n[B[7]]i=h[g]h="HumanoidRootPart"v=i[h]i="Position"o=v[i]H=O-o O="Unit"Q=H[O]H=5 N=Q*H m=G-N E=d(m)
                                                end
                                            else
                                                r=.5 X="wait"P=U[X]X=P(r)P=X and 7108793 or 12871115
                                            end
end
                                    elseif P<10120046 then
                                            if P<10112450 then
                                                if P<10106938 then
                                                    o=E P=13033299
                                                else
                                                    P=U["LLVKsoePMdI0"]X={}
                                                end
                                            else
                                                O=n[B[3]]o=O(d)P=o and 6931416 or 5938285
                                            end
                                        elseif P<10126558 then
                                                if P<10126310 then
                                                    P=nil X={P}P=U["ppOU3xMg6hzj"]
                                                else
                                                    C=1 P=n[Q]y=6 a=P(C,y)y="l2"P="l2"U[P]=a C=U[y]y=2 P=C>y P=P and 8179179 or 12784318
                                                end
                                            else
                                                P=n[B[3]]X=P(r)P=3864437
                                            end
end
                                    end
end
                            end
                        elseif P<10244540 then
                                if P<10187557 then
                                    if P<10167182 then
                                        if P<10158627 then
                                            if P<10140036 then
                                                if P<10130486 then
                                                    Ad[55]="PlayerScripts"Ad[54]=n[o]P=13012765 Ad[53]=Ad[54][Ad[55]]Ad[54]="ChildAdded"Ad[52]=Ad[53][Ad[54]]Ad[53]="Wait"Ad[53]=Ad[52][Ad[53]]Ad[53]=Ad[53](Ad[52])Ad[53]="LocalScript"Ad[52]="FindFirstChildOfClass"Ad[52]=Ad[51][Ad[52]]Ad[52]=Ad[52](Ad[51],Ad[53])Ad[49]=Ad[52]
                                                else
                                                    P=true X={P}P=U["S3PLHKg7zghKP"]
                                                end
                                            elseif P<10152143 then
                                                    P=12589629
                                                else
                                                    L="^(.-)%-"K="Name"h=P g=v[K]K="match"K=g[K]K=K(g,L)P=K and 12698936 or 10848589 i=K
                                                end
end
                                        elseif P<10164761 then
                                                if P<10162364 then
                                                    E,G=m(d,E)P=E and 15315890 or 7257219
                                                else
                                                    E,G=m(d,E)P=E and 5808136 or 2858744
                                                end
                                            else
                                                E="CFrame"m=15069 P=n[B[1]]d=U[E]E="new"r=d[E]E=29552 N=-86 d={r(E,m,N)}X=P(I(d))P=6077508
                                            end
end
                                    elseif P<10175654 then
                                            if P<10175328 then
                                                if P<10169340 then
                                                    m,G=d(E,m)P=m and 4572643 or 14887354
                                                else
                                                    m=nil N=nil P=11293182
                                                end
                                            else
                                                bd=65 P=Yd Yd=S()Td=3 n[Yd]=md md=y(Td,bd)bd=P Td="n"U[Td]=md Ad[3]="n"Ad[2]=U[Ad[3]]Ad[3]=3 Ad[1]=Ad[2]<Ad[3]Td=Ad[1]P=Ad[1]and 4490673 or 4240980
                                            end
                                        elseif P<10184858 then
                                                if P<10177520 then
                                                    P=4889929
                                                else
                                                    P=4864031
                                                end
                                            else
                                                Pd=n[d]X=Pd P=Pd and 15622426 or 6770601
                                            end
end
                                    end
                                elseif P<10223867 then
                                        if P<10205721 then
                                            if P<10195785 then
                                                if P<10188069 then
                                                    X="Melee"P=r(X)P=10778760
                                                else
                                                    P=n[B[3]]X={P(r)}X={I(X)}P=U["TXSukEuULoPm5x"]
                                                end
                                            elseif P<10200810 then
                                                    P=7752608 Xd=nil rd=nil
                                                else
                                                    H="Name"m=E Q="string"G=U[Q]Q="find"X=G[Q]Q=N[H]H="Fruit"G=X(Q,H)P=G and 15799105 or 14962184
                                                end
end
                                        elseif P<10209838 then
                                                if P<10208814 then
                                                    P=n[B[5]]X={P(r)}P=U["dQQC530cMYTCu"]X={I(X)}
                                                else
                                                    G=l(G)P=4794424
                                                end
                                            else
                                                G="EquipWeapon"N=U[G]O="CFrame"P=7122814 G=N()G="AutoHaki"i="HumanoidRootPart"g=0 N=U[G]G=N()N=n[B[4]]H=U[O]O="new"Q=H[O]v=d[i]i="Position"o=v[i]h="Vector3"i=U[h]h="new"v=i[h]h=0 i=v(h,m,g)O=o+i H=Q(O)Q=true G=N(H,Q)
                                            end
end
                                    elseif P<10226945 then
                                            if P<10226222 then
                                                if P<10224831 then
                                                    P=6841849
                                                else
                                                    m=nil N=nil P=12477683
                                                end
                                            else
                                                X="pcall"r=p(12379757,{B[1]})P=U[X]X=P(r)P=6173821
                                            end
                                        elseif P<10244086 then
                                                if P<10230290 then
                                                    P=U["rmP0rVs5Hl4ED"]X={}
                                                else
                                                    r="AutoStoreFruit"X=n[B[1]]P=X[r]P=P and 4172186 or 922963
                                                end
                                            else
                                                G,O=Q(N,G)P=G and 8602071 or 9961289
                                            end
end
                                    end
end
                            elseif P<10348062 then
                                    if P<10294467 then
                                        if P<10286021 then
                                            if P<10266916 then
                                                if P<10256054 then
                                                    P=n[B[1]]E="CFrame"d=U[E]E="new"r=d[E]m=2283 N=-7326 E=3030 d={r(E,m,N)}X=P(I(d))P=1556153
                                                else
                                                    i=S()Q=o h="pcall"n[i]=Q Q=i i=S()n[i]=v v=i i=U[h]g=w(4810668,{B[6]
                                                    Q,v})v=l(v)Q=l(Q)h=i(g)P=12975153
                                                end
                                            elseif P<10271901 then
                                                    P=U["3pGYw3eIf0Wrnw"]X={}
                                                else
                                                    v=O E=v P=o d=P P=12715271
                                                end
end
                                        elseif P<10290306 then
                                                if P<10289017 then
                                                    P=n[B[1]]r="Head"X="FindFirstChild"X=P[X]X=X(P,r)r=X P=not r P=P and 16686421 or 11290878
                                                else
                                                    X={}P=U["PIJep5xhBKFWr"]
                                                end
                                            else
                                                P=n[B[1]]r={s(1,I(k))}X={P(I(r))}P=U["fBOV7j70ATy6K"]X={I(X)}
                                            end
end
                                    elseif P<10322449 then
                                            if P<10315897 then
                                                if P<10308447 then
                                                    P=U["Iqyhz0heGzp4"]X={}
                                                else
                                                    X={}P=U["tYQXBdRwKjCo5"]
                                                end
                                            else
                                                E,G=m(d,E)P=E and 2055317 or 14742330
                                            end
                                        elseif P<10341413 then
                                                if P<10335727 then
                                                    N=n[B[6]]G="GetChildren"G=N[G]G=G(N)N=1 Q=#G H=Q Q=1 O=Q Q=0 o=O<Q Q=N-O P=3211723
                                                else
                                                    X={}P=U["NAeP9RAnaMbjE"]
                                                end
                                            else
                                                r="Reset Stats"P=n[B[1]]d="Frags"X=P(r,d)P=U["FvglmidxTc2J0I"]X={}
                                            end
end
                                    end
                                elseif P<10365557 then
                                        if P<10361488 then
                                            if P<10351452 then
                                                if P<10350215 then
                                                    r=k[1]X="PosY"P=r r=nil U[X]=P P=U["JgRpNdFdUfcFT"]X={}
                                                else
                                                    G=N H=n[B[3]]X=H[Q]P=X and 4424242 or 765017
                                                end
                                            elseif P<10353078 then
                                                    N=nil P=13083033 m=nil
                                                else
                                                    X={}P=U["rznKgUF8BicXyF"]
                                                end
end
                                        elseif P<10364129 then
                                                if P<10362166 then
                                                    H="Name"Q=G[H]N=E H="rip_indra True Form"P=Q~=H P=P and 4334990 or 1633852
                                                else
                                                    O="Character"H=G[O]P=14553771 Q=H
                                                end
                                            else
                                                X=true P=U["5zJmYjplGCQE"]X={X}
                                            end
end
                                    elseif P<10387912 then
                                            if P<10384414 then
                                                if P<10377746 then
                                                    K=nil L=nil P=1125076
                                                else
                                                    P=n[B[1]]r=k[1]d=r X="AutoFindPrehistoricIsland"r=nil P[X]=d X={}P=U["wUUazHOcHuf2pe"]
                                                end
                                            else
                                                X="AutoCursedCaptain"P=U[X]X=P()P=10300596
                                            end
                                        elseif P<10399971 then
                                                if P<10396971 then
                                                    Q=.7 P="LocalTransparencyModifier"G[P]=Q P=1068380
                                                else
                                                    d="pairs"X=U[d]Q="GetChildren"N=n[B[6]]P=2137780 Q=N[Q]G={Q(N)}N={X(I(G))}d=N[1]E=N[2]m=N[3]
                                                end
                                            else
                                                P=X and 13382586 or 4215063
                                            end
end
                                    end
end
                            end
end
                    end
end
            elseif P<11485345 then
                    if P<10905165 then
                        if P<10659433 then
                            if P<10508918 then
                                if P<10453375 then
                                    if P<10431251 then
                                        if P<10415971 then
                                            if P<10411848 then
                                                if P<10411466 then
                                                    P=U["f5ckW8v2W7I0r"]X={}
                                                else
                                                    P=n[B[1]]r=k[1]X="checknearestdist"d=r P[X]=d X={}P=U["bgQXOv8YksBm9"]r=nil
                                                end
                                            elseif P<10414368 then
                                                    t=12 O=i y=1 L="sub"L=O[L]L=L(O,y,t)y="_BerryCFrame"g=L==y P=g and 4900091 or 10669978
                                                else
                                                    a=4 L=K==a P=L and 14862812 or 15021142
                                                end
end
                                        elseif P<10428159 then
                                                if P<10418784 then
                                                    X=d E=P P=d and 15608954 or 7991934
                                                else
                                                    G="CFrame"P=m[G]X={P}P=U["j9yuTKpFtfpO45"]
                                                end
                                            else
                                                r=nil P=1609008
                                            end
end
                                    elseif P<10441578 then
                                            if P<10437903 then
                                                if P<10435375 then
                                                    r="CollectAzure"X=n[B[1]]P=X[r]P=P and 5225628 or 1577686
                                                else
                                                    m=nil bd=nil Ad[1]=nil y=nil cd=nil V=nil O=nil Ed=nil t=nil v=l(v)sd=nil q=nil Ad[3]=l(Ad[3])o=l(o)dd=l(dd)d=nil Bd=l(Bd)E=l(E)Sd=nil g=nil Xd=nil N=nil N="game"G=nil h=l(h)u=nil R=nil Td=nil Ud=nil x=nil H=l(H)e=nil nd=nil K=nil i=nil Ad[2]=nil Q=nil rd=nil z=nil jd=nil M=nil D=nil Yd=l(Yd)ld=l(ld)kd=l(kd)m=U[N]N="IsLoaded"Id=l(Id)E=m[N]d=not E P=d and 4351768 or 12101461
                                                end
                                            elseif P<10438203 then
                                                    X="Bones"m="Demonic Soul"N="Posessed Mummy"d="Reborn Skeleton"E="Living Zombie"r={d,E,m
                                                    N}m="Head Baker"G="Cake Guard"N="Baking Staff"Q="Cookie Crafter"E={m,N
                                                    G
                                                    Q}d="Cakes"P={[X]=r,[d]=E}r=P H="getInventory"E="SwordMastery"d=n[B[2]]X=d[E]Q="FireInvoke"P=r[X]d=P P={}X="pairs"E=P P=U[X]G=U[Q]Q={G(H)}G={P(I(Q))}m=G[2]X=G[1]N=G[3]P=14984651 G=X
                                                else
                                                    P=nil X={P}P=U["PvXkwOAogfyW"]
                                                end
end
                                        elseif P<10449884 then
                                                if P<10442356 then
                                                    P=8394334
                                                else
                                                    P=5316616
                                                end
                                            else
                                                r="task"X=U[r]r="wait"P=X[r]r=.2 X=P(r)P=X and 4626845 or 6904194
                                            end
end
                                    end
                                elseif P<10474202 then
                                        if P<10467390 then
                                            if P<10463094 then
                                                if P<10454553 then
                                                    i=nil o=nil v=nil P=115136 g=nil h=nil
                                                else
                                                    X="FireInvoke"P=U[X]r="TravelDressrosa"X=P(r)P=U["d3SnSFWOR33X6N"]X={}
                                                end
                                            elseif P<10465922 then
                                                    H=m O=1 P="sub"o=16 X=H+O P=d[P]P=P(d,H,X)O=P X="tonumber"P=U[X]X=P(O,o)o=X P=not o P=P and 6245437 or 1707785
                                                else
                                                    P=11354355 E=2 d=r==E X=d
                                                end
end
                                        elseif P<10470004 then
                                                if P<10467767 then
                                                    X="pcall"r=b(12690295,{})P=U[X]X=P(r)P=4245399
                                                else
                                                    d,N=E(r,d)P=d and 13347737 or 7795783
                                                end
                                            else
                                                d="Water"X=n[B[2]]P=X[d]P=P and 1184611 or 9821172
                                            end
end
                                    elseif P<10478089 then
                                            if P<10475556 then
                                                if P<10474822 then
                                                    P=n[B[9]]d=n[B[10]]r[P]=d P=n[B[11]]d={P(r)}P=U["vZzOZ9pmLlgY"]X={I(d)}
                                                else
                                                    x=b(3389599,{B[2]})M="__debug"d=S()Q="__newindex"r=S()v="__gc"h="__mode"E={}C=b(3257402,{B[2]})n[r]=k[1]G=Z(13311033,{d,B[2]})o=false O="__metatable"R="__ipairs"i=Y(6644501,{B[2]})P=T(10290672,{r})a="__len"n[d]=P t=W(6270864,{B[2]})g="k"z=p(13408446,{B[2]})K="__call"P=n[B[1]]L=A(1549213,{B[2]})N="__index"H=w(14467914,{B[2]})y="__pairs"m={[N]=G
                                                    [Q]=H
                                                    [O]=o,[v]=i,[h]=g
                                                    [K]=L,[a]=C,[y]=t
                                                    [R]=x,[M]=z}X={P(E,m)}X={I(X)}P=U["gXYOjGCmsOBY"]
                                                end
                                            else
                                                d=2 X="FireInvoke"P=U[X]r="gravestoneEvent"X=P(r,d)P=4094120
                                            end
                                        elseif P<10490023 then
                                                if P<10482522 then
                                                    N=n[B[3]]G="Character"m=N[G]N="Humanoid"P=m[N]m="Sit"N=false P[m]=N N="task"m=U[N]N="wait"P=m[N]N=.2 m=P(N)P=758608
                                                else
                                                    P=g P=i and 4516025 or 3316669
                                                end
                                            else
                                                Q=P O="Model"H="IsA"N=E H=G[H]H=H(G,O)X=H P=H and 11568003 or 10627996
                                            end
end
                                    end
end
                            elseif P<10578801 then
                                    if P<10533987 then
                                        if P<10516130 then
                                            if P<10513515 then
                                                if P<10511525 then
                                                    G="GetChildren"X="ipairs"P=U[X]N="Bushes"m=U[N]G=m[G]N={G(m)}m={P(I(N))}E=m[3]d=m[2]P=10317705 X=m[1]m=X
                                                else
                                                    X=n[B[2]]d="Sword"P=X[d]P=P and 3552418 or 2487453
                                                end
                                            elseif P<10515130 then
                                                    G=73 Q=-3570 N="CFrame"P=12163281 X=n[B[2]]m=U[N]N="new"E=m[N]N=-2777 m={E(N,G,Q)}d=X(I(m))
                                                else
                                                    i="Name"v=H[i]o=v==d X=o P=5701354
                                                end
end
                                        elseif P<10525454 then
                                                if P<10521432 then
                                                    r="Darkbeard"P=n[B[1]]X=P(r)P=X and 1624925 or 7128803
                                                else
                                                    P=y P=C and 7271368 or 743256
                                                end
                                            else
                                                E,G=m(d,E)P=E and 16726229 or 808974
                                            end
end
                                    elseif P<10543067 then
                                            if P<10540476 then
                                                if P<10540182 then
                                                    X="FireInvoke"N="unpack"P=U[X]m=U[N]N={m(E)}X=P(I(N))P=14580106
                                                else
                                                    P=U["eb2oqX5S3NDcO"]X={}
                                                end
                                            else
                                                v="type"o=U[v]v=o(Q)o="string"O=v==o P=O and 3482656 or 3944931
                                            end
                                        elseif P<10565765 then
                                                if P<10556642 then
                                                    P=4286221
                                                else
                                                    P=6155837
                                                end
                                            else
                                                L=nil P=5676661 K=nil
                                            end
end
                                    end
                                elseif P<10609516 then
                                        if P<10602873 then
                                            if P<10590108 then
                                                if P<10587872 then
                                                    K="Rarity"v=P g=Q[K]L="Rarity"K=m[L]i=g==K o=i P=i and 16043640 or 2048270
                                                else
                                                    P=10199259 Sd=n[H]dd=Sd()
                                                end
                                            elseif P<10596850 then
                                                    r="error"E=0 P=U[r]d=n[B[8]]r=P(d,E)P=12164305
                                                else
                                                    Ad[15]=Ad[17]P=Ad[18]P=1115574
                                                end
end
                                        elseif P<10606692 then
                                                if P<10604197 then
                                                    P=X and 11189029 or 4317283
                                                else
                                                    i="FindFirstChild"v=P h="Part"i=N[i]i=i(N,h)P=i and 13768341 or 3352202 o=i
                                                end
                                            else
                                                P=8327343 L="PrimaryPart"K=G[L]L="Position"a="Vector3"g=K[L]L=U[a]a="new"y=-2988 C=314 K=L[a]a=-5556 L=K(a,C,y)h=g-L g="Magnitude"i=h[g]h=700 v=i<h O=v
                                            end
end
                                    elseif P<10641008 then
                                            if P<10628225 then
                                                if P<10616961 then
                                                    X={}P=U["DFcW8Y0R5WnJ"]
                                                else
                                                    P=Q P=X and 10846347 or 16147775
                                                end
                                            else
                                                P=15652602
                                            end
                                        elseif P<10645236 then
                                                if P<10644402 then
                                                    X={}P=U["qXjIPHERvBxpl"]
                                                else
                                                    Ad[88]=true Ad[80]=false Ad[79]="getfruitstore"Ad[87]=true Ad[77]=Z(4021597,{m,q})Ad[81]=w(286157,{q})U[Ad[79]]=Ad[77]Ad[79]="Auto Unstore Low Fruits"Ad[77]="addToggle"Ad[82]=false Ad[77]=Ad[72][Ad[77]]Ad[84]="global"Ad[77]=Ad[77](Ad[72],Ad[79],Ad[80],Ad[81])Ad[79]="getdungeonislands"Ad[77]=W(15230519,{d,o})Ad[90]="Spike Fruit"U[Ad[79]]=Ad[77]Ad[79]="AutoDungeonFull"Ad[77]=Y(7045835,{u
                                                    d,o,dd})Ad[81]="AutoDungeon"U[Ad[79]]=Ad[77]Ad[77]="addMenu"Ad[85]=true Ad[80]="Auto Complete Dungeon"Ad[77]=Ad[73][Ad[77]]Ad[101]="Creation Fruit"Ad[79]="Dungeons"Ad[77]=Ad[77](Ad[73],Ad[79])Ad[93]="Love Fruit"Ad[86]="stop"Ad[83]={[Ad[84]]=Ad[85],[Ad[86]]=Ad[87]}Ad[79]=Ad[13](Ad[77],Ad[80],Ad[81],Ad[82],Ad[83])Ad[82]="AutoLawRaid"Ad[80]="spawn"Ad[83]=false Ad[81]=A(11068697,{q})Ad[79]=U[Ad[80]]Ad[85]="global"Ad[80]=Ad[79](Ad[81])Ad[79]="addMenu"Ad[79]=Ad[73][Ad[79]]Ad[91]="Blade Fruit"Ad[87]="stop"Ad[80]="Law Raid"Ad[86]=true Ad[100]="Blizzard Fruit"Ad[81]="Start Law Raid Farm"Ad[79]=Ad[79](Ad[73],Ad[80])Ad[84]={[Ad[85]]=Ad[86],[Ad[87]]=Ad[88]}Ad[80]=Ad[13](Ad[79],Ad[81],Ad[82],Ad[83],Ad[84])Ad[81]="spawn"Ad[82]=b(13142070,{q})Ad[98]="Lightning Fruit"Ad[80]=U[Ad[81]]Ad[81]=Ad[80](Ad[82])Ad[81]="Raid"Ad[103]="Kitsune Fruit"Ad[102]="Leopard Fruit"Ad[80]=Ad[14][Ad[81]]Ad[81]="addSection"Ad[82]="Fruit Info"Ad[81]=Ad[80][Ad[81]]Ad[87]="Spring Fruit"Ad[81]=Ad[81](Ad[80])Ad[80]="addMenu"Ad[80]=Ad[81][Ad[80]]Ad[84]=w(10713553,{m})Ad[86]="Spin Fruit"Ad[80]=Ad[80](Ad[81],Ad[82])Ad[85]=W(9116924,{q})Ad[83]="Open Normal Shop"Ad[99]="Pain Fruit"Ad[82]="addButton"Ad[82]=Ad[80][Ad[82]]Ad[82]=Ad[82](Ad[80],Ad[83],Ad[84])Ad[83]="Open Advanced Shop"Ad[82]="addButton"Ad[84]=A(12564798,{m})Ad[82]=Ad[80][Ad[82]]Ad[82]=Ad[82](Ad[80],Ad[83],Ad[84])Ad[88]="Bomb Fruit"Ad[82]="addToggle"Ad[83]="Auto Roll Fruit"Ad[94]="Spider Fruit"Ad[92]="Dark Fruit"Ad[84]=false Ad[82]=Ad[80][Ad[82]]Ad[82]=Ad[82](Ad[80],Ad[83],Ad[84],Ad[85])Ad[85]="Rocket Fruit"Ad[89]="Smoke Fruit"Ad[84]=A(14036609,{q
                                                    o})Ad[83]="spawn"Ad[82]=U[Ad[83]]Ad[83]=Ad[82](Ad[84])Ad[83]="Common"Ad[84]={Ad[85],Ad[86],Ad[87],Ad[88],Ad[89]
                                                    Ad[90],Ad[91]}Ad[95]="Sound Fruit"Ad[97]="Portal Fruit"Ad[90]="Sand Fruit"Ad[87]="Flame Fruit"Ad[85]="Uncommon"Ad[91]="Diamond Fruit"Ad[88]="Eagle Fruit"Ad[89]="Ice Fruit"Ad[86]={Ad[87],Ad[88]
                                                    Ad[89]
                                                    Ad[90],Ad[91],Ad[92]}Ad[91]="Ghost Fruit"Ad[87]="Rare"Ad[96]="Phoenix Fruit"Ad[92]="Magma Fruit"Ad[89]="Light Fruit"Ad[90]="Rubber Fruit"Ad[88]={Ad[89]
                                                    Ad[90]
                                                    Ad[91],Ad[92]}Ad[91]="Quake Fruit"Ad[89]="Legendary"Ad[92]="Budha Fruit"Ad[90]={Ad[91],Ad[92],Ad[93],Ad[94]
                                                    Ad[95]
                                                    Ad[96]
                                                    Ad[97],Ad[98]
                                                    Ad[99],Ad[100],Ad[101]}Ad[94]="Mammoth Fruit"Ad[93]="Gravity Fruit"Ad[97]="Shadow Fruit"Ad[100]="Spirit Fruit"Ad[101]="Dragon Fruit"Ad[96]="Dough Fruit"Ad[95]="T-Rex Fruit"Ad[91]="Mythical"Ad[99]="Control Fruit"Ad[98]="Venom Fruit"Ad[92]={Ad[93],Ad[94],Ad[95],Ad[96],Ad[97],Ad[98],Ad[99],Ad[100],Ad[101]
                                                    Ad[102]
                                                    Ad[103]}Ad[82]={[Ad[83]]=Ad[84]
                                                    [Ad[85]]=Ad[86]
                                                    [Ad[87]]=Ad[88],[Ad[89]]=Ad[90]
                                                    [Ad[91]]=Ad[92]}Ad[86]="Rare - Mythical"Ad[84]="Common - Mythical"Ad[88]="Mythical"Ad[87]="Legendary - Mythical"Ad[83]=S()n[Ad[83]]=Ad[82]Ad[105]=-379.268 Ad[85]="Uncommon - Mythical"Ad[82]={Ad[84],Ad[85]
                                                    Ad[86],Ad[87]
                                                    Ad[88]}Ad[85]=S()Ad[84]="Common - Mythical"Ad[87]="Select Rarity"Ad[98]=14894.427 Ad[89]=Y(11014403,{Ad[85]})Ad[86]=S()n[Ad[85]]=Ad[84]Ad[84]={}Ad[88]="Common - Mythical"n[Ad[86]]=Ad[84]Ad[93]=true Ad[84]="addDropdown"Ad[84]=Ad[80][Ad[84]]Ad[84]=Ad[84](Ad[80],Ad[87],Ad[88],Ad[82],Ad[89])Ad[87]="CheckFruits"Ad[84]=W(10090406,{Ad[85],Ad[86],Ad[83]})U[Ad[87]]=Ad[84]Ad[104]=14889.427 Ad[84]="addToggle"Ad[84]=Ad[80][Ad[84]]Ad[89]=W(12867740,{q
                                                    Ad[86]
                                                    o})Ad[88]=false Ad[87]="Auto Store Fruit"Ad[101]=234.312 Ad[84]=Ad[84](Ad[80],Ad[87],Ad[88],Ad[89])Ad[84]="addLabel"Ad[84]=Ad[80][Ad[84]]Ad[87]="Fruit Spawn Status"Ad[92]="global"Ad[88]="Scanning for fruit..."Ad[84]=Ad[84](Ad[80],Ad[87],Ad[88])Ad[89]="task"Ad[87]=S()n[Ad[87]]=Ad[84]Ad[88]=U[Ad[89]]Ad[89]="spawn"Ad[84]=Ad[88][Ad[89]]Ad[89]=b(1539604,{o
                                                    d,Ad[87]})Ad[88]=Ad[84](Ad[89])Ad[94]="stop"Ad[90]=false Ad[84]=p(15947023,{d
                                                    o,dd})Ad[99]=-422.11 Ad[88]="AutoCollectFruit"U[Ad[88]]=Ad[84]Ad[88]="Teleport to Fruit"Ad[95]=true Ad[89]="Tweenfruit"Ad[91]={[Ad[92]]=Ad[93],[Ad[94]]=Ad[95]}Ad[100]=14918.075 Ad[84]=Ad[13](Ad[80],Ad[88],Ad[89],Ad[90],Ad[91])Ad[89]=b(8316022,{q})Ad[88]="spawn"Ad[84]=U[Ad[88]]Ad[90]=w(7017236,{q,d
                                                    M})Ad[88]=Ad[84](Ad[89])Ad[89]=false Ad[88]="Fruit Notification"Ad[84]="addToggle"Ad[84]=Ad[80][Ad[84]]Ad[84]=Ad[84](Ad[80],Ad[88],Ad[89],Ad[90])Ad[89]=W(1022154,{g
                                                    m,dd})Ad[84]="addButton"Ad[88]="Teleport To Advanced Fruit Dealer"Ad[93]="CFrame"Ad[103]=454.596 Ad[84]=Ad[80][Ad[84]]Ad[84]=Ad[84](Ad[80],Ad[88],Ad[89])Ad[88]="Trial"Ad[89]="Trials"Ad[84]=Ad[14][Ad[88]]Ad[88]="addSection"Ad[95]=-210.587 Ad[94]=14889.427 Ad[88]=Ad[84][Ad[88]]Ad[90]="Fishman"Ad[88]=Ad[88](Ad[84])Ad[97]=-206.95 Ad[84]="addMenu"Ad[84]=Ad[88][Ad[84]]Ad[84]=Ad[84](Ad[88],Ad[89])Ad[92]=U[Ad[93]]Ad[93]="new"Ad[91]=Ad[92][Ad[93]]Ad[93]=28224.057 Ad[92]=Ad[91](Ad[93],Ad[94],Ad[95])Ad[91]="Human"Ad[96]=14889.427 Ad[95]="CFrame"Ad[94]=U[Ad[95]]Ad[95]="new"Ad[93]=Ad[94][Ad[95]]Ad[95]=29237.295 Ad[94]=Ad[93](Ad[95],Ad[96],Ad[97])Ad[97]="CFrame"Ad[96]=U[Ad[97]]Ad[97]="new"Ad[102]=14889.128 Ad[93]="Cyborg"Ad[95]=Ad[96][Ad[97]]Ad[97]=28492.414 Ad[96]=Ad[95](Ad[97],Ad[98],Ad[99])Ad[99]="CFrame"Ad[98]=U[Ad[99]]Ad[95]="Skypiea"Ad[99]="new"Ad[97]=Ad[98][Ad[99]]Ad[99]=28967.408 Ad[98]=Ad[97](Ad[99],Ad[100],Ad[101])Ad[101]="CFrame"Ad[97]="Ghoul"Ad[100]=U[Ad[101]]Ad[101]="new"Ad[99]=Ad[100][Ad[101]]Ad[101]=28672.721 Ad[100]=Ad[99](Ad[101],Ad[102],Ad[103])Ad[103]="CFrame"Ad[99]="Mink"Ad[102]=U[Ad[103]]Ad[103]="new"Ad[101]=Ad[102][Ad[103]]Ad[103]=29020.66 Ad[102]=Ad[101](Ad[103],Ad[104],Ad[105])Ad[89]={[Ad[90]]=Ad[92]
                                                    [Ad[91]]=Ad[94],[Ad[93]]=Ad[96]
                                                    [Ad[95]]=Ad[98],[Ad[97]]=Ad[100]
                                                    [Ad[99]]=Ad[102]}Ad[97]="description"Ad[91]="Go to Race Door"Ad[98]="instantly activates the race the moment 2+ accounts are ready there"Ad[93]=false Ad[90]=S()Ad[92]=A(2083513,{dd,Ad[90]
                                                    o})Ad[95]="global"n[Ad[90]]=Ad[89]Ad[100]=true Ad[99]="stop"Ad[89]="addButton"Ad[89]=Ad[84][Ad[89]]Ad[89]=Ad[89](Ad[84],Ad[91],Ad[92])Ad[91]="RaceActivedoors"Ad[89]=p(3106181,{E
                                                    o,g})Ad[96]=true Ad[92]="AutoActiveRacenear"Ad[102]=true U[Ad[91]]=Ad[89]Ad[91]="Auto (Activate) Race"Ad[94]={[Ad[95]]=Ad[96]
                                                    [Ad[97]]=Ad[98],[Ad[99]]=Ad[100]}Ad[89]=Ad[13](Ad[84],Ad[91],Ad[92],Ad[93],Ad[94])Ad[95]="global"Ad[93]=false Ad[98]=true Ad[91]="spawn"Ad[89]=U[Ad[91]]Ad[92]=W(9276464,{q,m})Ad[97]="stop"Ad[91]=Ad[89](Ad[92])Ad[92]="AutoFinishTrial"Ad[101]="stop"Ad[96]=true Ad[91]="Auto Complete Trials"Ad[94]={[Ad[95]]=Ad[96],[Ad[97]]=Ad[98]}Ad[89]=Ad[13](Ad[84],Ad[91],Ad[92],Ad[93],Ad[94])Ad[92]=p(9608559,{q,o
                                                    d
                                                    dd,bd
                                                    Ad[1]})Ad[91]="spawn"Ad[89]=U[Ad[91]]Ad[93]=b(4484170,{q})Ad[91]=Ad[89](Ad[92])Ad[89]="addToggle"Ad[95]="Cakes"Ad[92]=false Ad[96]=true Ad[91]="Kill Players after Trial"Ad[89]=Ad[84][Ad[89]]Ad[94]="Bones"Ad[89]=Ad[89](Ad[84],Ad[91],Ad[92],Ad[93])Ad[91]="spawn"Ad[89]=U[Ad[91]]Ad[92]=w(14137895,{q
                                                    d
                                                    o,dd})Ad[91]=Ad[89](Ad[92])Ad[92]=W(2627208,{o})Ad[93]={Ad[94]
                                                    Ad[95]}Ad[89]="addButton"Ad[91]="Reset Character"Ad[89]=Ad[84][Ad[89]]Ad[95]="global"Ad[99]="global"Ad[89]=Ad[89](Ad[84],Ad[91],Ad[92])Ad[89]="addDropdown"Ad[89]=Ad[84][Ad[89]]Ad[92]="Bones"Ad[91]="Train Method"Ad[94]=Y(601064,{q})Ad[89]=Ad[89](Ad[84],Ad[91],Ad[92],Ad[93],Ad[94])Ad[93]=false Ad[92]="AutoTrain"Ad[97]="stop"Ad[91]="Start Auto Train"Ad[98]=true Ad[94]={[Ad[95]]=Ad[96]
                                                    [Ad[97]]=Ad[98]}Ad[89]=Ad[13](Ad[84],Ad[91],Ad[92],Ad[93],Ad[94])Ad[95]="global"Ad[98]=Y(14307934,{q
                                                    d
                                                    dd})Ad[96]=true Ad[97]="callback"Ad[91]="spawn"Ad[89]=U[Ad[91]]Ad[92]=Y(15616073,{q})Ad[94]={[Ad[95]]=Ad[96]
                                                    [Ad[97]]=Ad[98]}Ad[91]=Ad[89](Ad[92])Ad[92]="TweenMGear"Ad[93]=false Ad[91]="Teleport To Blue Gear"Ad[89]=Ad[13](Ad[84],Ad[91],Ad[92],Ad[93],Ad[94])Ad[91]="Area"Ad[92]="TempleTimeStash"Ad[89]="addMenu"Ad[89]=Ad[88][Ad[89]]Ad[89]=Ad[89](Ad[88],Ad[91])Ad[93]=w(7145727,{dd})Ad[91]=p(2194391,{m,d,o})U[Ad[92]]=Ad[91]Ad[92]="Teleport to Top of Great Tree"Ad[91]="addButton"Ad[91]=Ad[89][Ad[91]]Ad[91]=Ad[91](Ad[89],Ad[92],Ad[93])Ad[92]="Teleport to Temple of Time"Ad[91]="addButton"Ad[93]=A(4968851,{dd})Ad[91]=Ad[89][Ad[91]]Ad[94]="Auto Upgrade Gear"Ad[91]=Ad[91](Ad[89],Ad[92],Ad[93])Ad[92]="Teleport to Acient One"Ad[93]=W(7941095,{dd})Ad[91]="addButton"Ad[91]=Ad[89][Ad[91]]Ad[91]=Ad[91](Ad[89],Ad[92],Ad[93])Ad[92]="Teleport to Lever Pull"Ad[91]="addButton"Ad[100]=true Ad[95]=false Ad[91]=Ad[89][Ad[91]]Ad[93]=W(14722623,{dd})Ad[91]=Ad[91](Ad[89],Ad[92],Ad[93])Ad[91]="addButton"Ad[92]="Teleport to Safe Zone"Ad[93]=p(4286917,{dd})Ad[91]=Ad[89][Ad[91]]Ad[91]=Ad[91](Ad[89],Ad[92],Ad[93])Ad[92]="Teleport back to Pvp Zone"Ad[93]=W(1979433,{dd})Ad[91]="addButton"Ad[91]=Ad[89][Ad[91]]Ad[91]=Ad[91](Ad[89],Ad[92],Ad[93])Ad[92]="Teleport to Clock"Ad[91]="addButton"Ad[93]=Y(345856,{dd})Ad[91]=Ad[89][Ad[91]]Ad[91]=Ad[91](Ad[89],Ad[92],Ad[93])Ad[92]="Trial"Ad[91]=Ad[14][Ad[92]]Ad[93]="Misc Trial"Ad[98]={[Ad[99]]=Ad[100]
                                                    [Ad[101]]=Ad[102]}Ad[92]="addSection"Ad[103]=true Ad[92]=Ad[91][Ad[92]]Ad[92]=Ad[92](Ad[91])Ad[91]="addMenu"Ad[91]=Ad[92][Ad[91]]Ad[91]=Ad[91](Ad[92],Ad[93])Ad[96]=Z(8046468,{q})Ad[93]="addToggle"Ad[93]=Ad[91][Ad[93]]Ad[93]=Ad[93](Ad[91],Ad[94],Ad[95],Ad[96])Ad[96]=A(2966493,{q})Ad[94]="Auto Activate V3"Ad[95]=false Ad[93]="addToggle"Ad[93]=Ad[91][Ad[93]]Ad[93]=Ad[93](Ad[91],Ad[94],Ad[95],Ad[96])Ad[99]="global"Ad[95]="task"Ad[94]=U[Ad[95]]Ad[95]="spawn"Ad[93]=Ad[94][Ad[95]]Ad[95]=w(14801010,{q
                                                    m})Ad[96]=b(12261286,{q
                                                    o})Ad[94]=Ad[93](Ad[95])Ad[95]=false Ad[97]=false Ad[94]="Auto Activate V4"Ad[93]="addToggle"Ad[93]=Ad[91][Ad[93]]Ad[93]=Ad[93](Ad[91],Ad[94],Ad[95],Ad[96])Ad[94]="Upgrades"Ad[93]="addMenu"Ad[95]="Auto Race Evolve V2"Ad[96]="AutoEvoRaceV2"Ad[93]=Ad[92][Ad[93]]Ad[102]=true Ad[93]=Ad[93](Ad[92],Ad[94])Ad[100]=true Ad[94]=Ad[13](Ad[93],Ad[95],Ad[96],Ad[97],Ad[98])Ad[95]="spawn"Ad[101]="stop"Ad[94]=U[Ad[95]]Ad[96]=A(15585481,{q})Ad[95]=Ad[94](Ad[96])Ad[97]=false Ad[98]={[Ad[99]]=Ad[100]
                                                    [Ad[101]]=Ad[102]}Ad[101]=true Ad[96]="AutoRaceEvolveV3"Ad[95]="Auto Race Evolve V3"Ad[94]=Ad[13](Ad[93],Ad[95],Ad[96],Ad[97],Ad[98])Ad[98]=false Ad[95]="spawn"Ad[102]="stop"Ad[96]=Y(15437345,{q})Ad[94]=U[Ad[95]]Ad[95]=Ad[94](Ad[96])Ad[97]="AutoGetGhoulRace"Ad[94]="addMenu"Ad[94]=Ad[92][Ad[94]]Ad[96]="Auto Get Ghoul Race [Fully]"Ad[95]="Race Obtainment"Ad[100]="global"Ad[94]=Ad[94](Ad[92],Ad[95])Ad[99]={[Ad[100]]=Ad[101]
                                                    [Ad[102]]=Ad[103]}Ad[101]=true Ad[103]=true Ad[95]=Ad[13](Ad[94],Ad[96],Ad[97],Ad[98],Ad[99])Ad[96]="spawn"Ad[95]=U[Ad[96]]Ad[97]=b(13959849,{q})Ad[102]="stop"Ad[98]=false Ad[96]=Ad[95](Ad[97])Ad[100]="global"Ad[97]="AutoGetCyborgRace"Ad[96]="Auto Get Cyborg Race [Fully]"Ad[99]={[Ad[100]]=Ad[101]
                                                    [Ad[102]]=Ad[103]}Ad[95]=Ad[13](Ad[94],Ad[96],Ad[97],Ad[98],Ad[99])Ad[99]=Y(5145829,{})Ad[98]="Teleport to World 1"Ad[96]="spawn"Ad[97]=p(9345362,{q})Ad[95]=U[Ad[96]]Ad[96]=Ad[95](Ad[97])Ad[96]="Travel"Ad[95]=Ad[14][Ad[96]]Ad[96]="addSection"Ad[96]=Ad[95][Ad[96]]Ad[96]=Ad[96](Ad[95])Ad[95]="addMenu"Ad[97]="World Travel"Ad[95]=Ad[96][Ad[95]]Ad[95]=Ad[95](Ad[96],Ad[97])Ad[97]="addButton"Ad[97]=Ad[95][Ad[97]]Ad[97]=Ad[97](Ad[95],Ad[98],Ad[99])Ad[97]="addButton"Ad[98]="Teleport to World 2"Ad[97]=Ad[95][Ad[97]]Ad[99]=w(10454657,{})Ad[97]=Ad[97](Ad[95],Ad[98],Ad[99])Ad[99]=p(1387753,{})Ad[97]="addButton"Ad[97]=Ad[95][Ad[97]]Ad[98]="Teleport to World 3"Ad[97]=Ad[97](Ad[95],Ad[98],Ad[99])Ad[98]="Island Travel"Ad[99]=S()Ad[97]="addMenu"Ad[97]=Ad[96][Ad[97]]Ad[97]=Ad[97](Ad[96],Ad[98])Ad[98]=nil n[Ad[99]]=Ad[98]Ad[98]=n[u]P=Ad[98]and 7729301 or 13365882
                                                end
                                            else
                                                X="Pipes"P=r[X]X="Swamp"d=P P=r[X]E=P X="Trophies"P=r[X]m=P X="Gravestones"P=r[X]X="Ghost"N=P P=r[X]G=P P=d and 11754266 or 13806937
                                            end
end
                                    end
end
                            end
                        elseif P<10770857 then
                                if P<10707311 then
                                    if P<10689939 then
                                        if P<10676795 then
                                            if P<10673464 then
                                                if P<10669312 then
                                                    P=U["BYZMMbwQRpb1"]X={}
                                                else
                                                    P=2320451 O=nil h=nil
                                                end
                                            elseif P<10676713 then
                                                    P=n[B[6]]X={P(d)}P=U["A2QmrYd76pkYH"]X={I(X)}
                                                else
                                                    K="table"P=8632791 L="\n"g=U[K]K="concat"h=g[K]K=n[B[3]]g=h(K,L)v=g
                                                end
end
                                        elseif P<10685876 then
                                                if P<10678029 then
                                                    P=X and 14925244 or 6760429
                                                else
                                                    E="Character"d=n[B[1]]X=d[E]d="Humanoid"P=X[d]X="Sit"d=false P[X]=d P=8827042
                                                end
                                            else
                                                d="FireInvoke"E="GetUnlockables"r=U[d]d=r(E)r="FlamingoAccess"X=d[r]r=nil P=X==r P=P and 13645075 or 4413815
                                            end
end
                                    elseif P<10700689 then
                                            if P<10693461 then
                                                if P<10692215 then
                                                    r="task"X=U[r]r="wait"P=X[r]r=.1 X=P(r)P=X and 6466142 or 8816704
                                                else
                                                    P=nil X={P}P=U["LKXw48nXGZ54DU"]
                                                end
                                            elseif P<10696642 then
                                                    a=1 L=i>=a g=L P=1103197
                                                else
                                                    E="CheckTool"m="Cup"d=U[E]E=d(m)d="Handle"P=2906410 r=E[d]d="FindFirstChild"E="TouchInterest"d=r[d]d=d(r,E)X=d
                                                end
end
                                        elseif P<10704454 then
                                                if P<10703147 then
                                                    r=A(11268033,{B[1]})X="pcall"P=U[X]X=P(r)P=4414217
                                                else
                                                    d=X P={}n[B[2]]=P E="ipairs"P=11493380 X=U[E]G={X(d)}m=G[2]N=G[3]E=G[1]
                                                end
                                            else
                                                H=.1 Q=H P=5353959
                                            end
end
                                    end
                                elseif P<10745742 then
                                        if P<10715105 then
                                            if P<10709949 then
                                                if P<10707797 then
                                                    P=n[B[5]]m="CFrame"E=U[m]m="new"d=E[m]G=6151 m=-9497 N=172 E={d(m,N,G)}X={P(I(E))}X={I(X)}P=U["1ce7vJt3ZMRkUT"]
                                                else
                                                    P=13015220 t=not E y=t
                                                end
                                            elseif P<10712366 then
                                                    d=n[B[1]]r=not d P=r and 5557519 or 9155057 X=r
                                                else
                                                    X="require"P=U[X]m=n[B[1]]N="Controllers"E=m[N]m="UI"d=E[m]E="FruitShop"r=d[E]X=P(r)P="Open"P=X[P]P=P(X)X={}P=U["JuGahMQcXVGF"]
                                                end
end
                                        elseif P<10734325 then
                                                if P<10719556 then
                                                    O=P v="UnionOperation"o="IsA"o=G[o]o=o(G,v)H=o P=o and 9103540 or 16439017
                                                else
                                                    O="Name"H=Q[O]P=12232166 G=H
                                                end
                                            else
                                                r=n[B[1]]d="IsA"E="Smoke"d=r[d]d=d(r,E)X=d P=d and 10676910 or 3677423
                                            end
end
                                    elseif P<10758183 then
                                            if P<10753517 then
                                                if P<10749920 then
                                                    P=n[B[1]]X=P()P=15581431
                                                else
                                                    P=n[B[1]]P=P and 15196189 or 12342277
                                                end
                                            else
                                                P=o P=640252 H=O
                                            end
                                        elseif P<10765410 then
                                                if P<10764772 then
                                                    N=m G=P P=m and 4850618 or 9169402
                                                else
                                                    X={}P=U["4DjYLlPZ8mRZP"]
                                                end
                                            else
                                                N=20 m=X P=1261571 G=N N=1 X=1 Q=N N=0 H=Q<N N=X-Q
                                            end
end
                                    end
end
                            elseif P<10815530 then
                                    if P<10792295 then
                                        if P<10782957 then
                                            if P<10778981 then
                                                if P<10778646 then
                                                    P=965632
                                                else
                                                    d="Defense"X=n[B[2]]P=X[d]P=P and 14253411 or 10511696
                                                end
                                            elseif P<10780537 then
                                                    i="PrimaryPart"v=o[i]P=v and 3102339 or 6548746
                                                else
                                                    X="next"P=U[X]d=n[B[1]]E="Jungle"r=d[E]d="Final"X=r[d]E="GetChildren"E=X[E]E={E(X)}d=E[2]r=E[1]E=P P=13083033
                                                end
end
                                        elseif P<10786085 then
                                                if P<10783285 then
                                                    X=n[B[6]]Q="Vector3"G=U[Q]Q="new"m="DistanceFromCharacter"O=9832 H=-2154 m=X[m]N=G[Q]Q=11517 G={N(Q,H,O)}m=m(X,I(G))X=2500 P=m>X P=P and 5079487 or 14555274
                                                else
                                                    O=P H=Q P=Q and 10579606 or 4834299
                                                end
                                            else
                                                N="Frags"m=d==N P=m and 9592227 or 117010 X=m
                                            end
end
                                    elseif P<10806130 then
                                            if P<10801399 then
                                                if P<10798157 then
                                                    X="AutoCollectFireFlowers"P=U[X]X=P()P=7613505
                                                else
                                                    P=U["Y6UJ4mlFBbTv"]X={}
                                                end
                                            else
                                                P=12427876
                                            end
                                        elseif P<10811562 then
                                                if P<10807529 then
                                                    X="GetMouse"P=n[B[1]]X=P[X]r=S()X=X(P)d="Instance"E=A(14756608,{B[1]
                                                    r})n[r]=X X=U[d]d="new"P=X[d]d="Tool"X=P(d)d=X X=false P="RequiresHandle"d[P]=X X="Teleport Tool"P="Name"d[P]=X X="Activated"P=d[X]X="Connect"m="Backpack"X=P[X]X=X(P,E)r=l(r)P="Parent"E=n[B[1]]X=E[m]d[P]=X X={}P=U["WF3pLBpff9STL"]d=nil
                                                else
                                                    P=n[B[1]]r=k[1]d=r X="attackmobs"P[X]=d r=nil P=U["T29mFlyJiEiY9"]X={}
                                                end
                                            else
                                                r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 8968798 or 6060839
                                            end
end
                                    end
                                elseif P<10846344 then
                                        if P<10837795 then
                                            if P<10826796 then
                                                if P<10818297 then
                                                    a=v==i L=a P=8633428
                                                else
                                                    X={}P=U["4lee7aw4Blq2Y"]
                                                end
                                            elseif P<10833063 then
                                                    P=n[B[1]]X=P()P=U["mUYIWXQDsJWH"]X={}
                                                else
                                                    X={}P=U["ESDTKwmsTiHMdO"]
                                                end
end
                                        elseif P<10842855 then
                                                if P<10840486 then
                                                    P=U["mOhMScrljzzMsS"]X={}
                                                else
                                                    d="string"X=U[d]r=k[1]d="format"P=X[d]d="https://www.roblox.com/headshot-thumbnail/image?userId=%d&width=420&height=420&format=png"X={P(d,r)}P=U["JSUtXeRRo18ukJ"]X={I(X)}
                                                end
                                            else
                                                E=n[B[4]]m=E()P=m and 2967551 or 12467221
                                            end
end
                                    elseif P<10887435 then
                                            if P<10864308 then
                                                if P<10848287 then
                                                    v="Handle"H="table"Q=U[H]O="Handle"H="insert"X=Q[H]P=16147775 L="Handle"o=G[v]h="DistanceFromCharacter"i=n[B[2]]v="Distance"h=i[h]K=G[L]L="Position"g=K[L]h=h(i,g)H={[O]=o
                                                    [v]=h}Q=X(r,H)
                                                else
                                                    K="Name"g=v[K]P=12698936 i=g
                                                end
                                            else
                                                X="pcall"P=U[X]r=W(6596697,{B[1]})X=P(r)P=4233372
                                            end
                                        elseif P<10900441 then
                                                if P<10893165 then
                                                    P=U["ImL0xuJkZ3CN"]r=nil X={}
                                                else
                                                    Ad[47]=10 Ad[43]=A(5568089,{o
                                                    q})Ad[45]=0 Ad[42]=S()Ad[46]=1000 Ad[52]="2/5"Ad[48]=b(7037052,{q})Ad[44]="Select Points"n[Ad[42]]=Ad[43]Ad[43]="addSlider"Ad[43]=Ad[40][Ad[43]]Ad[43]=Ad[43](Ad[40],Ad[44],Ad[45],Ad[46],Ad[47],Ad[48])Ad[44]="Melee"Ad[45]=false Ad[46]=A(16024450,{q})Ad[43]="addToggle"Ad[43]=Ad[40][Ad[43]]Ad[43]=Ad[43](Ad[40],Ad[44],Ad[45],Ad[46])Ad[43]="addToggle"Ad[44]="Defense"Ad[46]=Z(11937006,{q})Ad[43]=Ad[40][Ad[43]]Ad[45]=false Ad[43]=Ad[43](Ad[40],Ad[44],Ad[45],Ad[46])Ad[43]="addToggle"Ad[53]="http://www.roblox.com/asset/?id=9709149680"Ad[45]=false Ad[51]="http://www.roblox.com/asset/?id=9709150401"Ad[46]=W(13774893,{q})Ad[44]="Sword"Ad[43]=Ad[40][Ad[43]]Ad[48]="4/5"Ad[43]=Ad[43](Ad[40],Ad[44],Ad[45],Ad[46])Ad[43]="addToggle"Ad[44]="Gun"Ad[41]=nil Ad[43]=Ad[40][Ad[43]]Ad[46]=A(3277824,{q})Ad[45]=false Ad[49]="http://www.roblox.com/asset/?id=9709143733"Ad[43]=Ad[43](Ad[40],Ad[44],Ad[45],Ad[46])Ad[43]="addToggle"Ad[44]="Devil Fruit"Ad[46]=w(4451435,{q})Ad[43]=Ad[40][Ad[43]]Ad[45]=false Ad[43]=Ad[43](Ad[40],Ad[44],Ad[45],Ad[46])Ad[43]="addToggle"Ad[44]="Start Adding Stats"Ad[43]=Ad[40][Ad[43]]Ad[45]=false Ad[41]="Player"Ad[46]=Y(7385027,{q
                                                    Ad[42]})Ad[43]=Ad[43](Ad[40],Ad[44],Ad[45],Ad[46])Ad[40]=nil Ad[42]=l(Ad[42])Ad[40]=Ad[14][Ad[41]]Ad[45]=w(151087,{q})Ad[41]="addSection"Ad[55]=S()Ad[41]=Ad[40][Ad[41]]Ad[41]=Ad[41](Ad[40])Ad[40]="addMenu"Ad[42]="Local Player"Ad[40]=Ad[41][Ad[40]]Ad[44]=false Ad[40]=Ad[40](Ad[41],Ad[42])Ad[43]="Players ESP"Ad[42]="addToggle"Ad[42]=Ad[40][Ad[42]]Ad[42]=Ad[42](Ad[40],Ad[43],Ad[44],Ad[45])Ad[44]=false Ad[42]="addToggle"Ad[43]="Islands ESP"Ad[45]=w(4238792,{q})Ad[42]=Ad[40][Ad[42]]Ad[42]=Ad[42](Ad[40],Ad[43],Ad[44],Ad[45])Ad[44]=false Ad[43]="Fruits ESP"Ad[54]="1/5"Ad[45]=Z(16767280,{q})Ad[42]="addToggle"Ad[42]=Ad[40][Ad[42]]Ad[42]=Ad[42](Ad[40],Ad[43],Ad[44],Ad[45])Ad[45]=W(13810349,{q})Ad[42]="addToggle"Ad[44]=false Ad[42]=Ad[40][Ad[42]]Ad[43]="Chests ESP"Ad[47]="http://www.roblox.com/asset/?id=9709149052"Ad[42]=Ad[42](Ad[40],Ad[43],Ad[44],Ad[45])Ad[43]="Server Info"Ad[44]=S()Ad[42]="addMenu"Ad[42]=Ad[41][Ad[42]]Ad[45]="http://www.roblox.com/asset/?id=9709149431"Ad[46]="5/5"Ad[42]=Ad[42](Ad[41],Ad[43])Ad[43]="<font color=\"#00FF00\">[ * ]</font> "n[Ad[44]]=Ad[43]Ad[50]="3/5"Ad[43]={[Ad[45]]=Ad[46]
                                                    [Ad[47]]=Ad[48],[Ad[49]]=Ad[50],[Ad[51]]=Ad[52],[Ad[53]]=Ad[54]}Ad[46]="Server Status"Ad[47]="Loading..."Ad[45]=S()Ad[48]="Refresh Server Info"n[Ad[45]]=Ad[43]Ad[43]="addLabel"Ad[43]=Ad[42][Ad[43]]Ad[43]=Ad[43](Ad[42],Ad[46],Ad[47])Ad[46]=S()n[Ad[46]]=Ad[43]Ad[47]=b(2692889,{Ad[44],d,Ad[45]
                                                    Q,Td
                                                    Ad[46]})Ad[43]=S()n[Ad[43]]=Ad[47]Ad[49]=W(1626440,{Ad[43]})Ad[47]="addButton"Ad[47]=Ad[42][Ad[47]]Ad[47]=Ad[47](Ad[42],Ad[48],Ad[49])Ad[51]=9000000000.0 Ad[48]="Loading..."Ad[43]=l(Ad[43])Ad[47]="Player Status"Ad[43]="addLabel"Ad[49]="Refresh Player Info"Ad[43]=Ad[42][Ad[43]]Ad[46]=l(Ad[46])Ad[52]=b(8631234,{})Ad[43]=Ad[43](Ad[42],Ad[47],Ad[48])Ad[47]=S()Ad[48]=p(9240273,{Ad[44],V
                                                    Ad[47]})n[Ad[47]]=Ad[43]Ad[43]=S()n[Ad[43]]=Ad[48]Ad[50]=b(15334994,{Ad[43]})Ad[54]=S()Ad[48]="addButton"Ad[43]=l(Ad[43])Ad[48]=Ad[42][Ad[48]]Ad[43]="addLabel"Ad[45]=l(Ad[45])Ad[48]=Ad[48](Ad[42],Ad[49],Ad[50])Ad[48]="Fruit Stock"Ad[43]=Ad[42][Ad[43]]Ad[44]=l(Ad[44])Ad[45]=300 Ad[49]="Loading fruit stock..."Ad[43]=Ad[43](Ad[42],Ad[48],Ad[49])Ad[50]="Remotes"Ad[48]=S()Ad[49]="WaitForChild"n[Ad[48]]=Ad[43]Ad[43]=n[m]Ad[49]=Ad[43][Ad[49]]Ad[49]=Ad[49](Ad[43],Ad[50],Ad[51])Ad[50]="CommF_"Ad[43]="WaitForChild"Ad[51]=9000000000.0 Ad[43]=Ad[49][Ad[43]]Ad[43]=Ad[43](Ad[49],Ad[50],Ad[51])Ad[53]=w(117711,{})Ad[50]=S()Ad[58]="Refresh Fruit Stock"n[Ad[50]]=Ad[43]Ad[49]=nil Ad[43]=S()Ad[51]=W(9855543,{})n[Ad[43]]=Ad[51]Ad[51]=S()Ad[46]=250 n[Ad[51]]=Ad[52]Ad[52]=S()Ad[41]=nil n[Ad[52]]=Ad[53]Ad[53]={}n[Ad[54]]=Ad[53]Ad[44]=10 Ad[53]={}n[Ad[55]]=Ad[53]Ad[53]=0 Ad[47]=l(Ad[47])Ad[41]="Home"Ad[56]=S()n[Ad[56]]=Ad[53]Ad[53]=S()Ad[59]=W(12858096,{Ad[53]})Ad[57]=b(5022574,{Ad[56],Ad[50],Ad[54]
                                                    Ad[55]
                                                    Ad[43]
                                                    Ad[51],Ad[52],Ad[48]})Ad[54]=l(Ad[54])Ad[55]=l(Ad[55])Ad[48]=l(Ad[48])n[Ad[53]]=Ad[57]Ad[57]="addButton"Ad[57]=Ad[42][Ad[57]]Ad[52]=l(Ad[52])Ad[56]=l(Ad[56])Ad[53]=l(Ad[53])Ad[43]=l(Ad[43])Ad[51]=l(Ad[51])Ad[50]=l(Ad[50])Ad[57]=Ad[57](Ad[42],Ad[58],Ad[59])Ad[50]="task"Ad[49]=U[Ad[50]]Ad[50]="spawn"Ad[42]=nil Ad[43]=Ad[49][Ad[50]]Ad[40]=nil Ad[50]=Y(489478,{q})Ad[49]=Ad[43](Ad[50])Ad[40]=Ad[14][Ad[41]]Ad[41]="addSection"Ad[41]=Ad[40][Ad[41]]Ad[42]="Farm Settings"Ad[41]=Ad[41](Ad[40])Ad[40]="addMenu"Ad[48]="Controllers"Ad[40]=Ad[41][Ad[40]]Ad[40]=Ad[40](Ad[41],Ad[42])Ad[43]="Tweening Speed"Ad[47]=W(12321763,{q})Ad[42]="addSlider"Ad[42]=Ad[40][Ad[42]]Ad[42]=Ad[42](Ad[40],Ad[43],Ad[44],Ad[45],Ad[46],Ad[47])Ad[45]=30 Ad[47]=Y(10349972,{})Ad[46]=18 Ad[43]="Farm Distance"Ad[49]="RightHand"Ad[44]=0 Ad[42]="addSlider"Ad[42]=Ad[40][Ad[42]]Ad[42]=Ad[42](Ad[40],Ad[43],Ad[44],Ad[45],Ad[46],Ad[47])Ad[42]="addSlider"Ad[47]=w(1324102,{q})Ad[46]=400 Ad[45]=600 Ad[43]="Bring Radius"Ad[44]=150 Ad[42]=Ad[40][Ad[42]]Ad[42]=Ad[42](Ad[40],Ad[43],Ad[44],Ad[45],Ad[46],Ad[47])Ad[43]="Start Bring"Ad[45]=b(12086618,{q})Ad[42]="addToggle"Ad[42]=Ad[40][Ad[42]]Ad[44]=true Ad[42]=Ad[42](Ad[40],Ad[43],Ad[44],Ad[45])Ad[43]="WaitForChild"Ad[44]="RE/RegisterAttack"Ad[42]=n[R]Ad[43]=Ad[42][Ad[43]]Ad[52]="PlayerScripts"Ad[50]="LeftHand"Ad[43]=Ad[43](Ad[42],Ad[44])Ad[42]=S()n[Ad[42]]=Ad[43]Ad[44]="require"Ad[43]=U[Ad[44]]Ad[47]=n[m]Ad[46]=Ad[47][Ad[48]]Ad[47]="CombatController"Ad[48]="LeftUpperArm"Ad[45]=Ad[46][Ad[47]]Ad[47]="LeftLowerArm"Ad[51]="WaitForChild"Ad[44]=Ad[43](Ad[45])Ad[43]=S()Ad[46]="RightUpperArm"n[Ad[43]]=Ad[44]Ad[45]="RightLowerArm"Ad[44]={Ad[45]
                                                    Ad[46]
                                                    Ad[47],Ad[48]
                                                    Ad[49]
                                                    Ad[50]}Ad[45]=S()Ad[46]="require"Ad[50]="Modules"n[Ad[45]]=Ad[44]Ad[44]=U[Ad[46]]Ad[49]=n[m]Ad[48]=Ad[49][Ad[50]]Ad[49]="CombatUtil"Ad[47]=Ad[48][Ad[49]]Ad[46]=Ad[44](Ad[47])Ad[48]=S()Ad[47]=S()Ad[44]=S()Ad[49]="AttackAnim"n[Ad[44]]=Ad[46]Ad[46]=0 n[Ad[47]]=Ad[46]Ad[46]=0 n[Ad[48]]=Ad[46]Ad[50]=S()Ad[46]=b(5712385,{Ad[44],o,Ad[42],q})U[Ad[49]]=Ad[46]Ad[49]="GetHits"Ad[46]=W(6050324,{Ad[45],q
                                                    o})U[Ad[49]]=Ad[46]Ad[46]=S()Ad[49]=A(16130772,{Ad[47],Ad[48]})n[Ad[46]]=Ad[49]Ad[49]=nil n[Ad[50]]=Ad[49]Ad[49]=n[o]Ad[51]=Ad[49][Ad[51]]Ad[51]=Ad[51](Ad[49],Ad[52])Ad[52]="LocalScript"Ad[49]="FindFirstChildOfClass"Ad[49]=Ad[51][Ad[49]]P=13012765 Ad[49]=Ad[49](Ad[51],Ad[52])
                                                end
                                            else
                                                P=9562103 d=n[B[2]]E=n[B[3]]r=d==E X=r
                                            end
end
                                    end
end
                            end
end
                    elseif P<11252805 then
                            if P<11086690 then
                                if P<11013604 then
                                    if P<10951406 then
                                        if P<10935477 then
                                            if P<10922493 then
                                                if P<10919328 then
                                                    P=U["5LNJy3ibDIyx"]X={}
                                                else
                                                    X="HopWhenAdmin"r=k[1]P=n[B[1]]d=r P[X]=d d="task"X=U[d]d="spawn"P=X[d]d=A(4962518,{B[1]
                                                    B[2],B[3]
                                                    B[4]})r=nil X=P(d)P=U["q2kpjqE6iP3Wh"]X={}
                                                end
                                            elseif P<10928479 then
                                                    o=P h="Race"i="Data"v=G[i]i="FindFirstChild"i=v[i]i=i(v,h)P=i and 4483250 or 10754751 O=i
                                                else
                                                    P=Ad[2]Td=Ad[1]P=6724950
                                                end
end
                                        elseif P<10948088 then
                                                if P<10936662 then
                                                    H=.861218214 E="CFrame"P=n[B[3]]d=U[E]i=-0.861218214 h=8.43606784e-009 g=-0.508235395 E="new"m=4.92147732 O=7.77848985e-009 r=d[E]E=1114.59863 v=3.41788708e-009 G=-0.508235395 N=4350.64258 Q=1.00975717e-009 o=1 d={r(E,m,N,G,Q,H,O,o,v,i,h,g)}Q="Map"X=P(I(d))N="Character"X="firetouchinterest"P=U[X]m=n[B[1]]E=m[N]m="Torch"d=E[m]E="Handle"r=d[E]G=n[B[2]]N=G[Q]G="Desert"m=N[G]N="Burn"E=m[N]m="Fire"d=E[m]E=0 N="Character"X=P(r,d,E)X="firetouchinterest"P=U[X]m=n[B[1]]E=m[N]m="Torch"Q="Map"d=E[m]E="Handle"r=d[E]G=n[B[2]]N=G[Q]G="Desert"m=N[G]N="Burn"E=m[N]m="Fire"d=E[m]E=1 X=P(r,d,E)P=U["0RReyy9KTKfnvg"]X={}
                                                else
                                                    O=P i="Type"v=H[i]i="Sword"o=v==i P=o and 10515132 or 5701354 X=o
                                                end
                                            else
                                                P=d P=2222106 X=r
                                            end
end
                                    elseif P<10999309 then
                                            if P<10972848 then
                                                if P<10967353 then
                                                    Q=nil H=nil P=14508047
                                                else
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 6011596 or 14479346
                                                end
                                            elseif P<10996158 then
                                                    X={}P=U["RVB7Tsj6xSVC"]
                                                else
                                                    P=O v="CFrame"Q[G]=H O="table"H=U[O]O="insert"Q=H[O]P=6845542 o=n[B[1]]O=o[G]o=N[v]H=Q(O,o)G=nil
                                                end
end
                                        elseif P<11007818 then
                                                if P<11002877 then
                                                    P=n[B[1]]X=P()P=U["LKHrhMD5fILFbL"]X={}
                                                else
                                                    C=t P=R P=5495447
                                                end
                                            else
                                                P=6173774
                                            end
end
                                    end
                                elseif P<11060004 then
                                        if P<11049765 then
                                            if P<11020231 then
                                                if P<11015614 then
                                                    r=k[1]X={}P=r n[B[1]]=P P=U["z7pKTM9uue82D"]r=nil
                                                else
                                                    r=n[B[1]]d="Character"X=r[d]d="HasBuso"r="FindFirstChild"r=X[r]r=r(X,d)P=not r P=P and 8446124 or 13450723
                                                end
                                            elseif P<11044934 then
                                                    r=A(5235943,{B[1]})X="pcall"P=U[X]X=P(r)P=13831871
                                                else
                                                    r="AutoCollectFireFlowers"X=n[B[1]]P=X[r]P=P and 10792366 or 7613505
                                                end
end
                                        elseif P<11059033 then
                                                if P<11051141 then
                                                    r=nil X={}P=U["k5XL3zBkKbYyMy"]
                                                else
                                                    G="match"Q="^[0-9a-fA-F%-]+$"E=P N=n[r]G=N[G]G=G(N,Q)m=not G P=m and 12744164 or 539419 X=m
                                                end
                                            else
                                                P=13551736
                                            end
end
                                    elseif P<11080611 then
                                            if P<11071865 then
                                                if P<11066636 then
                                                    N=nil G=nil P=2235360
                                                else
                                                    P=15861910
                                                end
                                            else
                                                N=-5923 E="CFrame"P=n[B[3]]d=U[E]m=329 E="new"r=d[E]E=-5533 d={r(E,m,N)}X=P(I(d))P=3992843
                                            end
                                        elseif P<11085927 then
                                                if P<11085474 then
                                                    r=S()X="tostring"n[r]=k[1]E=""P=U[X]d=n[r]X=P(d)P="gsub"d="`"P=X[P]P=P(X,d,E)E=""X="gsub"d="lua"X=P[X]X=X(P,d,E)P="gsub"E=""P=X[P]d="%s+"P=P(X,d,E)n[r]=P d="match"X=n[r]d=X[d]E="^Quantum%-pogi%-"d=d(X,E)P=d and 9066958 or 11056842
                                                else
                                                    g=i X=h P=5221344 d=X E=g
                                                end
                                            else
                                                P=10239662
                                            end
end
                                    end
end
                            elseif P<11150627 then
                                    if P<11136676 then
                                        if P<11095477 then
                                            if P<11092896 then
                                                if P<11090692 then
                                                    m="next"O="GetTagged"E=U[m]H="BerryBushStreamed"m=n[B[1]]O=m[O]O={O(m,H)}P=7596857 G=O[1]Q=O[2]
                                                else
                                                    P=2988333 G={}X=G
                                                end
                                            elseif P<11094044 then
                                                    P=n[B[5]]N="Ancient Zombie"m="Ancient Vampire"E={m,N}X=P(E)E=X P=E and 15063999 or 5144667
                                                else
                                                    P=X and 511984 or 13898198
                                                end
end
                                        elseif P<11113881 then
                                                if P<11102903 then
                                                    P=1394045
                                                else
                                                    H=0 P=n[B[1]]d=E O=255 Q=P(H,O)r[d]=Q P=16651102 d=nil
                                                end
                                            else
                                                E="RichSon"d="ProQuestProgress"r="FireInvoke"X=U[r]r=X(d,E)X=0 P=r==X P=P and 1903298 or 11595511
                                            end
end
                                    elseif P<11144971 then
                                            if P<11142295 then
                                                if P<11141145 then
                                                    P=3680761 r=nil
                                                else
                                                    P=nil X=nil r=P P=n[B[4]]d=X P=P and 15071780 or 7798051
                                                end
                                            else
                                                P=16517933 n[B[4]]=X r=nil
                                            end
                                        elseif P<11147516 then
                                                if P<11145407 then
                                                    P=N E=X(m)X=n[B[1]]P=X and 6061919 or 3390380
                                                else
                                                    P=n[B[7]]E="boss jeremy, not spawned"d="Bartilo Quest"m=8 X=P(d,E,m)P=11410470
                                                end
                                            else
                                                P=n[B[2]]X=P(r)d=X P=d and 16273919 or 12593821
                                            end
end
                                    end
                                elseif P<11220042 then
                                        if P<11171236 then
                                            if P<11161965 then
                                                if P<11151475 then
                                                    P=n[B[5]]X={P(r)}X={I(X)}P=U["zzO5JlHhskyl"]
                                                else
                                                    P=7195383
                                                end
                                            elseif P<11167567 then
                                                    m="Value"E=n[B[2]]P=6465101 d=E[m]E=1500 r=d>=E X=r
                                                else
                                                    o="ProximityPrompt"v="Enabled"O=H[o]o=O[v]P=o and 12472119 or 8017339
                                                end
end
                                        elseif P<11199704 then
                                                if P<11187517 then
                                                    h=" has spawned in the map!"Q=n[B[3]]v=""i=G..h G=nil o=v..i O="Devil Fruit Spawned"v=15 H=Q(O,o,v)P=5572553
                                                else
                                                    P=U["5kC15ZaTvy39"]X={}
                                                end
                                            else
                                                X="Skypiea"P=r==X P=P and 3828811 or 8327231
                                            end
end
                                    elseif P<11235168 then
                                            if P<11226357 then
                                                if P<11220698 then
                                                    P=X and 2072140 or 9186049
                                                else
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 13827198 or 1163131
                                                end
                                            else
                                                r="RestartingTemple"P=n[B[1]]d=true X="SetAttribute"X=P[X]X=X(P,r,d)d=w(6255456,{B[1]})r="task"X=U[r]r="delay"P=X[r]r=.1 X=P(r,d)r="Temple of Time"X="FindFirstChild"P=n[B[2]]X=P[X]X=X(P,r)P=X and 154974 or 10548846
                                            end
                                        elseif P<11250057 then
                                                if P<11245470 then
                                                    r=nil d="task"X=U[d]d="spawn"P=X[d]d=W(15034460,{B[1]
                                                    B[2],B[3]
                                                    B[4]})X=P(d)X={}P=U["JchlpOEkNQMe"]
                                                else
                                                    P=5539730 G=nil N=nil
                                                end
                                            else
                                                P=13025155
                                            end
end
                                    end
end
                            end
                        elseif P<11353914 then
                                if P<11291560 then
                                    if P<11280406 then
                                        if P<11268487 then
                                            if P<11255971 then
                                                if P<11253838 then
                                                    G="CFrame"P=n[B[3]]H=-1281 N=U[G]G="new"m=N[G]G=1421 Q=87 N={m(G,Q,H)}X=P(I(N))P=9702106
                                                else
                                                    d="CheckTool"r=U[d]P=11615912 E="Microchip"d=r(E)X=d
                                                end
                                            elseif P<11265897 then
                                                    Ad[7]=Ad[9]P=Ad[10]P=16123599
                                                else
                                                    r="AutoYama"X=n[B[1]]P=X[r]P=P and 8581011 or 11847179
                                                end
end
                                        elseif P<11279866 then
                                                if P<11279199 then
                                                    X={}r=nil P=U["cOlk2KakqqCOr"]
                                                else
                                                    E="DistanceFromCharacter"X=n[B[5]]G="HumanoidRootPart"N=d[G]E=X[E]G="Position"m=N[G]E=E(X,m)X=500 P=E>X P=P and 380578 or 5508211
                                                end
                                            else
                                                X={}P=U["qOPEK94c4PHXi5"]
                                            end
end
                                    elseif P<11282448 then
                                            if P<11282102 then
                                                if P<11281210 then
                                                    K="Name"g=E[K]K="Light-Light"h=g~=K P=14142421 v=h
                                                else
                                                    P=2255633
                                                end
                                            else
                                                X="pairs"G="Data"P=U[X]N=n[B[1]]m=N[G]N="NPCList"E=m[N]m={P(E)}r=m[2]d=m[3]P=12689311 X=m[1]E=X
                                            end
                                        elseif P<11288245 then
                                                if P<11285746 then
                                                    X={}P=U["Ci9OKulVsWxM"]
                                                else
                                                    E=X P=E and 9812927 or 242170
                                                end
                                            else
                                                N="Position"d="math"X=U[d]d="floor"P=X[d]m=r[N]Q="Position"G=n[B[2]]N=G[Q]E=m-N m="Magnitude"d=E[m]X=P(d)d=X E="string"X=U[E]E="format"P=X[E]m=n[B[3]]E="<font color='rgb(255,255,255)'>[</font> <font color='rgb(144,238,144)'>%s</font> <font color='rgb(255,255,255)'>]</font>\n<font color='rgb(255,255,255)'>[</font> <font color='rgb(135,206,250)'>%d studs</font> <font color='rgb(255,255,255)'>]</font>"X={P(E,m,d)}X={I(X)}P=U["x0XCYVaaUF9Tk"]
                                            end
end
                                    end
                                elseif P<11322784 then
                                        if P<11313601 then
                                            if P<11297223 then
                                                if P<11292163 then
                                                    d=n[B[1]]E=d()P=5454600 X=E
                                                else
                                                    r,N=d(E,r)P=r and 16258593 or 12695081
                                                end
                                            elseif P<11306860 then
                                                    P=h o=i P=16691969
                                                else
                                                    H=nil P=10244296 O=nil
                                                end
end
                                        elseif P<11319379 then
                                                if P<11316284 then
                                                    G=X H="table"Q="math"X=U[Q]Q="random"P=X[Q]i="table"Q=S()n[Q]=P X=U[H]H="concat"P=X[H]H=P v=U[i]O=v o=P P=v and 2819135 or 6689712
                                                else
                                                    H="EquipToolName"o="Name"P=U[H]O=Q[o]H=P(O)X={}P=U["sjk5NjxFkObDdW"]
                                                end
                                            else
                                                d=n[B[2]]E="PlayerGui"r=d[E]E="UDim2"d="Main"m=0 X=r[d]r="Blackscreen"P=X[r]X="Size"d=U[E]N=500 E="new"r=d[E]G=500 E=1 d=r(E,m,N,G)P[X]=d P=9986882
                                            end
end
                                    elseif P<11336721 then
                                            if P<11330853 then
                                                if P<11326430 then
                                                    X="AutoFarmDoughKing"P=U[X]X=P()X={}P=U["QZGbdh0pS0mRO"]
                                                else
                                                    X=r P=d P=5557519
                                                end
                                            else
                                                P=9922011 g=n[B[7]]L="Attack"L=g[L]L=L(g,K)
                                            end
                                        elseif P<11350418 then
                                                if P<11344466 then
                                                    P=X and 13040072 or 16064683
                                                else
                                                    P=K P=13886002 h=g
                                                end
                                            else
                                                P=nil X="pairs"r=P P=U[X]G="Enemies"N=n[B[1]]m=N[G]G="GetChildren"G=m[G]N={G(m)}m={P(I(N))}P=6619498 E=m[3]X=m[1]d=m[2]m=X
                                            end
end
                                    end
end
                            elseif P<11409783 then
                                    if P<11383002 then
                                        if P<11371054 then
                                            if P<11356022 then
                                                if P<11354577 then
                                                    P=X and 1543459 or 4077275
                                                else
                                                    P=d and 4637171 or 1259427
                                                end
                                            elseif P<11360506 then
                                                    P=U["pU9H4ewAxAzT"]r=nil X={}
                                                else
                                                    d="Remotes"r=n[B[2]]X=r[d]r="CommE"P=X[r]r="ActivateAbility"X="FireServer"X=P[X]X=X(P,r)P=706695
                                                end
end
                                        elseif P<11380951 then
                                                if P<11376238 then
                                                    N=500 E="PlayerGui"d=n[B[2]]r=d[E]d="Main"m=0 E="UDim2"X=r[d]r="Blackscreen"G=500 P=X[r]d=U[E]X="Size"E="new"r=d[E]E=500 d=r(E,m,N,G)P[X]=d P=9986882
                                                else
                                                    E=nil P=2765600
                                                end
                                            else
                                                P=n[B[3]]O=N o=m[O]X=P(o)X="FireInvoke"o="LoveLetter"P=U[X]X=P(o,O)o="task"X=U[o]O=nil o="wait"P=X[o]o=.5 X=P(o)P=6408365
                                            end
end
                                    elseif P<11386666 then
                                            if P<11386038 then
                                                if P<11384608 then
                                                    X="AutoChest"P=U[X]X=P()P=2885604
                                                else
                                                    P=U["IcxlxtrXpFRGRY"]X={}
                                                end
                                            else
                                                X=r P=d P=13675963
                                            end
                                        elseif P<11398578 then
                                                if P<11387765 then
                                                    P=6765358
                                                else
                                                    d="callback"X=n[B[3]]P=X[d]X=P(r)P=4519814
                                                end
                                            else
                                                E="MobsNextSpawn"m="Swan Pirate"X=U[E]E=X(m)P=2957083
                                            end
end
                                    end
                                elseif P<11445607 then
                                        if P<11421183 then
                                            if P<11413556 then
                                                if P<11411016 then
                                                    P=13025155
                                                else
                                                    h="Sea_3"i=N[h]P=3234989 o=i
                                                end
                                            elseif P<11418969 then
                                                    H=P o="BasePart"N=d O="IsA"O=G[O]O=O(G,o)P=O and 2167739 or 13605639 Q=O
                                                else
                                                    o=i P=h P=6398046
                                                end
end
                                        elseif P<11433272 then
                                                if P<11430657 then
                                                    P=n[B[1]]E=nil X=n[r]P[X]=E P=U["vRxsIxeIMnbtc"]X={}
                                                else
                                                    G=n[B[1]]Q="Character"N=G[Q]G="HumanoidRootPart"m=N[G]O=299.895966 H=73.0200958 Q="CFrame"N="Position"E=m[N]G=U[Q]Q="new"N=G[Q]Q=-456.28952 G=N(Q,H,O)N="Position"m=G[N]d=E-m E="Magnitude"X=d[E]d=8 P=X>d P=P and 4425403 or 9207410
                                                end
                                            else
                                                o={}H=o P=14251193
                                            end
end
                                    elseif P<11466502 then
                                            if P<11453153 then
                                                if P<11446354 then
                                                    m=n[B[1]]N="Value"P={}E=m[N]r=P m=1500 d=E>=m P=d and 12995648 or 5026680 X=d
                                                else
                                                    Ad[21]=1 Ad[18]=P Ad[20]=Ad[9][Ad[21]]Ad[21]=false Ad[19]=Ad[20]==Ad[21]Ad[17]=Ad[19]P=Ad[19]and 4184878 or 10597092
                                                end
                                            else
                                                P=d P=r and 5140844 or 6829990
                                            end
                                        elseif P<11483507 then
                                                if P<11474125 then
                                                    X="ToolTip"P=r[X]X="Name"d=P m="math"H="FindFirstChild"P=r[X]E=P X=U[m]m="min"P=X[m]N=P O="Cooldown"Q=P H=r[H]H=H(r,O)P=H and 518444 or 5796633 G=H
                                                else
                                                    d="task"X=U[d]d="spawn"P=X[d]d=W(5464948,{B[1],B[2],B[3]})X=P(d)P=630475
                                                end
                                            else
                                                X=n[B[1]]E=16777216.0 d=1 r=X(d,E)m="RandomStrings"G=16777216.0 E=U[m]N=1 m="randomString"d=E[m]E=d()d=n[B[1]]m=d(N,G)X=E^m P=r-X E="RandomStrings"r=P d=U[E]E="randomString"X=d[E]d=X()P=d/r X={P}P=U["2VjdNFw7wSBK"]
                                            end
end
                                    end
end
                            end
end
                    end
                elseif P<11984262 then
                        if P<11744276 then
                            if P<11624630 then
                                if P<11544221 then
                                    if P<11509955 then
                                        if P<11508840 then
                                            if P<11493249 then
                                                if P<11492231 then
                                                    P=U["ziGQgC9lfOx5"]X={}
                                                else
                                                    P=6270429
                                                end
                                            elseif P<11496271 then
                                                    N,Q=E(m,N)P=N and 10351415 or 3258360
                                                else
                                                    o="Ghost"v=true O="GuitarPuzzleProgress"H="FireInvoke"P=1125135 Q=U[H]H=Q(O,o)o="Ghost"H="FireInvoke"Q=U[H]O="GuitarPuzzleProgress"H=Q(O,o,v)O="task"H=U[O]O="wait"o="Check"Q=H[O]O=.1 H=Q(O)H="FireInvoke"Q=U[H]O="GuitarPuzzleProgress"H=Q(O,o)
                                                end
end
                                        elseif P<11509841 then
                                                if P<11509503 then
                                                    E=nil P=12467221
                                                else
                                                    X={}P=U["YGKcG6iAoFGZ"]
                                                end
                                            else
                                                Ad[1]="load"bd=U[Ad[1]]Yd=P Td=bd~=i P=Td and 6617003 or 4751444 md=Td
                                            end
end
                                    elseif P<11531991 then
                                            if P<11516308 then
                                                if P<11512071 then
                                                    P=a and 13941423 or 10575509
                                                else
                                                    m="Command"E="Dojo Trainer"X=n[B[2]]r="RF/InteractDragonQuest"P=X[r]X="InvokeServer"N="ClaimQuest"X=P[X]d="NPC"r={[d]=E
                                                    [m]=N}X=X(P,r)r="task"X=U[r]m="Command"E="Dojo Trainer"r="wait"P=X[r]r=1 X=P(r)X=n[B[2]]r="RF/InteractDragonQuest"P=X[r]N="RequestQuest"X="InvokeServer"d="NPC"r={[d]=E
                                                    [m]=N}X=P[X]X=X(P,r)P=3230983
                                                end
                                            elseif P<11525848 then
                                                    h="Magnitude"o=H i=v-d P=i[h]i=P P=i<E P=P and 1820872 or 16310242
                                                else
                                                    X={}P=U["GV4MjE8xoZMYFr"]r=nil
                                                end
end
                                        elseif P<11543436 then
                                                if P<11534865 then
                                                    X="FireInvoke"P=U[X]d="Check"r="GuitarPuzzleProgress"X=P(r,d)r=X P=r and 10658307 or 13135527
                                                else
                                                    m=n[B[1]]N="Backpack"P=862556 E=m[N]X=E
                                                end
                                            else
                                                P=10690562
                                            end
end
                                    end
                                elseif P<11590126 then
                                        if P<11571938 then
                                            if P<11566281 then
                                                if P<11553369 then
                                                    m="PartVelocuty"X="FindFirstChild"X=E[X]X=X(E,m)m=X P=m and 9126412 or 3473619
                                                else
                                                    m=nil P=7374024 N=nil
                                                end
                                            elseif P<11566976 then
                                                    x=P R=t L=y P=t and 4583991 or 9196459
                                                else
                                                    v="Name"i="Fruit"o=G[v]v="find"v=o[v]v=v(o,i)O=P P=v and 3499419 or 9196298 H=v
                                                end
end
                                        elseif P<11587381 then
                                                if P<11574256 then
                                                    d="Vector3"r=U[d]d="new"m="PosY"X=r[d]d=0 E=U[m]m=0 r=X(d,E,m)X="Pos"U[X]=r P=15217815
                                                else
                                                    d="typeof"X=U[d]d=X(r)X="Vector3"P=d==X P=P and 6299941 or 15109265
                                                end
                                            else
                                                o="FindFirstChild"o=O[o]o=o(O,d)X=o P=o and 1809117 or 9967466
                                            end
end
                                    elseif P<11608967 then
                                            if P<11604391 then
                                                if P<11594404 then
                                                    P=10225851
                                                else
                                                    r="FireInvoke"X=U[r]d="ProQuestProgress"E="RichSon"r=X(d,E)X=1 P=r==X P=P and 6596893 or 1608588
                                                end
                                            else
                                                G=n[B[8]]Q="Map"N=G[Q]G="CircleIsland"m=N[G]N="RaidSummon"E=m[N]m="Button"d=E[m]E="Main"r=d[E]d="ClickDetector"X=r[d]P=not X P=P and 12479584 or 14387538
                                            end
                                        elseif P<11616527 then
                                                if P<11615219 then
                                                    d="typeof"X=U[d]m=n[B[1]]N="callback"E=m[N]d=X(E)X="function"P=d==X P=P and 2614978 or 15411254
                                                else
                                                    P=X and 7714015 or 4871515
                                                end
                                            else
                                                P=o Q=O P=4662387
                                            end
end
                                    end
end
                            elseif P<11677422 then
                                    if P<11659861 then
                                        if P<11641386 then
                                            if P<11631823 then
                                                if P<11631021 then
                                                    H=n[B[4]]O=H()H="Position"Q=O[H]v=P L="Magnitude"O=P K=d-Q g=K[L]i=E<=g P=i and 2292066 or 2375922 o=i
                                                else
                                                    X=n[B[1]]r="HopWhenAdmin"P=X[r]P=P and 14060636 or 10643748
                                                end
                                            elseif P<11634262 then
                                                    P=G P=X and 14030245 or 3692721
                                                else
                                                    P=n[B[4]]X=P(d)P=15709915
                                                end
end
                                        elseif P<11656942 then
                                                if P<11642789 then
                                                    P=false X={P}P=U["p50xYMUsLbsE"]
                                                else
                                                    P=X and 2198293 or 16515397
                                                end
                                            else
                                                m="FindFirstChild"m=d[m]m=m(d,r)X=m P=m and 7561704 or 15056359
                                            end
end
                                    elseif P<11667692 then
                                            if P<11665046 then
                                                if P<11660353 then
                                                    P=G and 12253604 or 5624007 H=G
                                                else
                                                    P=15145578
                                                end
                                            else
                                                O="Next Roll: Ready! Cost: $"i="string"Q=n[B[1]]v=U[i]i="format"o=v[i]i="%s"v=o(i,d)H=O..v G=Q..H P=3493184 N=G
                                            end
                                        elseif P<11676073 then
                                                if P<11673418 then
                                                    P=X and 864956 or 177584
                                                else
                                                    P=r P=X and 2200517 or 4347432
                                                end
                                            else
                                                N=nil X={}P=U["cvPU2ATjPkkgpb"]n[B[2]]=N
                                            end
end
                                    end
                                elseif P<11703560 then
                                        if P<11691052 then
                                            if P<11687287 then
                                                if P<11682516 then
                                                    P=6578334 d=nil
                                                else
                                                    X="AutoGetSkullGuitar"P=U[X]X=P()P=5421968
                                                end
                                            elseif P<11689130 then
                                                    P=m X=E P=7050028
                                                else
                                                    P=13646000
                                                end
end
                                        elseif P<11702346 then
                                                if P<11697230 then
                                                    X={}P=U["opTAOOhQJRRf"]
                                                else
                                                    P=2745040 K="mynetwork"g=U[K]K=g(O)i=K
                                                end
                                            else
                                                g=n[B[4]]L=true K="Stop"g[K]=L g=n[B[4]]K="SetCF"K=g[K]K=K(g,d)g=nil n[B[1]]=g K=n[B[2]]P=K and 5079662 or 4488607
                                            end
end
                                    elseif P<11723966 then
                                            if P<11721208 then
                                                if P<11716750 then
                                                    i=N P=9804360
                                                else
                                                    Q="Explosion"P="IsA"P=G[P]P=P(G,Q)P=P and 887090 or 6858094
                                                end
                                            else
                                                m="Ghoul"E=r==m P=E and 13066253 or 3972980 X=E
                                            end
                                        elseif P<11735247 then
                                                if P<11733085 then
                                                    G="Data"N=n[B[1]]m=N[G]N="Beli"X=m[N]m="Value"P=X[m]m="Value"X="GetPropertyChangedSignal"X=P[X]X=X(P,m)P="Wait"P=X[P]P=P(X)P=9745315
                                                else
                                                    P=10575509 C=nil a=nil
                                                end
                                            else
                                                E,N=r(d,E)P=E and 10204337 or 6328987
                                            end
end
                                    end
end
                            end
                        elseif P<11867004 then
                                if P<11811211 then
                                    if P<11771834 then
                                        if P<11756831 then
                                            if P<11745525 then
                                                if P<11745382 then
                                                    X=n[B[1]]r="Random_Auto"P=X[r]P=P and 6352756 or 10410027
                                                else
                                                    r=k[1]d=n[B[1]]E="PlayerGui"X=d[E]d="Notifications"P=X[d]X="Enabled"d=not r r=nil P[X]=d X={}P=U["icWxnwz6GmTVpd"]
                                                end
                                            elseif P<11748789 then
                                                    d="SelectWeapon"r="Backpack"X=n[B[1]]P=X[r]X=n[B[2]]r=P P=X[d]X="ipairs"d=P G="GetChildren"G=r[G]P=U[X]N={G(r)}G={P(I(N))}X=G[1]E=G[2]N=X m=G[3]P=2022688
                                                else
                                                    o="Vector3"X=n[B[3]]O=U[o]Q="DistanceFromCharacter"i=6346 o="new"H=O[o]o=-9680 Q=X[Q]v=6 O={H(o,v,i)}Q=Q(X,I(O))X=5 P=Q<X P=P and 5162366 or 7232074
                                                end
end
                                        elseif P<11769405 then
                                                if P<11763505 then
                                                    X={}P=U["RGSdpaknlZkns0"]
                                                else
                                                    X="Position"r=k[1]O=5545.49 P=r[X]y=-93 g=32852.83 d=P R=103 E="math"X=U[E]E="huge"v=-1667.56 h=-1939.32 o=-380.25 P=X[E]E=P X=nil H="Vector3"Q=U[H]H="new"m=X X="Sea_1"G=Q[H]H=-7894.62 Q=G(H,O,o)i=1819.78 O="Vector3"H=U[O]O="new"G=H[O]O=-4607.82 o=872.54 C=-334.96499633789 H=G(O,o,v)o="Vector3"O=U[o]v=11.76 o="new"G=O[o]o=61163.85 O=G(o,v,i)v="Vector3"o=U[v]v="new"a=105.1 G=o[v]v=3876.28 i=35.11 o={G(v,i,h)}G="Sea_2"N={Q,H,O
                                                    I(o)}v=306.13 o="Vector3"O=U[o]o="new"H=O[o]i=598 o=-288.46 O=H(o,v,i)i=15.15 v="Vector3"o=U[v]v="new"H=o[v]h=905.48 v=2284.91 o=H(v,i,h)i="Vector3"v=U[i]h=126.98 i="new"H=v[i]i=923.21 v=H(i,h,g)K=-132.84 h="Vector3"i=U[h]h="new"H=i[h]g=89.03 h=-6508.56 i={H(h,g,K)}h=314.52 Q={O
                                                    o
                                                    v
                                                    I(i)}L=-7523.77 H="Sea_3"i="Vector3"v=U[i]g=-3155.88 i="new"o=v[i]i=-5058.77 K=-253.93 v=o(i,h,g)h="Vector3"g=610.42 i=U[h]h="new"o=i[h]h=5756.84 i=o(h,g,K)g="Vector3"h=U[g]g="new"K=374.91 o=h[g]g=-12463.87 h=o(g,K,L)K="Vector3"g=U[K]K="new"L=14896.85 o=g[K]K=28282.57 g=o(K,L,a)L="Vector3"K=U[L]L="new"o=K[L]a=1013.0907592773 L=5661.5322265625 K=o(L,a,C)a="Vector3"C=23 L=U[a]a="new"o=L[a]a=5319 L=o(a,C,y)C="Vector3"y=1018 a=U[C]t=-350 C="new"o=a[C]C=5651 a=o(C,y,t)y="Vector3"C=U[y]y="new"o=C[y]y=28286 t=14897 C={o(y,t,R)}O={v,i,h
                                                    g,K,L
                                                    a,I(C)}P={[X]=N
                                                    [G]=Q,[H]=O}N=P Q=P H=n[B[1]]P=H and 8897296 or 9154913 G=H
                                                end
                                            else
                                                v="Value"Q=P o=n[B[4]]O=o[v]o=2600 H=O<o G=H P=H and 3115866 or 440993
                                            end
end
                                    elseif P<11780371 then
                                            if P<11775552 then
                                                if P<11774366 then
                                                    P=177584
                                                else
                                                    P=X and 12251693 or 2205797
                                                end
                                            else
                                                P=12306505
                                            end
                                        elseif P<11800823 then
                                                if P<11791554 then
                                                    P=7125477 Q=nil G=nil
                                                else
                                                    G=n[N]P=11315065 X=G
                                                end
                                            else
                                                P=U["Fi0V75bfCHGn2"]X={}
                                            end
end
                                    end
                                elseif P<11836429 then
                                        if P<11822604 then
                                            if P<11813613 then
                                                if P<11812114 then
                                                    N=nil P=680431 m=nil
                                                else
                                                    P=8919783
                                                end
                                            elseif P<11817955 then
                                                    a=y P=t P=9423918
                                                else
                                                    G=not N d=d+m X=d<=E X=G and X G=d>=E G=N and G X=G or X G=8843253 P=X and G X=4232225 P=P or X
                                                end
end
                                        elseif P<11835325 then
                                                if P<11832746 then
                                                    o="CFrame"O=U[o]P=8877509 o="new"H=O[o]O=H(r)G=O
                                                else
                                                    P=16214721
                                                end
                                            else
                                                N="ESPquantumONYX"m=n[r]P=15166774 d=m[N]m="Destroy"m=d[m]m=m(d)
                                            end
end
                                    elseif P<11847389 then
                                            if P<11845052 then
                                                if P<11840018 then
                                                    v="Agility"o="FindFirstChild"o=Q[o]P=6226668 o=o(Q,v)O=o
                                                else
                                                    Q=290 N="CFrame"X=n[B[2]]m=U[N]N="new"E=m[N]G=73 N=-382 m={E(N,G,Q)}d=X(I(m))m="Diamond, Orbitus, or Jeremy not currently spawned."P=5443154 E="Human V3 Quest"N=8 X=n[B[5]]d=X(E,m,N)
                                                end
                                            else
                                                X={}P=U["BDqyIRyWscXVT"]
                                            end
                                        elseif P<11862839 then
                                                if P<11851499 then
                                                    Q=n[B[2]]H="Character"P=13654676 G=Q[H]Q="FindFirstChild"Q=G[Q]Q=Q(G,r)N=not Q E=N
                                                else
                                                    d="Saber Expert"P=n[B[4]]r={d}X=P(r)r=X P=r and 2523601 or 5734209
                                                end
                                            else
                                                Q="Name"P=G[Q]r=P P=13263905
                                            end
end
                                    end
end
                            elseif P<11916399 then
                                    if P<11889740 then
                                        if P<11872105 then
                                            if P<11870276 then
                                                if P<11870227 then
                                                    P=H H=X P=15295093 o="table"O=U[o]o="insert"X=O[o]o={Q,H}O=X(r,o)H=nil
                                                else
                                                    E=n[B[1]]m="Data"d=E[m]E="Level"r=d[E]d="Value"X=r[d]r=200 P=X>=r P=P and 9655423 or 13354556
                                                end
                                            elseif P<11871518 then
                                                    P=9152716
                                                else
                                                    X="BasePart"P="IsA"P=Q[P]P=P(Q,X)P=P and 3945864 or 8348384
                                                end
end
                                        elseif P<11882671 then
                                                if P<11873586 then
                                                    E="CFrame"H=-0.292404652 P=n[B[8]]d=U[E]N=1739.80884 h=0 G=.956294656 Q=0 O=0 o=1 g=.956294656 m=12.1678171 K=.292404652 i=.292404652 v=0 E="new"r=d[E]E=-1926.78772 d={r(E,m,N,G,Q,H,O,o,v,i,h,g)}H=1739.80884 i=0 X=P(I(d))G="Character"Q=12.1678171 N=n[B[6]]m=N[G]G="CFrame"N="HumanoidRootPart"E=m[N]m="Position"h=1 d=E[m]o=0 N=U[G]L=0 G="new"g=0 m=N[G]a=.956294656 G=-1926.78772 v=-0.292404652 O=.956294656 N=m(G,Q,H,O,o,v,i,h,g,K,L,a)m="Position"E=N[m]r=d-E d="Magnitude"X=r[d]r=5 P=X<=r P=P and 5701595 or 6845384
                                                else
                                                    r="LoadFruit"E="getfruitstore"X="FireInvoke"P=U[X]d=U[E]E={d()}X=P(r,I(E))r="task"X=U[r]r="wait"P=X[r]r=.1 X=P(r)P=7456060
                                                end
                                            else
                                                d,N=E(r,d)P=d and 692652 or 2156582
                                            end
end
                                    elseif P<11908965 then
                                            if P<11902962 then
                                                if P<11892068 then
                                                    d=n[B[1]]E="Data"r=d[E]d="Race"X=r[d]d="Evolved"r="FindFirstChild"r=X[r]r=r(X,d)P=not r P=P and 9927167 or 14338131
                                                else
                                                    Q="Name"G=m[Q]P=431418 Q=nil O="ipairs"H=U[O]i={H(E)}v=i[3]O=i[1]o=i[2]
                                                end
                                            else
                                                P=16114895 v=nil
                                            end
                                        elseif P<11912712 then
                                                if P<11910298 then
                                                    P=n[B[2]]d="rip_indra True Form"r={d}X=P(r)r=X P=r and 13433805 or 11141083
                                                else
                                                    o="pairs"O=U[o]h={O(H)}o=h[1]P=6339323 i=h[3]v=h[2]
                                                end
                                            else
                                                y=P R="table"t=G==R C=t P=t and 16502121 or 5495447
                                            end
end
                                    end
                                elseif P<11955006 then
                                        if P<11940478 then
                                            if P<11925157 then
                                                if P<11918510 then
                                                    X="AutoCraftBait"P=n[B[1]]r=k[1]d=r r=nil P[X]=d P=U["rTreMbS7h4cn"]X={}
                                                else
                                                    r=k[1]P=r and 3743347 or 585817
                                                end
                                            elseif P<11937008 then
                                                    P=n[B[1]]X="Defense"r=k[1]d=r P[X]=d P=U["LOrY6r3SXU2Y"]r=nil X={}
                                                else
                                                    X="Disconnect"P=n[B[4]]X=P[X]X=X(P)P=nil n[B[4]]=P P=15418082
                                                end
end
                                        elseif P<11947863 then
                                                if P<11945499 then
                                                    a=P R="Humanoid"t=i[R]R="Health"y=t[R]t=0 C=y>t L=C P=C and 2183883 or 7514332
                                                else
                                                    r="You Are Lost!"X="error"P=U[X]X=P(r)P=U["MvzJALlRr8zbIa"]X={}
                                                end
                                            else
                                                r=nil P=15506391
                                            end
end
                                    elseif P<11965504 then
                                            if P<11963108 then
                                                if P<11960120 then
                                                    d=true P=n[B[7]]X={P(r,d)}P=U["hTX7xp7zzwVpwr"]X={I(X)}
                                                else
                                                    N=m H="IsA"O="BasePart"H=G[H]H=H(G,O)Q=H P=H and 9133021 or 383661
                                                end
                                            else
                                                P=15749423
                                            end
                                        elseif P<11983166 then
                                                if P<11970687 then
                                                    P=n[B[3]]N=P X=n[r]N=1 Q=n[B[3]]H=n[r]G=Q[H]Q=0 m=G or Q E=m+N P[X]=E m=n[B[3]]N=n[r]E=m[N]m=#d X=E>m P=X and 258560 or 2292153
                                                else
                                                    P=n[B[1]]X="FindFirstChild"X=P[X]r="EmberTemplate"X=X(P,r)r=X P=r and 1165903 or 12541796 X=r
                                                end
                                            else
                                                Q=E P=d[Q]v="isalive"X="HumanoidRootPart"H=P P="FindFirstChild"P=H[P]P=P(H,X)o=U[v]v=o(H)O=P X=v P=v and 14520502 or 4867657
                                            end
end
                                    end
end
                            end
end
                    elseif P<12261698 then
                            if P<12145939 then
                                if P<12085325 then
                                    if P<12009892 then
                                        if P<12003306 then
                                            if P<11992896 then
                                                if P<11986397 then
                                                    P=11421180 K="DepthOfFieldEffect"g="IsA"g=G[g]g=g(G,K)i=g
                                                else
                                                    m="tick"P=E P=U["ywEf8SGM5oPAFj"]E=U[m]m=E()d=X n[B[1]]=m E=d n[B[2]]=E X={d}
                                                end
                                            elseif P<11996486 then
                                                    o=not r X=o P=o and 1392394 or 6204464
                                                else
                                                    E=E+N Q=not G X=E<=m X=Q and X Q=E>=m Q=G and Q X=Q or X Q=6581890 P=X and Q X=9815112 P=P or X
                                                end
end
                                        elseif P<12005715 then
                                                if P<12004814 then
                                                    P=m P=E and 1995727 or 11356642
                                                else
                                                    r="Character"X=n[B[1]]P=X[r]r=S()d=P n[r]=P E=n[r]X=E P=E and 12156253 or 10074146
                                                end
                                            else
                                                o="tonumber"O=U[o]H=P h="match"X=1 E=X i="%d+"h=G[h]v={h(G,i)}o=O(I(v))O=0 g="Venomous Assailant"Q=o or O N=Q h="Hydra Enforcer"O="ipairs"P=5413324 i={h
                                                g}H=U[O]h={H(i)}v=h[3]o=h[2]O=h[1]
                                            end
end
                                    elseif P<12069351 then
                                            if P<12033445 then
                                                if P<12027362 then
                                                    X="EquipToolName"P=U[X]r="Hidden Key"X=P(r)P=5549525
                                                else
                                                    H,v=O(Q,H)P=H and 11516998 or 11631018
                                                end
                                            elseif P<12059782 then
                                                    P=15229712 m=not r X=m
                                                else
                                                    P=U["EYJLNqox9Ias"]r=nil E=nil X={}d=nil
                                                end
end
                                        elseif P<12083565 then
                                                if P<12075121 then
                                                    d="math"X=U[d]d="floor"P=X[d]r=k[1]E=.5 d=r+E X={P(d)}X={I(X)}P=U["z4TA3riMvfds"]
                                                else
                                                    X={}P=U["ev4eSW8YJhvM"]
                                                end
                                            else
                                                r=n[B[1]]d="Remotes"X=r[d]r="Redeem"P=X[r]r=n[B[2]]X="InvokeServer"X=P[X]X=X(P,r)X={}P=U["Y73oO4dMSmmjOi"]
                                            end
end
                                    end
                                elseif P<12118272 then
                                        if P<12106381 then
                                            if P<12092608 then
                                                if P<12088709 then
                                                    r=k[1]X="BringMonster"P=n[B[1]]d=r r=nil P[X]=d X={}P=U["Exr4yPhjrtYiS"]
                                                else
                                                    X={}P=U["gy7tIagMqP38Si"]
                                                end
                                            elseif P<12100887 then
                                                    P=r m=W(9517501,{B[2]})d="pcall"n[B[1]]=P X=U[d]N={X(m)}d=N[1]E=N[2]m="pcall"G=p(5415200,{B[2]})X=U[m]Q={X(G)}N=Q[2]m=Q[1]X={}n[B[3]]=X H=P G={}n[B[4]]=G P=d and 8642308 or 15582294 Q=d
                                                else
                                                    m="getgenv"E=U[m]m=E()E="GiaHuyHUB"d=m[E]P=d and 1565257 or 12139320
                                                end
end
                                        elseif P<12115803 then
                                                if P<12115080 then
                                                    X=n[B[1]]r="AutoDBV2"P=X[r]P=P and 14771224 or 4099427
                                                else
                                                    i="CFrame"v=U[i]P=9863465 i="new"o=v[i]v=o(r)H=v
                                                end
                                            else
                                                r="AutoPray"X=n[B[1]]P=X[r]P=P and 4549249 or 91335
                                            end
end
                                    elseif P<12132750 then
                                            if P<12130639 then
                                                if P<12125100 then
                                                    P=n[B[1]]X=P(r)d=X P=d and 8201055 or 7526897
                                                else
                                                    X={X}P=U["GsNPGzg2lHsh18"]
                                                end
                                            else
                                                X="next"P=U[X]G="getInventory"d=k[2]m="FireInvoke"X=U[m]r=k[1]E=k[3]Q={X(G)}G=P m=Q[1]P=14508047 N=Q[2]
                                            end
                                        elseif P<12138175 then
                                                if P<12134534 then
                                                    G="getfruitstore"m=P Q=true N=U[G]G=N(Q)P=G and 15048524 or 15673081 E=G
                                                else
                                                    X={}P=U["R934tCUCAzu8"]d=nil r=nil E=nil
                                                end
                                            else
                                                N="Players"m=true e="GuideModule"E="getgenv"d=U[E]g="Data"E=d()d="GiaHuyHUB"E[d]=m h="CommF_"Q="CollectionService"E="game"m="Workspace"d=U[E]q="WaitForChild"E="GetService"E=d[E]E=E(d,m)m="game"d=S()n[d]=E E=U[m]v="LocalPlayer"m="GetService"m=E[m]R="Modules"K="Enemies"t="_WorldOrigin"m=m(E,N)H="RunService"G="ReplicatedStorage"E=S()n[E]=m N="game"m=U[N]N="GetService"N=m[N]N=N(m,G)m=S()G="game"n[m]=N N=U[G]G="GetService"G=N[G]G=G(N,Q)Q="game"N=S()n[N]=G G=U[Q]i="Remotes"Q="GetService"Ud=2753915549 Q=G[Q]Q=Q(G,H)o="TeleportService"O="Lighting"G=S()H="game"n[G]=Q D="HttpGet"Q=U[H]H="GetService"H=Q[H]H=H(Q,O)Q=S()n[Q]=H O="game"H=U[O]O="GetService"O=H[O]O=O(H,o)H=S()n[H]=O o=n[E]O=o[v]o=S()n[o]=O v="WaitForChild"O=n[m]v=O[v]v=v(O,i)O=S()n[O]=v v=n[O]i="WaitForChild"i=v[i]y="Map"i=i(v,h)v=S()n[v]=i i=n[o]h="WaitForChild"h=i[h]h=h(i,g)g="Level"i="WaitForChild"i=h[i]i=i(h,g)h=S()n[h]=i x="require"g="WaitForChild"i=n[d]g=i[g]g=g(i,K)K="WaitForChild"i=S()n[i]=g g=n[d]K=g[K]K=K(g,y)g=S()n[g]=K y="WaitForChild"K=n[d]y=K[y]y=y(K,t)t="WaitForChild"K=n[m]t=K[t]t=t(K,R)K="WaitForChild"R="Net"K=t[K]K=K(t,R)R=S()n[R]=K K=U[x]M=n[m]q=M[q]z={q(M,e)}x=K(I(z))K=S()M="loadstring"jd="HttpGet"n[K]=x q="https://raw.githubusercontent.com/flazhy/GiaHuyHUB/refs/heads/main/Util/BloxFruitModule/Loops.lua"x=U[M]e="game"z=U[e]D=z[D]e={D(z,q)}z="loadstring"M=x(I(e))D="https://raw.githubusercontent.com/flazhy/GiaHuyHUB/refs/heads/main/Util/BloxFruitModule/Quests.lua"x=M()M=U[z]q="game"u="HttpGet"e=U[q]u=e[u]q={u(e,D)}z=M(I(q))e="loadstring"M=z()D="game"u="https://raw.githubusercontent.com/flazhy/GiaHuyHUB/refs/heads/main/Util/Library.lua"z=S()n[z]=M M=U[e]q=U[D]jd=q[jd]D={jd(q,u)}e=M(I(D))M=e()e=S()n[e]=M M={}q=S()n[q]=M u="game"D=U[u]u="PlaceId"M=D[u]D=S()n[D]=M V=n[D]jd=V==Ud u=P M=jd P=jd and 16086459 or 7427870
                                            end
end
                                    end
end
                            elseif P<12221387 then
                                    if P<12181499 then
                                        if P<12163578 then
                                            if P<12161755 then
                                                if P<12157056 then
                                                    N="Head"m="FindFirstChild"E=n[r]P=10074146 m=E[m]m=m(E,N)X=m
                                                else
                                                    P=true P=P and 7268370 or 11280398
                                                end
                                            elseif P<12162605 then
                                                    P=n[B[2]]P=P and 13132322 or 14215256
                                                else
                                                    P=12610973
                                                end
end
                                        elseif P<12170655 then
                                                if P<12164521 then
                                                    P={}E=n[B[9]]d=1 m=E r=P E=1 N=E P=16651102 E=0 G=N<E E=d-N
                                                else
                                                    X="checkelites"P=U[X]X=P()r=X P=r and 4828709 or 8164528
                                                end
                                            else
                                                d=n[B[2]]E="TrainMethod"X=d[E]d="Cakes"P=X==d P=P and 13003323 or 2417032
                                            end
end
                                    elseif P<12208437 then
                                            if P<12192848 then
                                                if P<12185141 then
                                                    P=X and 12506325 or 4203602
                                                else
                                                    d="Jeremy"P=n[B[6]]X=P(d)P=X and 13730050 or 11146740
                                                end
                                            else
                                                X="FireInvoke"P=U[X]m="IndraTalk"X=P(m)X=0 P=r==X P=P and 3740381 or 9536041
                                            end
                                        elseif P<12218697 then
                                                if P<12212176 then
                                                    O=P Q=P i="typeof"v=U[i]i=v(r)v="Vector3"o=i==v H=o P=o and 12115745 or 9863465
                                                else
                                                    P=n[B[1]]X=P()P=U["8lWwMrVsc22cN"]X={}
                                                end
                                            else
                                                E=n[B[5]]P=E and 2975413 or 14154635
                                            end
end
                                    end
                                elseif P<12252195 then
                                        if P<12232216 then
                                            if P<12231735 then
                                                if P<12224905 then
                                                    X=m P=N P=4559729
                                                else
                                                    Ad[17]=P Ad[18]=n[E]P=Ad[18]and 15868402 or 13414871 Ad[16]=Ad[18]
                                                end
                                            elseif P<12232044 then
                                                    r=nil P=U["JJ8KptPsZot1Zg"]X={}
                                                else
                                                    v="CheckTool"o=U[v]v=o(G)O=not v P=O and 16123292 or 10119348
                                                end
end
                                        elseif P<12239531 then
                                                if P<12234266 then
                                                    P=U["JSnfXrHOJHyTL"]X={}
                                                else
                                                    X="fireclickdetector"P=U[X]Q="CircleIsland"G=n[B[2]]N=G[Q]G="RaidSummon"m=N[G]N="Button"E=m[N]m="Main"d=E[m]E="ClickDetector"r=d[E]X=P(r)P=3992843
                                                end
                                            else
                                                X="tostring"Q=nil P=U[X]X=P(G)G=nil P=4232225 r=X
                                            end
end
                                    elseif P<12260789 then
                                            if P<12259615 then
                                                if P<12254039 then
                                                    o=P i="PrimaryPart"v=G[i]P=v and 10608979 or 8327343 O=v
                                                else
                                                    i="HumanoidRootPart"X=n[B[2]]K=0 v=G[i]h="CFrame"i="CFrame"o=v[i]i=U[h]h="new"v=i[h]g=8 h=0 i=v(h,g,K)g="math"O=o*i i="CFrame"v=U[i]i="Angles"o=v[i]h=U[g]g="rad"P=9342402 i=h[g]g=-45 h=i(g)g=0 i=0 v=o(h,i,g)H=O*v Q=X(H)
                                                end
                                            else
                                                P=n[B[1]]P=P and 777597 or 4732852
                                            end
                                        elseif P<12261240 then
                                                if P<12261088 then
                                                    P=2721692 m="FindFirstChild"N="Head"E=n[r]m=E[m]m=m(E,N)X=m
                                                else
                                                    P=X and 13183558 or 15582787
                                                end
                                            else
                                                P=n[B[1]]r=k[1]X="AutoActiveRaceV4"d=r P[X]=d d="task"X=U[d]d="spawn"P=X[d]d=w(10441997,{B[1]
                                                B[2]})X=P(d)r=nil P=U["S748Y6ZT1SWD"]X={}
                                            end
end
                                    end
end
                            end
                        elseif P<12351623 then
                                if P<12305393 then
                                    if P<12276519 then
                                        if P<12266499 then
                                            if P<12264692 then
                                                if P<12263901 then
                                                    N=not m P=N and 7861053 or 11894563
                                                else
                                                    O=P i="Parent"v=G[i]i="FindFirstChild"h="Humanoid"i=v[i]i=i(v,h)o=not i P=o and 7753020 or 3922235 H=o
                                                end
                                            elseif P<12266317 then
                                                    H="Parent"Q=n[d]P=12373553 G=Q[H]N=not G E=N
                                                else
                                                    i="Instance"X=U[i]i="new"P=X[i]i="BodyVelocity"X=P(i)P="Name"i="BodyVelocity"v=X g="Vector3"v[P]=i P="MaxForce"h=U[g]g="new"L=1000000000.0 i=h[g]g=1000000000.0 K=1000000000.0 h=i(g,K,L)v[P]=h g="Vector3"h=U[g]g="zero"i=h[g]P="Velocity"v[P]=i i=O P="Parent"v[P]=i P=15295357
                                                end
end
                                        elseif P<12269398 then
                                                if P<12266944 then
                                                    r="LightingLayers"X=n[B[2]]P=X[r]X="Destroy"X=P[X]X=X(P)P=8040304
                                                else
                                                    P=v O=o P=8288562
                                                end
                                            else
                                                H=o P=v P=9103540
                                            end
end
                                    elseif P<12283529 then
                                            if P<12280594 then
                                                if P<12277888 then
                                                    E="save"r=k[1]d=n[B[1]]X=d[E]d=false P=X~=d P=P and 9447641 or 4303480
                                                else
                                                    Ad[41]="SelectMaterial"Ad[45]=true Ad[47]=true Ad[46]=true Ad[39]="CreateDropdown"Ad[44]="global"Ad[40]="Select Material"Ad[42]="Leather + Scrap Metal"Ad[43]={[Ad[44]]=Ad[45]}Ad[38]=U[Ad[39]]Ad[39]=Ad[38](Ad[30],Ad[40],Ad[41],Ad[42],Ad[33],Ad[43])Ad[41]=false Ad[45]="stop"Ad[43]="global"Ad[40]="AutoMaterial"Ad[44]=true Ad[39]="Auto Farm Material"Ad[42]={[Ad[43]]=Ad[44],[Ad[45]]=Ad[46]}Ad[38]=Ad[13](Ad[30],Ad[39],Ad[40],Ad[41],Ad[42])Ad[39]="Tyrant Farm"Ad[41]="AutoTyrantOfTheSkies"Ad[44]="global"Ad[38]="addMenu"Ad[42]=false Ad[38]=Ad[32][Ad[38]]Ad[40]="Auto Summon Kill Tyrant Of The Skies"Ad[38]=Ad[38](Ad[32],Ad[39])Ad[46]="stop"Ad[45]=true Ad[43]={[Ad[44]]=Ad[45],[Ad[46]]=Ad[47]}Ad[48]=true Ad[39]=Ad[13](Ad[38],Ad[40],Ad[41],Ad[42],Ad[43])Ad[40]="Chest Farm"Ad[41]="Start Farming Chest"Ad[47]="stop"Ad[39]="addMenu"Ad[39]=Ad[32][Ad[39]]Ad[46]=true Ad[42]="AutoChestSafe"Ad[39]=Ad[39](Ad[32],Ad[40])Ad[45]="global"Ad[44]={[Ad[45]]=Ad[46]
                                                    [Ad[47]]=Ad[48]}Ad[43]=false Ad[45]="global"Ad[40]=Ad[13](Ad[39],Ad[41],Ad[42],Ad[43],Ad[44])Ad[46]=true Ad[42]="StopChest"Ad[41]="Stop If Items"Ad[43]=false Ad[44]={[Ad[45]]=Ad[46]}Ad[40]=Ad[13](Ad[39],Ad[41],Ad[42],Ad[43],Ad[44])Ad[41]=W(5350066,{q})Ad[40]=x(Ad[41])Ad[41]=b(13496778,{q})Ad[40]=x(Ad[41])Ad[41]=Y(7889375,{q})Ad[40]=x(Ad[41])Ad[41]=Y(1851025,{q})Ad[40]=x(Ad[41])Ad[41]=b(3997292,{q})Ad[43]=P Ad[40]=x(Ad[41])Ad[41]=b(12894938,{q})Ad[40]=x(Ad[41])Ad[41]=p(13161224,{q
                                                    Ad[26]})Ad[40]=x(Ad[41])Ad[41]="Player"Ad[40]=Ad[14][Ad[41]]Ad[41]="addSection"Ad[41]=Ad[40][Ad[41]]Ad[41]=Ad[41](Ad[40])Ad[40]="addMenu"Ad[40]=Ad[41][Ad[40]]Ad[42]="Stats"Ad[40]=Ad[40](Ad[41],Ad[42])Ad[44]=n[o]P=Ad[44]and 250444 or 1792263 Ad[42]=Ad[44]
                                                end
                                            else
                                                O=10 P=n[B[11]]H="Max Vision reached!"d="Observation"r=P(d,H,O)P=6203786
                                            end
                                        elseif P<12300087 then
                                                if P<12286557 then
                                                    X="Demon Fruit"P=r(X)P=7717909
                                                else
                                                    P=U["T2s3t0VX3VPib"]X={}
                                                end
                                            else
                                                i="Particles"v=Q[i]i="Main"o=v[i]v="Enabled"O=o[v]H=not O X=H P=11775195
                                            end
end
                                    end
                                elseif P<12331884 then
                                        if P<12326297 then
                                            if P<12322656 then
                                                if P<12314977 then
                                                    P=true P=P and 11779764 or 15467777
                                                else
                                                    X="TweenSpeed"P=n[B[1]]r=k[1]d=r P[X]=d P=U["7isyeXIcseUpj"]r=nil X={}
                                                end
                                            elseif P<12325297 then
                                                    X="pcall"r=b(3281754,{B[1],B[2]
                                                    B[3]
                                                    B[4]})P=U[X]X=P(r)P=U["hymvZu8CTINhiT"]X={}
                                                else
                                                    X="AimbotPos"P=n[B[1]]r=k[1]d=r r=nil P[X]=d X={}P=U["3sLp46DrCfIT"]
                                                end
end
                                        elseif P<12330666 then
                                                if P<12328267 then
                                                    Q=n[B[4]]P=11492998 v="CFrame"i=6 o=U[v]v="new"O=o[v]v=-9529 h=6039 o={O(v,i,h)}H=Q(I(o))
                                                else
                                                    X="AutoBartiloQuest"P=U[X]X=P()P=6835019
                                                end
                                            else
                                                Q,o=H(G,Q)P=Q and 16553591 or 3679671
                                            end
end
                                    elseif P<12345225 then
                                            if P<12342761 then
                                                if P<12341868 then
                                                    i="Name"v=H[i]o=v==d X=o P=15258942
                                                else
                                                    X=n[B[1]]r=X()X=1 P=r[X]r=P P=n[B[2]]X=P(r)d=X X="GetNearest"P=U[X]X=P()m=n[B[3]]E=X X=m P=m and 5544963 or 15757636
                                                end
                                            else
                                                P=n[B[1]]X=P()X={}P=U["m4Wa05xmDzDMrQ"]
                                            end
                                        elseif P<12350337 then
                                                if P<12347267 then
                                                    P=X and 1311416 or 13643762
                                                else
                                                    X="pcall"P=U[X]r=w(15902668,{B[1]})X=P(r)P=1425762
                                                end
                                            else
                                                r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 2832146 or 2433054
                                            end
end
                                    end
end
                            elseif P<12424956 then
                                    if P<12374390 then
                                        if P<12363497 then
                                            if P<12360749 then
                                                if P<12356997 then
                                                    E,G=m(d,E)P=E and 14111295 or 8907478
                                                else
                                                    P=o X=O P=1551605
                                                end
                                            elseif P<12362868 then
                                                    E="Forest Pirate"P=n[B[4]]d=P(E)P=d and 5346906 or 3841026
                                                else
                                                    o="HumanoidRootPart"O=Q[o]P=11869732 X=O
                                                end
end
                                        elseif P<12366442 then
                                                if P<12365962 then
                                                    N="Sea_2"P=14154635 m=n[B[3]]E=m[N]X=E[r]d=X
                                                else
                                                    h="string"i=U[h]g="Name"o=P h="find"v=i[h]h=G[g]i=v(h,r)P=i and 5705674 or 11622674 O=i
                                                end
                                            else
                                                P=m P=E and 4292211 or 16094613
                                            end
end
                                    elseif P<12398867 then
                                            if P<12391779 then
                                                if P<12383667 then
                                                    X=n[B[1]]r="AutoTrain"P=X[r]P=P and 4290506 or 7796203
                                                else
                                                    kd=100117331123089 Id=n[D]P=3165526 Ud=Id==kd M=Ud
                                                end
                                            else
                                                r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 9503317 or 13254831
                                            end
                                        elseif P<12417968 then
                                                if P<12404423 then
                                                    P=n[B[1]]X=E P[d]=X P=3658564
                                                else
                                                    E="ServerState"d="GetAttribute"d=r[d]d=d(r,E)E="Unknown"X=d or E d=X E=n[B[3]]X=d~=E P=X and 1744733 or 8368645
                                                end
                                            else
                                                H=o P=v P=4162713
                                            end
end
                                    end
                                elseif P<12472734 then
                                        if P<12459452 then
                                            if P<12439377 then
                                                if P<12430639 then
                                                    P=6203786 d=nil r=nil
                                                else
                                                    P=7558633
                                                end
                                            elseif P<12443990 then
                                                    G=not N d=d+m X=d<=E X=G and X G=d>=E G=N and G X=G or X G=4915676 P=X and G X=11834002 P=P or X
                                                else
                                                    d=d+m G=not N X=d<=E X=G and X G=d>=E G=N and G X=G or X G=5846290 P=X and G X=16462474 P=P or X
                                                end
end
                                        elseif P<12467571 then
                                                if P<12466176 then
                                                    m="Character"P=3375058 E=n[B[1]]d=E[m]m="HumanoidRootPart"E="FindFirstChild"E=d[E]E=E(d,m)r=not E X=r
                                                else
                                                    m=nil P=U["7qgldhqtuAj1"]X={}
                                                end
                                            else
                                                P=8017339 o=n[B[2]]h="CFrame"i=H[h]v=o(i)v="fireproximityprompt"o=U[v]v=o(O)
                                            end
end
                                    elseif P<12493162 then
                                            if P<12482189 then
                                                if P<12479467 then
                                                    d,N=E(r,d)P=d and 15845466 or 15373441
                                                else
                                                    E="CFrame"N=-5923 P=n[B[3]]m=329 d=U[E]E="new"r=d[E]E=-5533 d={r(E,m,N)}X=P(I(d))P=578168
                                                end
                                            else
                                                m=P G="Sword"N=r==G P=N and 16222595 or 2429809 X=N
                                            end
                                        elseif P<12500178 then
                                                if P<12495522 then
                                                    P=6660300 d=nil
                                                else
                                                    X="ipairs"G="ChestModels"P=U[X]N="WaitForChild"m=n[B[2]]N=m[N]N=N(m,G)G="GetChildren"G=N[G]m={G(N)}N={P(I(m))}X=N[1]P=12356975 E=N[3]d=N[2]m=X
                                                end
                                            else
                                                X="EquipSword"m="Saishi"P=U[X]X=P(m)X="CustomFarm"P=U[X]X=P()P=12061423
                                            end
end
                                    end
end
                            end
end
                    end
end
            end
        elseif P<14738617 then
                if P<13600419 then
                    if P<13029487 then
                        if P<12763724 then
                            if P<12597102 then
                                if P<12557317 then
                                    if P<12541681 then
                                        if P<12520559 then
                                            if P<12511718 then
                                                if P<12508212 then
                                                    X=r P=d P=11642805
                                                else
                                                    X=n[B[1]]r="AutoQuestBlaze"P=X[r]P=P and 6347367 or 13677314
                                                end
                                            elseif P<12516007 then
                                                    P=8130596 E=nil
                                                else
                                                    r="task"X=U[r]r="wait"E="CFrame"P=X[r]r=.3 X=P(r)X="TempleTimeStash"P=U[X]X=P()d="Teleport"X="FireInvoke"P=U[X]r="RaceV4Progress"m=14937 X=P(r,d)P=n[B[1]]d=U[E]E="new"r=d[E]E=28575 N=72 d={r(E,m,N)}X=P(I(d))P=10540450
                                                end
end
                                        elseif P<12538153 then
                                                if P<12533587 then
                                                    r="task"X=U[r]r="wait"P=X[r]r="PrehistoricIsland"X=P()X=n[B[2]]P=X[r]r="TrialTeleport"X="FindFirstChild"X=P[X]X=X(P,r)r=X X=r P=r and 3086128 or 16407515
                                                else
                                                    P=14845430
                                                end
                                            else
                                                G=n[B[1]]Q="Data"N=G[Q]G="Beli"m=N[G]N="Value"X=m[N]m=2000000 P=X<m P=P and 11728149 or 14879237
                                            end
end
                                    elseif P<12552256 then
                                            if P<12542926 then
                                                if P<12542487 then
                                                    P=X and 5352429 or 6623345
                                                else
                                                    r=false X={r}P=U["jPF05mtCgg1VP"]
                                                end
                                            elseif P<12544501 then
                                                    d="Holy Torch"r="CheckTool"X=U[r]r=X(d)P=not r P=P and 12579699 or 12992981
                                                else
                                                    P=X and 11398310 or 4519814
                                                end
end
                                        elseif P<12556393 then
                                                if P<12553337 then
                                                    P=X and 231447 or 1058732
                                                else
                                                    P=U["X2N5SJxTX3i8T6"]X={}
                                                end
                                            else
                                                d=true P=n[B[1]]X=n[r]P[X]=d d="task"X=U[d]d="wait"P=X[d]d=1.5 X=P(d)d=n[B[2]]E=n[r]X=d[E]P=not X P=P and 15965861 or 13945431
                                            end
end
                                    end
                                elseif P<12574331 then
                                        if P<12567928 then
                                            if P<12564762 then
                                                if P<12563719 then
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 9486819 or 9092023
                                                else
                                                    E="Fist of Darkness"P=4605560 r=n[B[2]]d=r(E)X=d
                                                end
                                            elseif P<12566673 then
                                                    N="Controllers"X="require"P=U[X]m=n[B[1]]E=m[N]m="UI"d=E[m]E="FruitShop"r=d[E]X=P(r)P="Open"P=X[P]r="AdvancedFruitDealer"P=P(X,r)X={}P=U["5ZMzQNrUCFuCoV"]
                                                else
                                                    P=5846825 E=n[B[1]]m="Character"d=E[m]X=d
                                                end
end
                                        elseif P<12569036 then
                                                if P<12568741 then
                                                    O="IsA"O=N[O]H=P o="Model"O=O(N,o)P=O and 2697864 or 9386249 Q=O
                                                else
                                                    O="CanCollide"H=N[O]Q=not H X=Q P=9955215
                                                end
                                            else
                                                P=n[B[1]]X={P}P=U["NX7Jp30mHbJP"]
                                            end
end
                                    elseif P<12582424 then
                                            if P<12576605 then
                                                if P<12575301 then
                                                    i="Color3"v=U[i]P=5425571 i="fromRGB"o=v[i]h=242 g=255 i=185 v=o(i,h,g)o="rbxassetid://127242907265007"i="Diamond Chest"n[m]=v n[N]=o n[G]=i
                                                else
                                                    X="tick"P=U[X]X=P()n[B[4]]=X P=r n[B[3]]=P P=8268133
                                                end
                                            else
                                                N=255 P=n[B[2]]E="CFrame"d=U[E]m=19 E="new"r=d[E]E=5713 d={r(E,m,N)}X={P(I(d))}X={I(X)}P=U["f4NRcPZ7Aq6hV"]
                                            end
                                        elseif P<12591463 then
                                                if P<12591080 then
                                                    r="task"X=U[r]r="wait"P=X[r]r=1 X=P(r)P=X and 1858884 or 4939259
                                                else
                                                    N="string"X=U[N]N="format"P=X[N]N="%dm %ds"X={P(N,E,m)}X={I(X)}P=U["oFAZHG6hZAyEs"]
                                                end
                                            else
                                                P=15965805 d=nil
                                            end
end
                                    end
end
                            elseif P<12693863 then
                                    if P<12670761 then
                                        if P<12632716 then
                                            if P<12611692 then
                                                if P<12607541 then
                                                    v="global"o=n[G]O=o[v]X=O P=14358776
                                                else
                                                    r=nil P=3956664
                                                end
                                            elseif P<12615764 then
                                                    E=P G="string"N=U[G]Q="Text"G="find"m=N[G]G=r[Q]Q="50"N=m(G,Q)P=N and 6805499 or 2936630 d=N
                                                else
                                                    P=U["WawkheVMwFjy"]X={X}
                                                end
end
                                        elseif P<12645317 then
                                                if P<12641362 then
                                                    t="IslandChunks"C=P K="FindFirstChild"L="Eye1"K=h[K]K=K(h,L)L="FindFirstChild"a="Eye2"L=h[L]y="FindFirstChild"L=L(h,a)y=h[y]y=y(h,t)P=y and 3302031 or 9423918 a=y
                                                else
                                                    L="^(.-)%-"h=P K="Name"g=v[K]K="match"K=g[K]K=K(g,L)i=K P=K and 7262067 or 1098949
                                                end
                                            else
                                                P=n[B[1]]X=P()X={}P=U["3cawVrXU9wRRl"]
                                            end
end
                                    elseif P<12689389 then
                                            if P<12682441 then
                                                if P<12673233 then
                                                    o="CFrame"G="Bushes"g="Vector3"N=E U[G]=N i="GetPivot"G=n[B[3]]y=0 O=U[o]o="new"H=O[o]i=E[i]L=2 i=i(E)h="Position"v=i[h]h=U[g]g="new"i=h[g]g=0 h=i(g,L,y)o=v+h O={H(o)}H="task"Q=G(I(O))Q=U[H]H="wait"G=Q[H]H=.3 Q=G(H)Q="Berries"G="FindFirstChild"G=E[G]G=G(E,Q)P=G and 12760140 or 6155837
                                                else
                                                    d=P m=n[B[2]]G="IslandRaiding"N="GetAttribute"N=m[N]N=N(m,G)E=not N P=E and 8251833 or 11465521 r=E
                                                end
                                            else
                                                d,N=E(r,d)P=d and 3172755 or 2222983
                                            end
                                        elseif P<12690264 then
                                                if P<12690087 then
                                                    N=P Q="HumanoidRootPart"G="FindFirstChild"G=r[G]G=G(r,Q)m=G P=G and 9294705 or 1566105
                                                else
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 7980911 or 10609744
                                                end
                                            else
                                                X="AutoFarmMaterial"P=U[X]X=P()P=U["ccb6ZXkiXvxaaE"]X={}
                                            end
end
                                    end
                                elseif P<12719968 then
                                        if P<12699260 then
                                            if P<12696384 then
                                                if P<12695553 then
                                                    P=3295262
                                                else
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()X="FindFirstChild"P=n[B[2]]X=P[X]r="RF/KitsuneStatuePray"X=X(P,r)P="InvokeServer"P=X[P]P=P(X)P=2015188
                                                end
                                            elseif P<12698690 then
                                                    P=X and 7922835 or 3467707
                                                else
                                                    K="table"g=U[K]K="insert"P=h C="string"h=g[K]K=n[B[4]]x="Price"a=U[C]C="format"L=a[C]y=n[B[5]]P=15208720 R=v[x]t={y(R)}C="<font color=\"#FFD700\">[ ★ ]</font> %s - $%s"a={L(C,i,I(t))}i=nil g=h(K,I(a))
                                                end
end
                                        elseif P<12709587 then
                                                if P<12704331 then
                                                    X="FireInvoke"d="AbandonQuest"P=U[X]X=P(d)P=3519122
                                                else
                                                    d,N=E(r,d)P=d and 8438957 or 4970676
                                                end
                                            else
                                                o=nil O=nil H=nil P=8543002
                                            end
end
                                    elseif P<12754594 then
                                            if P<12749189 then
                                                if P<12729860 then
                                                    o,i=H(O,o)P=o and 9703655 or 3766942
                                                else
                                                    P=E P=X and 4473498 or 2441236
                                                end
                                            else
                                                P=14677203
                                            end
                                        elseif P<12763630 then
                                                if P<12760267 then
                                                    Q="next"H="Berries"P=9026068 G=U[Q]Q=E[H]o="GetChildren"o=Q[o]o={o(Q)}O=o[2]H=o[1]
                                                else
                                                    d="SaveManager"X=n[B[1]]P=X[d]d=n[B[2]]r=k[1]X="Set"X=P[X]X=X(P,d,r)d=n[B[3]]X=d P=d and 9633658 or 15462236
                                                end
                                            else
                                                o,v=H(O,o)P=o and 4584781 or 2552157
                                            end
end
                                    end
end
                            end
                        elseif P<12920257 then
                                if P<12843249 then
                                    if P<12801015 then
                                        if P<12784053 then
                                            if P<12778047 then
                                                if P<12766827 then
                                                    r="rip_indra True Form"P=n[B[1]]X=P(r)P=X and 11910287 or 2051472
                                                else
                                                    P="LastUpdate"X=E r[P]=X X="CFrame"m=d P=n[B[1]]P[X]=m P=4655315
                                                end
                                            elseif P<12779306 then
                                                    P=5072299
                                                else
                                                    P=U["xsDoDEbJq2UbZg"]X={}d=nil E=nil r=nil
                                                end
end
                                        elseif P<12785779 then
                                                if P<12784276 then
                                                    r="TeleportKitsune"X=n[B[1]]P=X[r]P=P and 7005202 or 3886371
                                                else
                                                    y="l2"P=U[y]y="l1"U[y]=P P=4885646
                                                end
                                            else
                                                r="AutoMirageIsland"X=n[B[1]]P=X[r]P=P and 5225702 or 11696195
                                            end
end
                                    elseif P<12834234 then
                                            if P<12824807 then
                                                if P<12803923 then
                                                    d=n[B[3]]X=d P=d and 2831959 or 12550427
                                                else
                                                    r=nil P=273094
                                                end
                                            elseif P<12830395 then
                                                    P=H and 11316541 or 913249
                                                else
                                                    P=n[B[5]]E="CFrame"m=299 d=U[E]N=-6968 E="new"r=d[E]E=6571 d={r(E,m,N)}X=P(I(d))P=5549525
                                                end
end
                                        elseif P<12838918 then
                                                if P<12836691 then
                                                    E=P m="FindFirstChild"m=r[m]N="Humanoid"m=m(r,N)d=m P=m and 12689398 or 3360923
                                                else
                                                    d=nil P=5888639 E="Bushes"U[E]=d
                                                end
                                            else
                                                P=U["xOpXUSl8JQ2ax"]X={r}
                                            end
end
                                    end
                                elseif P<12887022 then
                                        if P<12867464 then
                                            if P<12863205 then
                                                if P<12860390 then
                                                    X="pcall"P=U[X]r=n[B[1]]X=P(r)P=U["jgbpNgUHCV2lb"]X={}
                                                else
                                                    X="RemoveAnimationFast"r=k[1]d=r r=nil P=n[B[1]]P[X]=d P=U["yGP05vuwoMH6Jz"]X={}
                                                end
                                            elseif P<12864511 then
                                                    O=10 N=O P=9447522 H=2 E=H
                                                else
                                                    H="HumanoidRootPart"G=P Q="FindFirstChild"Q=N[Q]Q=Q(N,H)P=Q and 204087 or 11632330 X=Q
                                                end
end
                                        elseif P<12874130 then
                                                if P<12870422 then
                                                    P=n[B[1]]r=k[1]X="AutoStoreFruit"d=r P[X]=d d="task"X=U[d]d="spawn"P=X[d]r=nil d=p(11086676,{B[1],B[2],B[3]})X=P(d)P=U["mYuq2K9DakvA"]X={}
                                                else
                                                    P=U["cyYWOXYg7Zzzsz"]X={}
                                                end
                                            else
                                                X="tonumber"P=U[X]m="tostring"O=w(15558070,{})r=n[B[4]]H="pcall"E=U[m]Q=U[H]H={Q(O)}G={I(H)}Q=2 N=G[Q]m=E(N)E=":(%d*):"d=r(m,E)r={d()}X=P(I(r))d=n[B[5]]r=X P=d and 1167116 or 9065183 X=d
                                            end
end
                                    elseif P<12900022 then
                                            if P<12896595 then
                                                if P<12889187 then
                                                    r="Order"P=n[B[1]]X=P(r)P=X and 1600843 or 1370927
                                                else
                                                    r="AutoMaterial"X=n[B[1]]P=X[r]P=P and 10467428 or 4245399
                                                end
                                            else
                                                m="Gun"X=d==m P=X and 8909774 or 14580106
                                            end
                                        elseif P<12907941 then
                                                if P<12903333 then
                                                    X="AutoTaskRengoku"P=U[X]X=P()P=3035366
                                                else
                                                    rd=P Ed="setmetatable"dd=U[Ed]Ed=n[v]Sd=dd~=Ed P=Sd and 1594278 or 2585479 Bd=Sd
                                                end
                                            else
                                                Xd=n[H]Bd=Xd()P=14195710
                                            end
end
                                    end
end
                            elseif P<12995189 then
                                    if P<12965093 then
                                        if P<12950607 then
                                            if P<12945602 then
                                                if P<12940377 then
                                                    P=7814862
                                                else
                                                    i=P L="Humanoid"K=Q[L]L="Health"g=K[L]K=0 h=g>K P=h and 6265495 or 9825972 v=h
                                                end
                                            elseif P<12946959 then
                                                    P=5491030
                                                else
                                                    v=P g="IsDisabled"h="GetAttribute"h=G[h]h=h(G,g)g=true i=h~=g o=i P=i and 15726725 or 12418757
                                                end
end
                                        elseif P<12954367 then
                                                if P<12951348 then
                                                    o="Distance"g="Position"O="Part"H="table"Q=U[H]i="DistanceFromCharacter"H="insert"P=Q[H]v=n[B[2]]i=v[i]h=G[g]i=i(v,h)H={[O]=G
                                                    [o]=i}Q=P(r,H)P=11249772
                                                else
                                                    H=-2988 d=n[B[3]]G="CFrame"N=U[G]P=U["SVhLeMF8w86e"]Q=314 G="new"m=N[G]G=-5556 N={m(G,Q,H)}E={d(I(N))}X={I(E)}
                                                end
                                            else
                                                Q=nil P=U["WyrMV5gA2RD2L"]X={}n[B[2]]=Q
                                            end
end
                                    elseif P<12979686 then
                                            if P<12979281 then
                                                if P<12977097 then
                                                    o,v=H(O,o)P=o and 10265022 or 4989932
                                                else
                                                    P=d P=not X P=P and 16228657 or 12499825
                                                end
                                            else
                                                P=13645208 o="FindFirstChildOfClass"v="MeshPart"o=H[o]o=o(H,v)X=o
                                            end
                                        elseif P<12991474 then
                                                if P<12986581 then
                                                    P=cd and 12913857 or 14195710
                                                else
                                                    P=6565849 d=nil
                                                end
                                            else
                                                d="TushitaProgress"X="EquipToolName"r="Holy Torch"P=U[X]X=P(r)r="FireInvoke"X=U[r]r=X(d)X="Torches"P=r[X]X=1 r=P d=#r E=d d=1 m=d d=0 P=5785855 N=m<d d=X-m
                                            end
end
                                    end
                                elseif P<13013683 then
                                        if P<13010196 then
                                            if P<13002912 then
                                                if P<13001904 then
                                                    d=n[B[2]]X=d P=5026680
                                                else
                                                    G="Button"X=N[G]G="FindFirstChild"G=X[G]Q="TouchInterest"G=G(X,Q)P=G and 8971116 or 11590419
                                                end
                                            elseif P<13003732 then
                                                    P=n[B[3]]E="Cakes"d=r[E]X=P(d)d=X P=d and 14925720 or 14818356
                                                else
                                                    X={}d=nil r=nil P=U["OgjqQAatCTgcn"]
                                                end
end
                                        elseif P<13013210 then
                                                if P<13011181 then
                                                    P=Q Q="BuyItem"m=G or Q X=P(m,E)P=14580106
                                                else
                                                    Ad[52]=not Ad[49]P=Ad[52]and 10128845 or 2097171
                                                end
                                            else
                                                E="EnableNoclip"X=U[E]P=2765600 E=X()E="DisableCollisions"X=U[E]E=X()
                                            end
end
                                    elseif P<13019170 then
                                            if P<13016582 then
                                                if P<13015420 then
                                                    P=y and 14861069 or 15155281
                                                else
                                                    d="AntiAFK"X=n[B[1]]P=X[d]P=P and 737852 or 16543365
                                                end
                                            else
                                                Q="Data"N=nil E="table"d=U[E]E="find"X=d[E]m="None"E={m,N}G=n[B[2]]N=G[Q]G="FishingData"m=N[G]G="SelectedBait"Q="GetAttribute"Q=m[Q]N={Q(m,G)}d=X(E,I(N))P=d and 13188924 or 2596474
                                            end
                                        elseif P<13024842 then
                                                if P<13022151 then
                                                    x=n[B[2]]M="Character"P=3656006 R=x[M]x="PrimaryPart"t=R[x]R="Position"y=t[R]R="Position"t=i[R]C=y-t y="Magnitude"a=C[y]C=3500 L=a<C g=L
                                                else
                                                    P=""X={P}P=U["k0ngQdmfBZeOjY"]
                                                end
                                            else
                                                P=15300539
                                            end
end
                                    end
end
                            end
end
                    elseif P<13257774 then
                            if P<13125062 then
                                if P<13073034 then
                                    if P<13054093 then
                                        if P<13045982 then
                                            if P<13039618 then
                                                if P<13034185 then
                                                    P=v P=o and 5152637 or 13203774 X=o
                                                else
                                                    P=y and 1967830 or 11733903
                                                end
                                            elseif P<13040440 then
                                                    Q="BringEnemies"X=U[Q]P=G Q=X(r)E=P P=16064683
                                                else
                                                    P=n[B[2]]d="Awakened Ice Admiral"r={d}X=P(r)r=X P=r and 628733 or 9697274
                                                end
end
                                        elseif P<13050288 then
                                                if P<13049464 then
                                                    P=4138153
                                                else
                                                    P=U["48oaWVVQ2xbe"]X={}
                                                end
                                            else
                                                m,Q=N(E,m)P=m and 2592353 or 7155665
                                            end
end
                                    elseif P<13063986 then
                                            if P<13058930 then
                                                if P<13057335 then
                                                    H=O P=o P=566823
                                                else
                                                    X=n[B[1]]r="Character"P=X[r]r=P X=r P=r and 4135346 or 9984915
                                                end
                                            elseif P<13059415 then
                                                    P=6323996 m=nil
                                                else
                                                    h=-500 O="FireServer"i="Vector3"P=1552692 O=Q[O]g=.01 v=U[i]i="new"o=v[i]i=.01 v=o(i,h,g)o=true O=O(Q,v,N,o)
                                                end
end
                                        elseif P<13071136 then
                                                if P<13066271 then
                                                    P=X and 11093818 or 7436919
                                                else
                                                    X={}P=U["mBUv8LhAUXZVM"]
                                                end
                                            else
                                                P=13025155
                                            end
end
                                    end
                                elseif P<13097575 then
                                        if P<13088981 then
                                            if P<13079385 then
                                                if P<13075397 then
                                                    N="Ship Officer"E="Ship Engineer"m="Ship Steward"P=n[B[2]]d="Ship Deckhand"r={d
                                                    E
                                                    m
                                                    N}X=P(r)r=X P=r and 3805251 or 7046971
                                                else
                                                    X="pcall"r=w(970209,{B[1]})P=U[X]X=P(r)P=3884467
                                                end
                                            elseif P<13080866 then
                                                    P=9389117
                                                else
                                                    d,N=E(r,d)P=d and 3678989 or 8696826
                                                end
end
                                        elseif P<13095974 then
                                                if P<13091232 then
                                                    X="pairs"N="GetPlayers"P=U[X]E=n[B[1]]N=E[N]m={N(E)}E={P(I(m))}d=E[3]r=E[2]P=7307571 X=E[1]E=X
                                                else
                                                    P=10453442
                                                end
                                            else
                                                i="DistanceFromCharacter"v=n[B[3]]i=v[i]K="HumanoidRootPart"g=G[K]K="Position"h=g[K]i=i(v,h)v=500 o=i<v H=o P=4150426
                                            end
end
                                    elseif P<13110307 then
                                            if P<13104515 then
                                                if P<13099996 then
                                                    X=n[B[5]]E="Supports Rabbit/Human/Sky V3"N=8 m="wait for me to update all v3, love from flazhy..."P=13921826 d=X(E,m,N)
                                                else
                                                    X={}P=U["yLGp0ZxZJKY7"]
                                                end
                                            else
                                                X="wait"P=U[X]X=P()P=X and 8782647 or 2609711
                                            end
                                        elseif P<13122713 then
                                                if P<13119389 then
                                                    r="ESPPlayer"X=n[B[1]]P=X[r]P=P and 4141641 or 9347649
                                                else
                                                    P=12589629
                                                end
                                            else
                                                P=G P=6361204 E=N
                                            end
end
                                    end
end
                            elseif P<13156314 then
                                    if P<13144873 then
                                        if P<13135925 then
                                            if P<13131996 then
                                                if P<13131495 then
                                                    E="CFrame"P=n[B[3]]d=U[E]E="new"m=329 r=d[E]N=-5923 E=-5533 d={r(E,m,N)}X=P(I(d))P=5388967
                                                else
                                                    X=o P=v P=5152637
                                                end
                                            elseif P<13133196 then
                                                    X="Destroy"P=n[B[2]]X=P[X]X=X(P)P=14215256
                                                else
                                                    Q="Vector3"m="DistanceFromCharacter"E=n[B[3]]G=U[Q]m=E[m]Q="new"N=G[Q]H=141 O=6169 Q=-8654 G={N(Q,H,O)}m=m(E,I(G))E=10 d=m<E P=d and 4701280 or 4692372
                                                end
end
                                        elseif P<13141760 then
                                                if P<13137703 then
                                                    r=k[1]P=r and 12834293 or 8365546 X=r
                                                else
                                                    P=2991796
                                                end
                                            else
                                                P=12690227
                                            end
end
                                    elseif P<13149642 then
                                            if P<13147258 then
                                                if P<13146053 then
                                                    r=A(5925289,{B[1]
                                                    B[2],B[3]
                                                    B[4],B[5],B[6]})X="pcall"P=U[X]X=P(r)P=15745862
                                                else
                                                    P=11631038
                                                end
                                            else
                                                r="AutoLawRaid"X=n[B[1]]P=X[r]P=P and 14012592 or 10228674
                                            end
                                        elseif P<13154975 then
                                                if P<13152504 then
                                                    r="RF/InteractDragonQuest"X=n[B[2]]E="Dojo Trainer"N="ClaimQuest"P=X[r]d="NPC"m="Command"r={[d]=E,[m]=N}X="InvokeServer"X=P[X]X=X(P,r)r="task"X=U[r]d="NPC"m="Command"r="wait"P=X[r]r=1 X=P(r)X=n[B[2]]r="RF/InteractDragonQuest"P=X[r]E="Dojo Trainer"N="RequestQuest"X="InvokeServer"X=P[X]r={[d]=E
                                                    [m]=N}X=X(P,r)P=7627122
                                                else
                                                    P=O P=Q and 3695790 or 13417960
                                                end
                                            else
                                                H="Color3"o=140 Q=U[H]H="fromRGB"G=Q[H]H=0 O=255 P=9955028 Q=G(H,O,o)m=Q
                                            end
end
                                    end
                                elseif P<13208845 then
                                        if P<13188173 then
                                            if P<13166480 then
                                                if P<13159838 then
                                                    N=n[B[5]]Q="Cake Prince"G=N(Q)P=G and 1494372 or 927567
                                                else
                                                    X=n[B[1]]r="AutoChestSafe"P=X[r]P=P and 15570074 or 5515466
                                                end
                                            elseif P<13178788 then
                                                    H=P X=n[B[3]]i=4 N=X()o=P o=0 v=N>=i i=.05 O=v and i Q=O or o o=1 X=m+Q O=n[G]m=X H=O[o]O=2 Q=H[O]O="LeftClickRemote"H=S()n[H]=Q Q="FindFirstChild"Q=r[Q]Q=Q(r,O)P=Q and 16685965 or 7018408
                                                else
                                                    d="Remotes"r=n[B[2]]X=r[d]r="CommE"P=X[r]r="ActivateAbility"X="FireServer"X=P[X]X=X(P,r)P=15582787
                                                end
end
                                        elseif P<13190099 then
                                                if P<13189465 then
                                                    Q="getInventory"d="pairs"G="FireInvoke"X=U[d]P=10169205 N=U[G]G={N(Q)}N={X(I(G))}m=N[3]d=N[1]E=N[2]
                                                else
                                                    m=nil P=12704981 N=nil
                                                end
                                            else
                                                i=Q h=P v=P P=Q and 1422654 or 3227647
                                            end
end
                                    elseif P<13217789 then
                                            if P<13210633 then
                                                if P<13210041 then
                                                    P=1994920
                                                else
                                                    P=nil n[B[1]]=P X=n[B[2]]P=X and 4813667 or 260283
                                                end
                                            else
                                                X=n[B[1]]r="AutoMasterySwords"P=X[r]P=P and 647783 or 15877272
                                            end
                                        elseif P<13251396 then
                                                if P<13225835 then
                                                    E="math"O="Position"X=U[E]E="floor"Q="Position"P=X[E]G=d[Q]H=n[B[2]]Q=H[O]N=G-Q G="Magnitude"m=N[G]N=3 H="Character"E=m/N m="math"X=P(E)E=X X=U[m]m="floor"P=X[m]Q=n[B[3]]G=Q[H]Q="Humanoid"N=G[Q]G="Health"m=N[G]X=P(m)O="Character"N="math"m=X X=U[N]N="floor"P=X[N]H=n[B[3]]Q=H[O]H="Humanoid"G=Q[H]Q="MaxHealth"N=G[Q]G="string"O="Name"X=P(N)N=X X=U[G]G="format"P=X[G]G="[ %s | %d Studs | %s ]\n[ HP: %d / %d ]"H=n[B[3]]Q=H[O]H=n[B[4]]X={P(G,Q,E,H,m,N)}P=U["s1Gakg2vR1WK"]X={I(X)}
                                                else
                                                    X="AutoRaidFull"P=U[X]X=P()P=12232577
                                                end
                                            else
                                                P=U["dexmVPh9Aqmj0u"]X={}
                                            end
end
                                    end
end
                            end
                        elseif P<13409040 then
                                if P<13350395 then
                                    if P<13295026 then
                                        if P<13282088 then
                                            if P<13277447 then
                                                if P<13262512 then
                                                    X="AutoUnlockSaber"P=U[X]X=P()P=7192545
                                                else
                                                    G=nil N=nil P=13832886
                                                end
                                            elseif P<13280238 then
                                                    P=1430446 o=v d=o
                                                else
                                                    X="AutoSoulReaper"P=U[X]X=P()P=15589704
                                                end
end
                                        elseif P<13288221 then
                                                if P<13286969 then
                                                    X="wait"P=U[X]X=P()P=X and 6320125 or 4415693
                                                else
                                                    r="AutoThirdSea"X=n[B[1]]P=X[r]P=P and 3203719 or 14990943
                                                end
                                            else
                                                E="Boat Castle"X="next"P=U[X]d=n[B[1]]r=d[E]d="Summoner"E="GetChildren"X=r[d]r="FindFirstChild"r=X[r]d="Circle"r=r(X,d)E=r[E]E={E(r)}X=E[1]d=E[2]E=X r=P P=15994124
                                            end
end
                                    elseif P<13328728 then
                                            if P<13321690 then
                                                if P<13298961 then
                                                    d="Cake Prince"P=n[B[4]]X=P(d)P=X and 14447810 or 9563255
                                                else
                                                    r=k[1]d=k[2]X="__call"P=d==X P=P and 12569454 or 16309291
                                                end
                                            else
                                                P=10176204
                                            end
                                        elseif P<13337536 then
                                                if P<13334763 then
                                                    g="Humanoid"h=N[g]g="Health"o=P i=h[g]h=0 v=i>h O=v P=v and 4364263 or 16503415
                                                else
                                                    N=1 P=11987383 m=d+N X=m
                                                end
                                            else
                                                G=P m=d H="Tool"Q="IsA"Q=N[Q]Q=Q(N,H)X=Q P=Q and 15617377 or 12567930
                                            end
end
                                    end
                                elseif P<13373772 then
                                        if P<13367250 then
                                            if P<13354941 then
                                                if P<13351821 then
                                                    G="Data"N=n[B[1]]m=N[G]N="Race"E=m[N]m="Value"d=E[m]E="Human"X=d==E P=X and 14068478 or 4833741
                                                else
                                                    X={}P=U["cGsmAEk8tW6Idf"]
                                                end
                                            elseif P<13360696 then
                                                    P=n[B[1]]E="game"d=U[E]X="Teleport"E="PlaceId"X=P[X]r=d[E]d=n[B[2]]X=X(P,r,d)P=U["v1yos2Sut7wNLG"]X={}
                                                else
                                                    Ad[100]=n[jd]P=Ad[100]and 8331119 or 9228867
                                                end
end
                                        elseif P<13372875 then
                                                if P<13368356 then
                                                    X="FireInvoke"d="Select"E="Dough"r="RaidsNpc"P=U[X]X=P(r,d,E)P=U["GOJ1ACh9XMcq"]X={}
                                                else
                                                    r="AutoTTK"X=n[B[1]]P=X[r]P=P and 15824813 or 15234620
                                                end
                                            else
                                                P=Q P=G and 16708565 or 5950235
                                            end
end
                                    elseif P<13393625 then
                                            if P<13389540 then
                                                if P<13387814 then
                                                    d="DistanceFromCharacter"X=n[B[1]]N="Vector3"G=73 m=U[N]N="new"E=m[N]d=X[d]N=-2777 Q=-3570 m={E(N,G,Q)}d=d(X,I(m))X=4 P=d<=X P=P and 6107070 or 10515078
                                                else
                                                    g="LastUpdate"L="CurrentCF"K=0 a=nil v=false o="Stop"h=0 i="MinInterval"O={[o]=v
                                                    [i]=h,[g]=K
                                                    [L]=a}o=S()i="SetCF"n[o]=O v=n[o]O=w(7350000,{d})v[i]=O i="Parent"O=n[d]v="GetPropertyChangedSignal"v=O[v]v=v(O,i)i=p(2625749,{B[1],o
                                                    B[5],B[4],d})O="Connect"O=v[O]O=O(v,i)v=Y(4800776,{B[2],B[4],B[1]
                                                    o,m,B[6],d})n[B[4]]=O i=n[B[7]]g=P h=i(G)i=h P=h and 5447462 or 10487023
                                                end
                                            else
                                                m="Distance"r=k[1]E="Distance"X=r[E]d=k[2]E=d[m]P=X<E X={P}P=U["ypnKrcU4KzWX"]
                                            end
                                        elseif P<13404236 then
                                                if P<13395730 then
                                                    r=k[1]E="Distance"d=k[2]X=r[E]m="Distance"E=d[m]P=X<E X={P}P=U["30FcYOfu5O4K"]
                                                else
                                                    i="Tool"o=P v="IsA"v=Q[v]v=v(Q,i)O=v P=v and 6406173 or 14059256
                                                end
                                            else
                                                P=n[B[1]]X=P()X={}P=U["1a6OKOpg3uHDe"]
                                            end
end
                                    end
end
                            elseif P<13492801 then
                                    if P<13450112 then
                                        if P<13434258 then
                                            if P<13424044 then
                                                if P<13417356 then
                                                    Ad[22]=1 P=Ad[17]n[E]=Ad[16]Ad[21]=n[Ad[12]]Ad[20]=Ad[21]+Ad[22]Ad[19]=Ad[9][Ad[20]]Ad[18]=Td+Ad[19]Ad[19]=256 Ad[17]=Ad[18]%Ad[19]Td=Ad[17]Ad[20]=n[Ad[11]]Ad[19]=bd+Ad[20]Ad[20]=256 P=15817441 Ad[18]=Ad[19]%Ad[20]bd=Ad[18]
                                                else
                                                    P=10209691 N=nil H=l(H)
                                                end
                                            elseif P<13428785 then
                                                    P=n[B[1]]r="Head"X="FindFirstChild"X=P[X]X=X(P,r)r=X P=not r P=P and 13024455 or 3001020
                                                else
                                                    P=n[B[3]]X={P(r)}X={I(X)}P=U["W1TOUnjNUOnv"]
                                                end
end
                                        elseif P<13441341 then
                                                if P<13435372 then
                                                    P=v r=P P=506453
                                                else
                                                    X=n[B[1]]r="AutoEvoRaceV2"P=X[r]P=P and 16675834 or 11757501
                                                end
                                            else
                                                H=m P=E[H]o="FindFirstChild"v="HumanoidRootPart"O=P o=O[o]o=o(O,v)P=o and 4266949 or 8408532 X=o
                                            end
end
                                    elseif P<13480670 then
                                            if P<13472397 then
                                                if P<13466888 then
                                                    X={}P=U["v7YLuKtNbj8OM"]
                                                else
                                                    d="Ice Admiral"P=n[B[5]]X=P(d)d=X P=d and 10676683 or 12989653
                                                end
                                            else
                                                P=O E=P X=v P=9981570 d=X
                                            end
                                        elseif P<13490847 then
                                                if P<13484957 then
                                                    E="table"d=U[E]E="sort"P=d[E]E=F(4276736,{})d=P(r,E)E=1 d=r[E]E="Part"P=d[E]X={P}P=U["qhqoKrI1Na6g"]
                                                else
                                                    X=n[B[1]]m="RandomStrings"N=1 E=16777216.0 d=1 G=16777216.0 r=X(d,E)E=U[m]m="randomString"d=E[m]E=d()d=n[B[1]]m=d(N,G)X=E^m P=r-X E="RandomStrings"d=U[E]r=P E="randomString"X=d[E]d=X()P=d/r X={P}P=U["w6Wk65enUn1V"]
                                                end
                                            else
                                                X="AutoFarmSecondSea"P=U[X]X=P()P=5841342
                                            end
end
                                    end
                                elseif P<13527759 then
                                        if P<13501690 then
                                            if P<13496260 then
                                                if P<13494061 then
                                                    M="IslandChunks"x=h[M]P=11816316 M="E"R=x[M]x="FindFirstChild"x=R[x]M="Eye3"x=x(R,M)y=x
                                                else
                                                    d="Tampering detected. Error code: "G=9999 N="math"X="originalError"P=U[X]m=U[N]N="random"E=m[N]N=1000 m=E(N,G)r=d..m X=P(r)P=6973008
                                                end
                                            elseif P<13496737 then
                                                    X=n[B[1]]d="Backpack"r=k[1]P=X[d]d=P E="Character"X=n[B[1]]P=X[E]E=P X=E P=E and 527042 or 3608586
                                                else
                                                    X=n[B[1]]r="AutoFarmBones"P=X[r]P=P and 4045367 or 2643539
                                                end
end
                                        elseif P<13507604 then
                                                if P<13505975 then
                                                    D=1 J=q[D]P=15762493 Pd=J
                                                else
                                                    P=n[B[1]]P=P and 8468945 or 16727857
                                                end
                                            else
                                                m,Q=N(E,m)P=m and 4139076 or 15949858
                                            end
end
                                    elseif P<13554381 then
                                            if P<13546588 then
                                                if P<13537642 then
                                                    X={}P=U["DOGvHLiooUKOC"]
                                                else
                                                    X=n[B[1]]r=X()X=2 P=r[X]E=n[B[2]]r=P m="QuestDebounce"d=E[m]X=d P=d and 6951993 or 16368565
                                                end
                                            else
                                                X={}P=U["FtUNCPiGdoT0yx"]
                                            end
                                        elseif P<13595152 then
                                                if P<13570683 then
                                                    P=n[B[1]]X="Auto_Fishing"r=k[1]d=r P[X]=d P=n[B[2]]X=P()X={}r=nil P=U["nv5kbxi2LBHP54"]
                                                else
                                                    d="Microchip"r="CheckTool"X=U[r]r=X(d)P=not r P=P and 15283755 or 4638983
                                                end
                                            else
                                                P=U["RooaNb2SJOtjF"]X={}
                                            end
end
                                    end
end
                            end
end
                    end
                elseif P<14195908 then
                        if P<13896383 then
                            if P<13730638 then
                                if P<13654223 then
                                    if P<13639781 then
                                        if P<13625446 then
                                            if P<13604640 then
                                                if P<13601669 then
                                                    E="CFrame"P=n[B[3]]d=U[E]N=870 E="new"r=d[E]m=1208 E=5867 d={r(E,m,N)}X=P(I(d))P=7627122
                                                else
                                                    P=8642604 m="VerifyQuest"E=U[m]N="Cookie Crafter"m=E(N)d=not m X=d
                                                end
                                            elseif P<13614066 then
                                                    P=H P=Q and 14714137 or 13777405
                                                else
                                                    N=n[B[1]]P=4447804 m=N[d]E=m[r]X=E
                                                end
end
                                        elseif P<13633452 then
                                                if P<13630273 then
                                                    N="find"N=E[N]N=N(E,m)P=14532185 X=N
                                                else
                                                    P=X and 11873640 or 16752394
                                                end
                                            else
                                                r="AutoFarmPurpleBelt"X=n[B[1]]P=X[r]P=P and 15672459 or 5293812
                                            end
end
                                    elseif P<13645991 then
                                            if P<13644508 then
                                                if P<13642156 then
                                                    Ad[58]="Fast Attack"Ad[55]="Attack Method"Ad[62]=true Ad[53]=Y(1755811,{o,q,Ad[46]
                                                    Ad[50]
                                                    m,i,Ad[43]})Ad[54]="FastAttack"U[Ad[54]]=Ad[53]Ad[61]="Legit Attack"Ad[60]="Fast Attack"Ad[59]={Ad[60]
                                                    Ad[61]}Ad[80]=true Ad[57]="FastSettings"Ad[61]="global"Ad[60]={[Ad[61]]=Ad[62]}Ad[54]="CreateDropdown"Ad[53]=U[Ad[54]]Ad[54]=Ad[53](Ad[40],Ad[55],Ad[57],Ad[58],Ad[59],Ad[60])Ad[57]=A(10051701,{q})Ad[53]="addToggle"Ad[54]="Fast Attack"Ad[53]=Ad[40][Ad[53]]Ad[55]=true Ad[53]=Ad[53](Ad[40],Ad[54],Ad[55],Ad[57])Ad[55]=true Ad[57]=b(12862879,{q})Ad[53]="addToggle"Ad[53]=Ad[40][Ad[53]]Ad[54]="Remove Fast Attack Animation"Ad[53]=Ad[53](Ad[40],Ad[54],Ad[55],Ad[57])Ad[54]="attack mobs"Ad[55]=true Ad[53]="addToggle"Ad[53]=Ad[40][Ad[53]]Ad[57]=Z(10807760,{q})Ad[53]=Ad[53](Ad[40],Ad[54],Ad[55],Ad[57])Ad[53]="addToggle"Ad[53]=Ad[40][Ad[53]]Ad[54]="attack players"Ad[55]=true Ad[57]=A(3350436,{q})Ad[53]=Ad[53](Ad[40],Ad[54],Ad[55],Ad[57])Ad[55]="RenderStepped"Ad[54]=n[G]Ad[53]=Ad[54][Ad[55]]Ad[57]=Z(6425385,{q})Ad[55]=A(7314441,{})Ad[54]="Connect"Ad[54]=Ad[53][Ad[54]]Ad[54]=Ad[54](Ad[53],Ad[55])Ad[53]="addToggle"Ad[54]="Debounce Quests"Ad[53]=Ad[40][Ad[53]]Ad[64]=true Ad[67]=true Ad[55]=false Ad[53]=Ad[53](Ad[40],Ad[54],Ad[55],Ad[57])Ad[55]=false Ad[53]="addToggle"Ad[54]="Disable Damage Counter"Ad[57]=A(4624099,{m})Ad[53]=Ad[40][Ad[53]]Ad[53]=Ad[53](Ad[40],Ad[54],Ad[55],Ad[57])Ad[57]=A(11745393,{o})Ad[54]="Disable Notifications"Ad[55]=false Ad[53]="addToggle"Ad[53]=Ad[40][Ad[53]]Ad[53]=Ad[53](Ad[40],Ad[54],Ad[55],Ad[57])Ad[53]="addToggle"Ad[54]="Walk in Water"Ad[53]=Ad[40][Ad[53]]Ad[55]=true Ad[57]=A(545398,{q
                                                    d})Ad[53]=Ad[53](Ad[40],Ad[54],Ad[55],Ad[57])Ad[53]="addToggle"Ad[54]="Auto Hop When Admin Joined"Ad[55]=true Ad[53]=Ad[40][Ad[53]]Ad[57]=b(10921118,{q,E
                                                    D,o})Ad[58]="AutoSecondSea"Ad[53]=Ad[53](Ad[40],Ad[54],Ad[55],Ad[57])Ad[54]="Anti Afk"Ad[55]=true Ad[61]="global"Ad[53]="addToggle"Ad[57]=W(6558724,{q})Ad[53]=Ad[40][Ad[53]]Ad[53]=Ad[53](Ad[40],Ad[54],Ad[55],Ad[57])Ad[53]="addButton"Ad[54]="Remove Effects"Ad[55]=A(464946,{m})Ad[53]=Ad[40][Ad[53]]Ad[63]="stop"Ad[53]=Ad[53](Ad[40],Ad[54],Ad[55])Ad[54]="Sub"Ad[53]=Ad[14][Ad[54]]Ad[54]="addSection"Ad[54]=Ad[53][Ad[54]]Ad[71]=W(8361915,{q
                                                    o,m,dd})Ad[57]="Auto Second Sea Quest"Ad[55]="World Farming"Ad[59]=false Ad[62]=true Ad[54]=Ad[54](Ad[53])Ad[60]={[Ad[61]]=Ad[62]
                                                    [Ad[63]]=Ad[64]}Ad[53]="addMenu"Ad[53]=Ad[54][Ad[53]]Ad[62]=true Ad[53]=Ad[53](Ad[54],Ad[55])Ad[55]=Ad[13](Ad[53],Ad[57],Ad[58],Ad[59],Ad[60])Ad[59]=false Ad[65]=true Ad[58]=p(5310843,{q})Ad[57]="spawn"Ad[55]=U[Ad[57]]Ad[57]=Ad[55](Ad[58])Ad[58]="AutoThirdSea"Ad[63]="stop"Ad[57]="Auto Third Sea Quest"Ad[64]=true Ad[61]="global"Ad[60]={[Ad[61]]=Ad[62],[Ad[63]]=Ad[64]}Ad[63]=true Ad[55]=Ad[13](Ad[53],Ad[57],Ad[58],Ad[59],Ad[60])Ad[57]="spawn"Ad[59]="Auto_Saber"Ad[55]=U[Ad[57]]Ad[64]="stop"Ad[62]="global"Ad[58]=W(16361443,{q})Ad[57]=Ad[55](Ad[58])Ad[57]="Quest Farming"Ad[55]="addMenu"P=1697657 Ad[58]="Complete Saber Quest"Ad[61]={[Ad[62]]=Ad[63]
                                                    [Ad[64]]=Ad[65]}Ad[55]=Ad[54][Ad[55]]Ad[55]=Ad[55](Ad[54],Ad[57])Ad[63]=true Ad[60]=false Ad[62]="global"Ad[57]=Ad[13](Ad[55],Ad[58],Ad[59],Ad[60],Ad[61])Ad[58]="spawn"Ad[59]=b(12750832,{q})Ad[57]=U[Ad[58]]Ad[58]=Ad[57](Ad[59])Ad[65]=true Ad[59]="AutoBartilo"Ad[64]="stop"Ad[58]="Complete Bartilo Quest"Ad[61]={[Ad[62]]=Ad[63],[Ad[64]]=Ad[65]}Ad[60]=false Ad[57]=Ad[13](Ad[55],Ad[58],Ad[59],Ad[60],Ad[61])Ad[58]="spawn"Ad[57]=U[Ad[58]]Ad[59]=b(9724094,{q})Ad[58]=Ad[57](Ad[59])Ad[58]="Swords/Guns"Ad[57]="addMenu"Ad[57]=Ad[54][Ad[57]]Ad[64]=true Ad[68]="stop"Ad[65]="stop"Ad[57]=Ad[57](Ad[54],Ad[58])Ad[66]=true Ad[59]="AutoTaskYama"Ad[58]=Y(13818936,{g})U[Ad[59]]=Ad[58]Ad[60]="AutoYama"Ad[63]="global"Ad[62]={[Ad[63]]=Ad[64],[Ad[65]]=Ad[66]}Ad[59]="Auto Get Yama (Fully)"Ad[61]=false Ad[58]=Ad[13](Ad[57],Ad[59],Ad[60],Ad[61],Ad[62])Ad[59]="spawn"Ad[58]=U[Ad[59]]Ad[65]="stop"Ad[61]=false Ad[60]=w(7984911,{q})Ad[64]=true Ad[59]=Ad[58](Ad[60])Ad[63]="global"Ad[66]=true Ad[59]="Auto Get Tushita (Fully)"Ad[60]="AutoTushita"Ad[62]={[Ad[63]]=Ad[64]
                                                    [Ad[65]]=Ad[66]}Ad[75]=true Ad[64]=true Ad[72]=true Ad[63]="global"Ad[58]=Ad[13](Ad[57],Ad[59],Ad[60],Ad[61],Ad[62])Ad[59]="spawn"Ad[66]=true Ad[60]=Y(838522,{q})Ad[58]=U[Ad[59]]Ad[59]=Ad[58](Ad[60])Ad[65]="stop"Ad[60]="AutoRengoku"Ad[59]="Auto Get Rengoku (Fully)"Ad[61]=false Ad[62]={[Ad[63]]=Ad[64],[Ad[65]]=Ad[66]}Ad[58]=Ad[13](Ad[57],Ad[59],Ad[60],Ad[61],Ad[62])Ad[59]="spawn"Ad[60]=w(13797227,{q})Ad[61]=false Ad[58]=U[Ad[59]]Ad[66]=true Ad[59]=Ad[58](Ad[60])Ad[59]="Auto Get TTK (Fully)"Ad[65]="stop"Ad[64]=true Ad[60]="AutoTTK"Ad[63]="global"Ad[62]={[Ad[63]]=Ad[64],[Ad[65]]=Ad[66]}Ad[58]=Ad[13](Ad[57],Ad[59],Ad[60],Ad[61],Ad[62])Ad[60]=W(3596280,{q})Ad[59]="spawn"Ad[58]=U[Ad[59]]Ad[65]="stop"Ad[63]="global"Ad[61]=false Ad[59]=Ad[58](Ad[60])Ad[60]="AutoDBV2"Ad[66]=true Ad[59]="Auto Evolve DarkBlade (V2)"Ad[64]=true Ad[62]={[Ad[63]]=Ad[64]
                                                    [Ad[65]]=Ad[66]}Ad[65]="stop"Ad[64]=true Ad[58]=Ad[13](Ad[57],Ad[59],Ad[60],Ad[61],Ad[62])Ad[60]=b(431378,{q})Ad[59]="spawn"Ad[58]=U[Ad[59]]Ad[59]=Ad[58](Ad[60])Ad[61]=false Ad[60]="AutoSkullGuitar"Ad[59]="Auto Get Skull Guitar (Beta)"Ad[66]=true Ad[63]="global"Ad[62]={[Ad[63]]=Ad[64],[Ad[65]]=Ad[66]}Ad[58]=Ad[13](Ad[57],Ad[59],Ad[60],Ad[61],Ad[62])Ad[60]=Y(6216442,{q})Ad[65]="Bones"Ad[59]="spawn"Ad[61]="Farm Method"Ad[58]=U[Ad[59]]Ad[59]=Ad[58](Ad[60])Ad[62]="SwordMastery"Ad[58]="addMenu"Ad[58]=Ad[54][Ad[58]]Ad[66]="Cakes"Ad[59]="Mastery"Ad[58]=Ad[58](Ad[54],Ad[59])Ad[60]="CreateDropdown"Ad[59]=U[Ad[60]]Ad[64]={Ad[65],Ad[66]}Ad[83]=true Ad[63]="Bones"Ad[66]="global"Ad[70]="callback"Ad[65]={[Ad[66]]=Ad[67]}Ad[66]="stop"Ad[60]=Ad[59](Ad[58],Ad[61],Ad[62],Ad[63],Ad[64],Ad[65])Ad[61]="AutoMasterySwords"Ad[60]="Auto Mastery Swords (Fully)"Ad[65]=true Ad[67]=true Ad[64]="global"Ad[63]={[Ad[64]]=Ad[65]
                                                    [Ad[66]]=Ad[67]}Ad[62]=false Ad[59]=Ad[13](Ad[58],Ad[60],Ad[61],Ad[62],Ad[63])Ad[67]=true Ad[77]=W(15132616,{q
                                                    d,dd})Ad[66]="global"Ad[60]="spawn"Ad[61]=W(5950468,{q})Ad[59]=U[Ad[60]]Ad[60]=Ad[59](Ad[61])Ad[61]="Timely Raid Farming"Ad[60]="Sub"Ad[59]=Ad[14][Ad[60]]Ad[60]="addSection"Ad[60]=Ad[59][Ad[60]]Ad[63]="AutoEliteHunter"Ad[60]=Ad[60](Ad[59])Ad[69]=true Ad[65]={[Ad[66]]=Ad[67]
                                                    [Ad[68]]=Ad[69]}Ad[59]="addMenu"Ad[62]="Auto Elite Hunter"Ad[64]=false Ad[59]=Ad[60][Ad[59]]Ad[59]=Ad[59](Ad[60],Ad[61])Ad[66]="global"Ad[61]=Ad[13](Ad[59],Ad[62],Ad[63],Ad[64],Ad[65])Ad[62]="spawn"Ad[67]=true Ad[61]=U[Ad[62]]Ad[63]=W(4931269,{q})Ad[62]=Ad[61](Ad[63])Ad[68]="stop"Ad[69]=true Ad[64]=false Ad[65]={[Ad[66]]=Ad[67]
                                                    [Ad[68]]=Ad[69]}Ad[66]="global"Ad[63]="AutoFactory"Ad[62]="Auto Factory Raid"Ad[68]="stop"Ad[61]=Ad[13](Ad[59],Ad[62],Ad[63],Ad[64],Ad[65])Ad[62]="spawn"Ad[61]=U[Ad[62]]Ad[69]=true Ad[63]=A(11151882,{q})Ad[64]=false Ad[62]=Ad[61](Ad[63])Ad[67]=true Ad[63]="AutoPirateRaid"Ad[62]="Auto Pirate Raid"Ad[65]={[Ad[66]]=Ad[67],[Ad[68]]=Ad[69]}Ad[61]=Ad[13](Ad[59],Ad[62],Ad[63],Ad[64],Ad[65])Ad[62]="spawn"Ad[63]=A(9017371,{q})Ad[61]=U[Ad[62]]Ad[69]=true Ad[67]=true Ad[81]="callback"Ad[62]=Ad[61](Ad[63])Ad[66]="global"Ad[62]="Auto Hallow Scythe"Ad[64]=false Ad[68]="stop"Ad[63]="AutoFarmBossHallow"Ad[65]={[Ad[66]]=Ad[67],[Ad[68]]=Ad[69]}Ad[61]=Ad[13](Ad[59],Ad[62],Ad[63],Ad[64],Ad[65])Ad[63]=W(1497401,{q})Ad[62]="spawn"Ad[61]=U[Ad[62]]Ad[69]=true Ad[67]=true Ad[68]="stop"Ad[62]=Ad[61](Ad[63])Ad[66]="global"Ad[63]="AutoDarkCoat"Ad[64]=false Ad[65]={[Ad[66]]=Ad[67],[Ad[68]]=Ad[69]}Ad[67]=true Ad[62]="Auto Dark Coat"Ad[61]=Ad[13](Ad[59],Ad[62],Ad[63],Ad[64],Ad[65])Ad[63]=w(16115393,{q})Ad[66]="global"Ad[62]="spawn"Ad[61]=U[Ad[62]]Ad[62]=Ad[61](Ad[63])Ad[62]="Auto Cursed Captain"Ad[68]="stop"Ad[64]=false Ad[63]="AutoFarmCursedCaptain"Ad[69]=true Ad[65]={[Ad[66]]=Ad[67],[Ad[68]]=Ad[69]}Ad[61]=Ad[13](Ad[59],Ad[62],Ad[63],Ad[64],Ad[65])Ad[62]="spawn"Ad[61]=U[Ad[62]]Ad[64]=false Ad[63]=A(1495289,{q})Ad[62]=Ad[61](Ad[63])Ad[67]=true Ad[68]="stop"Ad[69]=true Ad[63]="AutoOpenColors"Ad[66]="global"Ad[62]="Auto Open Colors Plate"Ad[65]={[Ad[66]]=Ad[67]
                                                    [Ad[68]]=Ad[69],[Ad[70]]=Ad[71]}Ad[68]="stop"Ad[69]=true Ad[61]=Ad[13](Ad[59],Ad[62],Ad[63],Ad[64],Ad[65])Ad[66]="global"Ad[62]="Auto True Form Rip Indra"Ad[74]="stop"Ad[73]=true Ad[67]=true Ad[64]=false Ad[65]={[Ad[66]]=Ad[67],[Ad[68]]=Ad[69]}Ad[63]="AutoDarkDagger"Ad[61]=Ad[13](Ad[59],Ad[62],Ad[63],Ad[64],Ad[65])Ad[62]="spawn"Ad[69]="stop"Ad[67]="global"Ad[61]=U[Ad[62]]Ad[65]=false Ad[63]=A(7437746,{q})Ad[62]=Ad[61](Ad[63])Ad[64]="AutoObservation"Ad[62]="Tasks Farm"Ad[61]="addMenu"Ad[61]=Ad[60][Ad[61]]Ad[63]="Start Farm Observation"Ad[68]=true Ad[61]=Ad[61](Ad[60],Ad[62])Ad[70]=true Ad[66]={[Ad[67]]=Ad[68],[Ad[69]]=Ad[70]}Ad[62]=Ad[13](Ad[61],Ad[63],Ad[64],Ad[65],Ad[66])Ad[63]="spawn"Ad[62]=U[Ad[63]]Ad[64]=W(16598190,{q})Ad[63]=Ad[62](Ad[64])Ad[65]=false Ad[67]="global"Ad[68]=true Ad[64]="StartObsHop"Ad[70]=true Ad[63]="Farm Observation Hopping"Ad[66]={[Ad[67]]=Ad[68]}Ad[69]="stop"Ad[62]=Ad[13](Ad[61],Ad[63],Ad[64],Ad[65],Ad[66])Ad[64]="DummyTraining"Ad[67]="global"Ad[65]=false Ad[63]="Auto Dummy Training"Ad[68]=true Ad[66]={[Ad[67]]=Ad[68],[Ad[69]]=Ad[70]}Ad[70]=true Ad[62]=Ad[13](Ad[61],Ad[63],Ad[64],Ad[65],Ad[66])Ad[63]="spawn"Ad[62]=U[Ad[63]]Ad[69]="global"Ad[64]=A(559093,{q})Ad[66]="AutoBerrySafe"Ad[63]=Ad[62](Ad[64])Ad[71]="stop"Ad[67]=false Ad[64]="Collectables"Ad[63]="Dragon"Ad[62]=Ad[14][Ad[63]]Ad[63]="addSection"Ad[63]=Ad[62][Ad[63]]Ad[63]=Ad[63](Ad[62])Ad[62]="addMenu"Ad[79]="stop"Ad[62]=Ad[63][Ad[62]]Ad[68]={[Ad[69]]=Ad[70],[Ad[71]]=Ad[72]}Ad[76]="callback"Ad[62]=Ad[62](Ad[63],Ad[64])Ad[64]=A(707669,{N,o
                                                    dd,m})Ad[65]="AutoBerries"U[Ad[65]]=Ad[64]Ad[65]="Auto Collect Berries"Ad[70]="global"Ad[64]=Ad[13](Ad[62],Ad[65],Ad[66],Ad[67],Ad[68])Ad[65]="spawn"Ad[66]=A(1507338,{q})Ad[67]=b(2682824,{dd})Ad[68]=false Ad[64]=U[Ad[65]]Ad[65]=Ad[64](Ad[66])Ad[64]="addMenu"Ad[78]=true Ad[65]="Belts"Ad[64]=Ad[63][Ad[64]]Ad[72]="stop"Ad[66]="Teleport to Dojo Trainer"Ad[71]=true Ad[64]=Ad[64](Ad[63],Ad[65])Ad[69]={[Ad[70]]=Ad[71]
                                                    [Ad[72]]=Ad[73]}Ad[71]=true Ad[65]="addButton"Ad[65]=Ad[64][Ad[65]]Ad[65]=Ad[65](Ad[64],Ad[66],Ad[67])Ad[66]="Auto White Belt"Ad[67]="AutoGetWhiteBelt"Ad[65]=Ad[13](Ad[64],Ad[66],Ad[67],Ad[68],Ad[69])Ad[66]="spawn"Ad[68]=false Ad[67]=W(10021298,{q})Ad[65]=U[Ad[66]]Ad[73]=true Ad[70]="global"Ad[66]=Ad[65](Ad[67])Ad[67]="AutoFarmPurpleBelt"Ad[72]="stop"Ad[66]="Auto Purple Belt"Ad[69]={[Ad[70]]=Ad[71]
                                                    [Ad[72]]=Ad[73]}Ad[65]=Ad[13](Ad[64],Ad[66],Ad[67],Ad[68],Ad[69])Ad[66]="spawn"Ad[65]=U[Ad[66]]Ad[67]=b(12537467,{q})Ad[66]=Ad[65](Ad[67])Ad[69]="AutoPrehistoricIsland"Ad[66]="Dragon"Ad[65]=Ad[14][Ad[66]]Ad[70]=false Ad[66]="addSection"Ad[72]="global"Ad[67]="Prehistoric Event"Ad[66]=Ad[65][Ad[66]]Ad[66]=Ad[66](Ad[65])Ad[65]="addMenu"Ad[65]=Ad[66][Ad[65]]Ad[65]=Ad[65](Ad[66],Ad[67])Ad[68]="Teleport to Prehistoric Island"Ad[73]=true Ad[71]={[Ad[72]]=Ad[73]
                                                    [Ad[74]]=Ad[75]
                                                    [Ad[76]]=Ad[77]}Ad[72]="global"Ad[67]=Ad[13](Ad[65],Ad[68],Ad[69],Ad[70],Ad[71])Ad[69]="AutoBonePrehistoric"Ad[74]="stop"Ad[73]=true Ad[68]="Auto Collect Bones"Ad[75]=true Ad[70]=false Ad[71]={[Ad[72]]=Ad[73],[Ad[74]]=Ad[75]}Ad[67]=Ad[13](Ad[65],Ad[68],Ad[69],Ad[70],Ad[71])Ad[67]=b(1915183,{d
                                                    o
                                                    dd})Ad[69]=Y(9596324,{q})Ad[68]="AutoCollectBones"U[Ad[68]]=Ad[67]Ad[68]="spawn"Ad[67]=U[Ad[68]]Ad[77]="stop"Ad[68]=Ad[67](Ad[69])Ad[69]="AutoCollectEgg"Ad[72]="global"Ad[67]=W(4264519,{g,dd})Ad[68]="AutoCollectEgg"Ad[74]="stop"Ad[70]=false U[Ad[68]]=Ad[67]Ad[75]=true Ad[68]="Auto Collect Dragon Eggs"Ad[73]=true Ad[71]={[Ad[72]]=Ad[73]
                                                    [Ad[74]]=Ad[75]}Ad[67]=Ad[13](Ad[65],Ad[68],Ad[69],Ad[70],Ad[71])Ad[68]="spawn"Ad[67]=U[Ad[68]]Ad[75]=true Ad[69]=p(6413572,{q})Ad[85]="PlayerGui"Ad[74]="stop"Ad[68]=Ad[67](Ad[69])Ad[69]="AutoQuestBlaze"Ad[68]="Auto Farm Blaze Ember"Ad[70]=false Ad[73]=true Ad[72]="global"Ad[71]={[Ad[72]]=Ad[73],[Ad[74]]=Ad[75]}Ad[72]="task"Ad[67]=Ad[13](Ad[65],Ad[68],Ad[69],Ad[70],Ad[71])Ad[68]=S()Ad[70]=Y(6301977,{o})Ad[67]=nil n[Ad[68]]=Ad[67]Ad[69]=W(1320851,{R})Ad[67]=S()n[Ad[67]]=Ad[69]Ad[69]=S()n[Ad[69]]=Ad[70]Ad[71]=U[Ad[72]]Ad[72]="spawn"Ad[70]=Ad[71][Ad[72]]Ad[72]=b(16612492,{q
                                                    Ad[68],Ad[69]
                                                    Ad[67],dd,bd,Ad[1],g})Ad[71]=Ad[70](Ad[72])Ad[72]="task"Ad[71]=U[Ad[72]]Ad[72]="spawn"Ad[70]=Ad[71][Ad[72]]Ad[72]=Y(11543831,{q,d,o})Ad[71]=Ad[70](Ad[72])Ad[71]="Teleport to Dragon Hunter"Ad[70]="addButton"Ad[70]=Ad[65][Ad[70]]Ad[73]=A(9229634,{q
                                                    dd,o
                                                    m})Ad[72]=w(7757984,{dd})Ad[70]=Ad[70](Ad[65],Ad[71],Ad[72])Ad[71]="Teleport to Dragon Wizard"Ad[70]="addButton"Ad[72]=w(1355888,{dd})Ad[70]=Ad[65][Ad[70]]Ad[70]=Ad[70](Ad[65],Ad[71],Ad[72])Ad[70]="addToggle"Ad[72]=false Ad[70]=Ad[65][Ad[70]]Ad[71]="Auto Upgrade Dragon Talon"Ad[70]=Ad[70](Ad[65],Ad[71],Ad[72],Ad[73])Ad[70]="addButton"Ad[71]="Craft Volcanic Magnet"Ad[70]=Ad[65][Ad[70]]Ad[72]=W(4503989,{})Ad[70]=Ad[70](Ad[65],Ad[71],Ad[72])Ad[71]="Craft Dino Hood"Ad[72]=A(1139639,{})Ad[70]="addButton"Ad[70]=Ad[65][Ad[70]]Ad[70]=Ad[70](Ad[65],Ad[71],Ad[72])Ad[70]="addButton"Ad[76]=true Ad[71]="Craft T-Rex Skull"Ad[75]="global"Ad[70]=Ad[65][Ad[70]]Ad[74]={[Ad[75]]=Ad[76]
                                                    [Ad[77]]=Ad[78]}Ad[78]=true Ad[72]=w(9415150,{})Ad[70]=Ad[70](Ad[65],Ad[71],Ad[72])Ad[72]="AutoCollectFireFlowers"Ad[71]="AutoCollectFireFlowers"Ad[70]=Y(13970522,{d,o
                                                    dd
                                                    bd,Ad[1]})Ad[73]=false U[Ad[71]]=Ad[70]Ad[71]="Auto Collect Fire Flowers"Ad[70]=Ad[13](Ad[65],Ad[71],Ad[72],Ad[73],Ad[74])Ad[72]=w(11012934,{q})Ad[71]="spawn"Ad[74]="AutoTrialDracoTP"Ad[70]=U[Ad[71]]Ad[75]=false Ad[71]=Ad[70](Ad[72])Ad[77]="global"Ad[71]="Draco Race"Ad[70]="addMenu"Ad[70]=Ad[66][Ad[70]]Ad[70]=Ad[70](Ad[66],Ad[71])Ad[72]=p(2376042,{q,g
                                                    dd})Ad[73]="Teleport to Draco Trial"Ad[71]=S()Ad[82]=A(2471342,{Ad[71]})n[Ad[71]]=Ad[72]Ad[76]={[Ad[77]]=Ad[78],[Ad[79]]=Ad[80],[Ad[81]]=Ad[82]}Ad[72]=Ad[13](Ad[70],Ad[73],Ad[74],Ad[75],Ad[76])Ad[72]="addButton"Ad[81]=true Ad[75]=S()Ad[73]="Change to Draco Race"Ad[72]=Ad[70][Ad[72]]Ad[74]=Y(965963,{o,R
                                                    dd})Ad[79]=b(1941115,{q})Ad[72]=Ad[72](Ad[70],Ad[73],Ad[74])Ad[73]="Raid"Ad[82]="stop"Ad[72]=Ad[14][Ad[73]]Ad[73]="addSection"Ad[74]="Fruit Awakenings"Ad[73]=Ad[72][Ad[73]]Ad[73]=Ad[73](Ad[72])Ad[72]="addMenu"Ad[72]=Ad[73][Ad[72]]Ad[72]=Ad[72](Ad[73],Ad[74])Ad[76]="pcall"Ad[77]=Y(1381449,{m,Ad[75]})Ad[80]="global"Ad[74]={}n[Ad[75]]=Ad[74]Ad[74]=U[Ad[76]]Ad[76]=Ad[74](Ad[77])Ad[76]="Raid Chip"Ad[74]="addDropdown"Ad[77]=1 Ad[74]=Ad[72][Ad[74]]Ad[78]=n[Ad[75]]Ad[74]=Ad[74](Ad[72],Ad[76],Ad[77],Ad[78],Ad[79])Ad[76]="Auto Buy Chip"Ad[77]=false Ad[74]="addToggle"Ad[74]=Ad[72][Ad[74]]Ad[78]=w(8734355,{q})Ad[74]=Ad[74](Ad[72],Ad[76],Ad[77],Ad[78])Ad[79]={[Ad[80]]=Ad[81],[Ad[82]]=Ad[83]}Ad[77]="AutoRaid"Ad[76]="getraidislands"Ad[74]=Y(8685972,{d,o})U[Ad[76]]=Ad[74]Ad[78]=false Ad[74]=Y(12259872,{u,o,d
                                                    dd,q,Ad[26],jd,g
                                                    V})Ad[76]="AutoRaidFull"U[Ad[76]]=Ad[74]Ad[76]="Auto Complete Raid"Ad[74]=Ad[13](Ad[72],Ad[76],Ad[77],Ad[78],Ad[79])Ad[77]=Y(14692249,{q})Ad[79]="GetFruits"Ad[76]="spawn"Ad[74]=U[Ad[76]]Ad[76]=Ad[74](Ad[77])Ad[77]=false Ad[78]=A(2310216,{q})Ad[74]="addToggle"Ad[76]="Auto Awaken"Ad[74]=Ad[72][Ad[74]]Ad[74]=Ad[74](Ad[72],Ad[76],Ad[77],Ad[78])Ad[77]={}Ad[76]="HighValueFruitPrices"Ad[74]=n[q]Ad[78]="FireInvoke"Ad[74][Ad[76]]=Ad[77]Ad[74]={}Ad[76]={}Ad[77]=U[Ad[78]]Ad[84]=n[o]Ad[83]=Ad[84][Ad[85]]Ad[84]="Main"Ad[82]=Ad[83][Ad[84]]Ad[83]="UIController"Ad[81]=Ad[82][Ad[83]]Ad[82]="FruitShop"Ad[80]=Ad[81][Ad[82]]Ad[83]="GetAttribute"Ad[82]="Shop2"Ad[83]=Ad[80][Ad[83]]Ad[81]={Ad[83](Ad[80],Ad[82])}Ad[78]=Ad[77](Ad[79],I(Ad[81]))Ad[79]="next"Ad[77]=U[Ad[79]]Ad[79]=nil Ad[80]=Ad[78]
                                                else
                                                    r=nil P=646364
                                                end
                                            elseif P<13645163 then
                                                    E="Checkfruit"d=U[E]E=d()r=not E P=r and 15593208 or 13630323 X=r
                                                else
                                                    O=X P=7967261
                                                end
end
                                        elseif P<13649181 then
                                                if P<13647241 then
                                                    d=n[B[2]]E="TrainMethod"X=d[E]d="Bones"P=X==d P=P and 9897867 or 12171590
                                                else
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 1544809 or 2323025
                                                end
                                            else
                                                Ad[17]="math"Ad[16]=U[Ad[17]]Ad[14]=P Ad[15]=Ad[16]~=q Ad[13]=Ad[15]P=Ad[15]and 6622171 or 2874493
                                            end
end
                                    end
                                elseif P<13696249 then
                                        if P<13681043 then
                                            if P<13664383 then
                                                if P<13659421 then
                                                    X=E P=m P=8622604
                                                else
                                                    a=n[d]P=a and 10815773 or 8633428 L=a
                                                end
                                            elseif P<13676071 then
                                                    P=U["lrfrAbB1koFc"]X={X}
                                                else
                                                    P=nil n[B[2]]=P P=15640516
                                                end
end
                                        elseif P<13685834 then
                                                if P<13684797 then
                                                    P=n[B[8]]H=P(d)P=12427876
                                                else
                                                    m=#E N=0 P=m==N P=P and 14646602 or 16617629
                                                end
                                            else
                                                H=G-E O=.5 Q=H>O X=Q P=11340492
                                            end
end
                                    elseif P<13712750 then
                                            if P<13704841 then
                                                if P<13703096 then
                                                    P=nil X={P}P=U["S1kDNwEvKKFxjo"]
                                                else
                                                    O=m P=1116231
                                                end
                                            else
                                                P=4359661 a="Humanoid"L=v[a]a="Health"K=L[a]L=0 g=K>L i=g
                                            end
                                        elseif P<13726205 then
                                                if P<13722609 then
                                                    jd=2 u=q[jd]P=5502544 jd=n[e]D=u==jd Pd=D
                                                else
                                                    X={N}P=U["ECdQau2oB3H76"]
                                                end
                                            else
                                                E="Jeremy"d={E}P=n[B[3]]X=P(d)d=X P=d and 11635960 or 15709915
                                            end
end
                                    end
end
                            elseif P<13797437 then
                                    if P<13766724 then
                                        if P<13744846 then
                                            if P<13738278 then
                                                if P<13736348 then
                                                    r=nil P=U["WSwNQjk9JJw5"]E=nil d=nil o=nil X={}Q=nil G=nil m=nil
                                                else
                                                    X={d}P=U["JnfEnBiT4QOQDj"]
                                                end
                                            elseif P<13738504 then
                                                    P=d P=r and 15681841 or 13843519
                                                else
                                                    i=2 v=1 P=r+v r=P v=r>=i P=v and 16774647 or 3827053
                                                end
end
                                        elseif P<13756949 then
                                                if P<13745980 then
                                                    N=nil P=9991233 G=nil
                                                else
                                                    G=nil P=12458524 Q=nil
                                                end
                                            else
                                                m=n[B[5]]d=P N="SelectRaid"E=m[N]r=E P=E and 1304149 or 13738284
                                            end
end
                                    elseif P<13771731 then
                                            if P<13769413 then
                                                if P<13768706 then
                                                    K="Part"g=N[K]P=3352202 K="BrickColor"L="BrickColor"h=g[K]K=U[L]L="new"g=K[L]L="Lime green"K=g(L)i=h~=K o=i
                                                else
                                                    h="Parent"i=G[h]h="Parent"v=i[h]i="FindFirstChild"i=v[i]P=7478363 h="Humanoid"i=i(v,h)o=not i H=o
                                                end
                                            else
                                                d=1 m="Character"P=r[d]E=n[B[3]]d=P P=E[m]m="Tool"E="FindFirstChildOfClass"G=P E=P[E]E=E(P,m)H=P P=E and 8558632 or 2022577 Q=E
                                            end
                                        elseif P<13793748 then
                                                if P<13777322 then
                                                    P=n[B[1]]X="Sword"r=k[1]d=r P[X]=d r=nil P=U["zYk5LKmkEgq35"]X={}
                                                else
                                                    G=nil N=nil P=2461733
                                                end
                                            else
                                                P=832488
                                            end
end
                                    end
                                elseif P<13832704 then
                                        if P<13817032 then
                                            if P<13811317 then
                                                if P<13808860 then
                                                    P=not E P=P and 4584899 or 5522921
                                                else
                                                    P=n[B[1]]r=k[1]X="ESPChest"d=r r=nil P[X]=d X="ChestESP"P=U[X]X=P()P=U["B2IIOowfZ9K1"]X={}
                                                end
                                            elseif P<13812306 then
                                                    P=6270429
                                                else
                                                    P=n[B[5]]X=P(r)P=4952560
                                                end
end
                                        elseif P<13830378 then
                                                if P<13820819 then
                                                    d="Yama"X="CheckInventory"P=U[X]r="Sword"X=P(r,d)P=X and 641185 or 1644889
                                                else
                                                    r="AutoUpgradeDragonTalon"X=n[B[1]]P=X[r]P=P and 8317848 or 273094
                                                end
                                            else
                                                r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 11032118 or 2530002
                                            end
end
                                    elseif P<13867050 then
                                            if P<13842214 then
                                                if P<13833708 then
                                                    E,G=m(d,E)P=E and 2949116 or 7495120
                                                else
                                                    Q="_WorldOrigin"X="ipairs"P=U[X]G=n[B[2]]N=G[Q]G="Locations"m=N[G]G="GetChildren"G=m[G]N={G(m)}m={P(I(N))}X=m[1]E=m[3]P=16721053 d=m[2]m=X
                                                end
                                            else
                                                P=U["8SCMTKE8s70mB"]X={}
                                            end
                                        elseif P<13889768 then
                                                if P<13885898 then
                                                    P="Urban"X={P}P=U["IYL1kmobiwHiM"]
                                                else
                                                    P=h and 5063997 or 1206351
                                                end
                                            else
                                                P=d and 7766952 or 14560682
                                            end
end
                                    end
end
                            end
                        elseif P<14042291 then
                                if P<13972783 then
                                    if P<13929822 then
                                        if P<13910487 then
                                            if P<13898529 then
                                                if P<13897855 then
                                                    X={}P=U["3ha0pSSVcDML"]
                                                else
                                                    E=nil P=U["x7xoDTPxW4azmw"]X={}r=nil m=nil d=nil
                                                end
                                            elseif P<13899540 then
                                                    P=12610973
                                                else
                                                    r=A(13633692,{B[1]})X="pcall"P=U[X]X=P(r)P=14845430
                                                end
end
                                        elseif P<13923081 then
                                                if P<13920991 then
                                                    r=k[1]P=false n[B[1]]=P X=n[B[2]]P=X and 3924492 or 16565446
                                                else
                                                    P=4881239
                                                end
                                            else
                                                d="Cursed Captain"r={d}P=n[B[2]]X=P(r)r=X P=r and 5458770 or 16670433
                                            end
end
                                    elseif P<13953992 then
                                            if P<13944387 then
                                                if P<13931798 then
                                                    r="task"X=U[r]d="Bones"r="wait"P=X[r]r="Material"X=P()X="CheckInventory"P=U[X]X=P(r,d)r=X X=50 P=r>=X P=P and 6692617 or 7689914
                                                else
                                                    a="Humanoid"y="FindFirstChild"P="FindFirstChild"y=L[y]t="HumanoidRootPart"P=L[P]P=P(L,a)y=y(L,t)a=P C=y P=y and 7387754 or 9722934
                                                end
                                            else
                                                X=n[B[2]]d=n[r]P=X[d]d=P E=not d X=E P=E and 16381897 or 15213121
                                            end
                                        elseif P<13969922 then
                                                if P<13962861 then
                                                    P=1425762
                                                else
                                                    ld=P Td="type"Yd=U[Td]Td=n[h]md=Yd~=Td P=md and 1407105 or 11509910 Ed=md
                                                end
                                            else
                                                P=n[B[1]]r="FireFlowers"X="FindFirstChild"X=P[X]X=X(P,r)r=X P=r and 6046508 or 12360775
                                            end
end
                                    end
                                elseif P<14006756 then
                                        if P<13990369 then
                                            if P<13980620 then
                                                if P<13973658 then
                                                    G="Character"N=n[B[2]]m=N[G]N="RaceTransformed"E=m[N]m="Value"P=3751442 d=E[m]r=not d X=r
                                                else
                                                    K="Ice-Ice"g=E==K h=P P=g and 11304369 or 8218851 i=g
                                                end
                                            elseif P<13982768 then
                                                    N=X X=N P=N and 841651 or 1018664
                                                else
                                                    X="pcall"P=U[X]r=p(2476879,{B[1]})X=P(r)P=6520134
                                                end
end
                                        elseif P<13993401 then
                                                if P<13991526 then
                                                    E,G=m(d,E)P=E and 348842 or 3572015
                                                else
                                                    m=nil N=nil P=10467796
                                                end
                                            else
                                                X={}P=U["zBTaeMDQk0Th3"]r=nil
                                            end
end
                                    elseif P<14028005 then
                                            if P<14018355 then
                                                if P<14010488 then
                                                    N=nil n[B[1]]=N G=n[B[2]]P=G and 6419172 or 9309431
                                                else
                                                    X="AutoFullLawRaid"P=U[X]X=P()P=10228674
                                                end
                                            else
                                                P=X and 7513431 or 13141151
                                            end
                                        elseif P<14039817 then
                                                if P<14033187 then
                                                    i=0 G="AutoHaki"X=U[G]v="CFrame"G=X()G="EquipWeapon"X=U[G]o="HumanoidRootPart"G=X()X=n[B[4]]O=N[o]o="CFrame"H=O[o]o=U[v]P=3692721 v="new"O=o[v]h=15 v=0 o=O(v,i,h)Q=H*o G=X(Q)
                                                else
                                                    P=2696252
                                                end
                                            else
                                                X=n[B[1]]r="GunSelect"P=X[r]P=P and 4536088 or 8504645
                                            end
end
                                    end
end
                            elseif P<14136529 then
                                    if P<14068869 then
                                        if P<14059957 then
                                            if P<14046970 then
                                                if P<14042926 then
                                                    G=d X=r[G]P=not X P=P and 14760086 or 15894594
                                                else
                                                    m="Select"E="RaidsNpc"d="FireInvoke"r=U[d]G=n[B[5]]Q="SelectRaid"N=G[Q]d=r(E,m,N)E="task"d=U[E]P=7700420 E="wait"r=d[E]E=1 d=r(E)
                                                end
                                            elseif P<14053616 then
                                                    G="Name"N=n[B[2]]P=5464743 m=N[G]N="Sea"E=m~=N r=E
                                                else
                                                    H=O P=o P=12824824
                                                end
end
                                        elseif P<14064963 then
                                                if P<14060494 then
                                                    Ad[6]=n[E]Ad[5]=P Ad[4]=Ad[6]P=Ad[6]and 16502169 or 808966
                                                else
                                                    r="task"N="GetPlayers"X=U[r]r="wait"P=X[r]X=P()X="pairs"P=U[X]E=n[B[2]]N=E[N]m={N(E)}E={P(I(m))}P=14234111 d=E[3]r=E[2]X=E[1]E=X
                                                end
                                            else
                                                d="checkv3boss"X=U[d]d=X()P=d and 10059244 or 11840359
                                            end
end
                                    elseif P<14110364 then
                                            if P<14105777 then
                                                if P<14094540 then
                                                    N,G=E(m,N)P=N and 1141785 or 16030296
                                                else
                                                    m="Microchip"E="CheckTool"d=U[E]E=d(m)r=not E X=r P=16643809
                                                end
                                            else
                                                P=X and 10693368 or 332181
                                            end
                                        elseif P<14133069 then
                                                if P<14124313 then
                                                    N=E N=nil P=S()H="task"n[P]=G G=P Q=U[H]H="spawn"P=Q[H]H=b(12325243,{G,B[3]
                                                    B[4],r})G=l(G)Q=P(H)P=12356975
                                                else
                                                    X=n[B[2]]d="DemonFruit"P=X[d]P=P and 12284435 or 7717909
                                                end
                                            else
                                                d=n[B[5]]G=n[B[1]]Q="Mobs"N=G[Q]m={N}E=d(m)P=E and 14779656 or 15914201
                                            end
end
                                    end
                                elseif P<14174020 then
                                        if P<14156927 then
                                            if P<14144181 then
                                                if P<14140556 then
                                                    P=10075949
                                                else
                                                    P=i O=v P=9873438
                                                end
                                            elseif P<14148200 then
                                                    X={}P=U["34cmho7Pd7gU5a"]
                                                else
                                                    N=P P=d and 879902 or 7356823 m=d
                                                end
end
                                        elseif P<14171262 then
                                                if P<14163566 then
                                                    P="Spawned Fruit"n[d]=P P=16015871
                                                else
                                                    P=X and 7497261 or 8669163
                                                end
                                            else
                                                P=X and 3033833 or 11121783
                                            end
end
                                    elseif P<14190657 then
                                            if P<14186404 then
                                                if P<14183684 then
                                                    G=n[B[1]]Q="Character"N=G[Q]G="RaceEnergy"m=N[G]N="Value"E=m[N]m=1 d=E>=m P=d and 2322168 or 2722468 X=d
                                                else
                                                    P=v P[X]=o d=nil h="Enum"P=n[O]X="TextYAlignment"i=U[h]h="TextYAlignment"Q=nil v=i[h]i="Center"o=v[i]P[X]=o P=n[O]o=true X="TextWrapped"P[X]=o X="RichText"P=n[O]o=true P[X]=o N=nil o="task"X=U[o]o="spawn"G=nil P=X[o]o=p(2649368,{O,r,E
                                                    m
                                                    H})O=l(O)X=P(o)r=l(r)P=U["w88QMOOEhjQfzX"]m=l(m)E=l(E)H=l(H)X={}
                                                end
                                            else
                                                d="pairs"X=U[d]N={X(r)}E=N[2]d=N[1]m=N[3]P=16089608
                                            end
                                        elseif P<14193866 then
                                                if P<14192293 then
                                                    o="string"i="string"O=U[o]P=10050032 o="find"H=O[o]v=U[i]i="lower"h="Name"o=v[i]i=G[h]v=o(i)o="shadow"O=H(v,o)Q=O
                                                else
                                                    P=r and 1134270 or 15957449 X=r
                                                end
                                            else
                                                P=15557306
                                            end
end
                                    end
end
                            end
end
                    elseif P<14500506 then
                            if P<14350706 then
                                if P<14262193 then
                                    if P<14229896 then
                                        if P<14209235 then
                                            if P<14198887 then
                                                if P<14196365 then
                                                    H=n[B[3]]m=P O="Flower2"Q=H[O]H="Transparency"G=Q[H]Q=1 N=G~=Q P=N and 5328642 or 16721054 E=N
                                                else
                                                    i=-0.74176991 H=.74176991 v=2.1230365e-008 m=4.92147732 P=n[B[3]]E="CFrame"N=4349.36963 d=U[E]E="new"r=d[E]E=1115.23499 Q=-2.18307523e-008 O=-9.06980624e-009 g=-0.670654476 o=1 G=-0.670654476 h=7.51052998e-009 d={r(E,m,N,G,Q,H,O,o,v,i,h,g)}X=P(I(d))P=5389207
                                                end
                                            elseif P<14205973 then
                                                    Q="Fruit"G="Name"P=N[G]G=P P=G==Q P=P and 670934 or 11186075
                                                else
                                                    P=8757008 a=nil L=g~=a O=L
                                                end
end
                                        elseif P<14218107 then
                                                if P<14215421 then
                                                    r="Instance"X=U[r]N="Character"r="new"P=X[r]m=n[B[1]]E=m[N]m="HumanoidRootPart"r="BodyVelocity"d=E[m]G=40000.0 X=P(r,d)n[B[2]]=X P=n[B[2]]d="PartVelocuty"N=40000.0 r="Name"P[r]=d r="MaxForce"m="Vector3"P=n[B[2]]E=U[m]m="new"d=E[m]m=40000.0 E=d(m,N,G)P[r]=E m="Vector3"r="Velocity"P=n[B[2]]N=0 G=0 E=U[m]m="new"d=E[m]m=0 E=d(m,N,G)d=1250 P[r]=E r="P"P=n[B[2]]P[r]=d P=12555800
                                                else
                                                    d=P m=n[B[2]]N="Character"E=m[N]m="FindFirstChild"N="RaceEnergy"m=E[m]m=m(E,N)r=m P=m and 9087291 or 12508022
                                                end
                                            else
                                                P=U["qh6yLvfLGvYvB5"]X={}
                                            end
end
                                    elseif P<14249996 then
                                            if P<14235750 then
                                                if P<14233395 then
                                                    N=n[B[1]]G="AutoFarmBones"m=N[G]d=P E=not m r=E P=E and 7021067 or 4476163
                                                else
                                                    d,N=E(r,d)P=d and 5082243 or 13146703
                                                end
                                            elseif P<14243129 then
                                                    X="Image"P=n[B[4]]r=n[B[3]]d=r()P[X]=d P=14986640
                                                else
                                                    E=E+N Q=not G X=E<=m X=Q and X Q=E>=m Q=G and Q X=Q or X Q=11983698 P=X and Q X=7999507 P=P or X
                                                end
end
                                        elseif P<14254397 then
                                                if P<14251995 then
                                                    P=O G=H P=3727674
                                                else
                                                    X="Defense"P=r(X)P=10511696
                                                end
                                            else
                                                X="TeleportIslandSelect"P=n[B[1]]r=k[1]d=r P[X]=d P=U["B0u0oeEjmn5Vzq"]r=nil X={}
                                            end
end
                                    end
                                elseif P<14302077 then
                                        if P<14289250 then
                                            if P<14281705 then
                                                if P<14268843 then
                                                    X=n[B[4]]P=X and 12364412 or 12221327
                                                else
                                                    Q=nil P=4674902
                                                end
                                            elseif P<14287540 then
                                                    X="ipairs"P=U[X]m=n[B[2]]G="GetChildren"G=m[G]N={G(m)}m={P(I(N))}P=10162782 X=m[1]d=m[2]E=m[3]m=X
                                                else
                                                    P=7460697
                                                end
end
                                        elseif P<14295401 then
                                                if P<14293378 then
                                                    d="DistanceFromCharacter"Q=719 G=6 X=n[B[3]]N="Vector3"m=U[N]N="new"E=m[N]N=4852 d=X[d]m={E(N,G,Q)}d=d(X,I(m))X=5 P=d<X P=P and 8704791 or 3385473
                                                else
                                                    Q=o h="OnSale"i=v[h]P=i and 10157420 or 15208720
                                                end
                                            else
                                                P=3821003
                                            end
end
                                    elseif P<14337145 then
                                            if P<14327515 then
                                                if P<14318165 then
                                                    r=k[1]P=r and 11478309 or 630475
                                                else
                                                    P=n[B[1]]r="Core"X=P(r)P=X and 5386090 or 7517745
                                                end
                                            else
                                                Q=nil P=9607063
                                            end
                                        elseif P<14344870 then
                                                if P<14339844 then
                                                    X="FireInvoke"d="1"E=0 r="Wenlocktoad"P=U[X]X=P(r,d)r=X d=r==E P=d and 11354355 or 10467347 X=d
                                                else
                                                    E="Data"d=n[B[1]]r=d[E]d="Race"X=r[d]d="Evolved"r="FindFirstChild"r=X[r]r=r(X,d)P=not r P=P and 3875565 or 3956664
                                                end
                                            else
                                                P=3636015 O="FindFirstChild"O=r[O]o="HumanoidRootPart"O=O(r,o)H=O
                                            end
end
                                    end
end
                            elseif P<14434273 then
                                    if P<14395653 then
                                        if P<14366687 then
                                            if P<14358108 then
                                                if P<14356966 then
                                                    P=nil X={P}P=U["3hWCojRrfN5oM"]
                                                else
                                                    N=n[B[1]]G="Data"m=N[G]N="Race"E=m[N]m="Value"d=E[m]E="Mink"X=d==E P=X and 632735 or 13351340
                                                end
                                            elseif P<14359392 then
                                                    P=X and 5722301 or 4401608
                                                else
                                                    r=k[1]X=n[B[1]]d=X(r)X=nil P=d~=X X={P}P=U["zFxrVnBMEQq0t"]
                                                end
end
                                        elseif P<14392818 then
                                                if P<14377974 then
                                                    r=k[1]d=r P=n[B[1]]X="White_Screen"P[X]=d X=n[B[1]]d="White_Screen"P=X[d]P=P and 5116275 or 3809254
                                                else
                                                    X="fireclickdetector"P=U[X]G=n[B[2]]Q="CircleIsland"N=G[Q]G="RaidSummon"m=N[G]N="Button"E=m[N]m="Main"d=E[m]E="ClickDetector"r=d[E]X=P(r)P=578168
                                                end
                                            else
                                                P=X and 14581902 or 11431189
                                            end
end
                                    elseif P<14406421 then
                                            if P<14403569 then
                                                if P<14398517 then
                                                    G=H P=O P=H and 3727674 or 2881005
                                                else
                                                    i=n[B[2]]h="HighValueFruitPrices"v=i[h]h="Name"i=H[h]o=v[i]O=not o P=O and 4790382 or 552446
                                                end
                                            else
                                                X="pcall"P=U[X]r=p(3715871,{B[1]
                                                B[2]
                                                B[3],B[4]})X=P(r)X={}P=U["vrBLPKdUtTMKEJ"]
                                            end
                                        elseif P<14429771 then
                                                if P<14407778 then
                                                    r="Character"X=n[B[1]]P=X[r]r=S()d=P n[r]=P E=n[r]P=E and 8277449 or 12978779 X=E
                                                else
                                                    E="BuyAccessories"P=n[B[2]]d=n[B[1]]r=d[E]d="Accessory"X=P(r,d)P=4707764
                                                end
                                            else
                                                Ad[107]=-7551 Ad[102]="Mansion"Ad[106]=374 Ad[105]="CFrame"Ad[104]=U[Ad[105]]Ad[105]="new"Ad[113]=-3018 Ad[103]=Ad[104][Ad[105]]Ad[105]=-12471 Ad[104]=Ad[103](Ad[105],Ad[106],Ad[107])Ad[103]="Port Town"Ad[110]=22 Ad[130]=9 Ad[107]="CFrame"Ad[106]=U[Ad[107]]Ad[107]="new"Ad[125]=-11576 Ad[109]=5524 Ad[105]=Ad[106][Ad[107]]Ad[108]=21 Ad[107]=-340 Ad[112]=314 Ad[106]=Ad[105](Ad[107],Ad[108],Ad[109])Ad[109]="CFrame"Ad[111]=-6766 Ad[105]="Great Tree"Ad[108]=U[Ad[109]]Ad[109]="new"Ad[123]=-10190 Ad[114]=1005 Ad[124]=14 Ad[122]=38 Ad[107]=Ad[108][Ad[109]]Ad[109]=2205 Ad[108]=Ad[107](Ad[109],Ad[110],Ad[111])Ad[107]="Castle On The Sea"Ad[111]="CFrame"Ad[110]=U[Ad[111]]Ad[131]=439 Ad[111]="new"Ad[109]=Ad[110][Ad[111]]Ad[111]=-4980 Ad[110]=Ad[109](Ad[111],Ad[112],Ad[113])Ad[113]="CFrame"Ad[120]=66 Ad[112]=U[Ad[113]]Ad[115]=391 Ad[109]="Hydra Island"Ad[113]="new"Ad[111]=Ad[112][Ad[113]]Ad[113]=5294 Ad[112]=Ad[111](Ad[113],Ad[114],Ad[115])Ad[118]=142 Ad[111]="Floating Turtle"Ad[116]=332 Ad[115]="CFrame"Ad[121]=-10944 Ad[119]=5528 Ad[114]=U[Ad[115]]Ad[117]=-8658 Ad[115]="new"Ad[113]=Ad[114][Ad[115]]Ad[115]=-12528 Ad[114]=Ad[113](Ad[115],Ad[116],Ad[117])Ad[117]="CFrame"Ad[113]="Haunted Castle"Ad[116]=U[Ad[117]]Ad[117]="new"Ad[115]=Ad[116][Ad[117]]Ad[117]=-9517 Ad[116]=Ad[115](Ad[117],Ad[118],Ad[119])Ad[119]="CFrame"Ad[115]="Ice Cream Land"Ad[118]=U[Ad[119]]Ad[119]="new"Ad[117]=Ad[118][Ad[119]]Ad[119]=-843 Ad[118]=Ad[117](Ad[119],Ad[120],Ad[121])Ad[117]="Peanut Land"Ad[121]="CFrame"Ad[120]=U[Ad[121]]Ad[121]="new"Ad[119]=Ad[120][Ad[121]]Ad[121]=-2082 Ad[127]=-14519 Ad[120]=Ad[119](Ad[121],Ad[122],Ad[123])Ad[123]="CFrame"Ad[122]=U[Ad[123]]Ad[123]="new"Ad[126]=64 Ad[121]=Ad[122][Ad[123]]Ad[128]=127 Ad[123]=-1897 Ad[122]=Ad[121](Ad[123],Ad[124],Ad[125])Ad[119]="Cake Land"Ad[121]="Candy Cane Land"Ad[125]="CFrame"Ad[124]=U[Ad[125]]Ad[125]="new"Ad[123]=Ad[124][Ad[125]]Ad[125]=-1094 P=609577 Ad[124]=Ad[123](Ad[125],Ad[126],Ad[127])Ad[123]="Chocolate Land"Ad[127]="CFrame"Ad[129]=-12604 Ad[126]=U[Ad[127]]Ad[127]="new"Ad[125]=Ad[126][Ad[127]]Ad[127]=219 Ad[126]=Ad[125](Ad[127],Ad[128],Ad[129])Ad[125]="Tiki Outpost"Ad[129]="CFrame"Ad[128]=U[Ad[129]]Ad[129]="new"Ad[127]=Ad[128][Ad[129]]Ad[129]=-16224 Ad[128]=Ad[127](Ad[129],Ad[130],Ad[131])Ad[101]={[Ad[102]]=Ad[104]
                                                [Ad[103]]=Ad[106]
                                                [Ad[105]]=Ad[108]
                                                [Ad[107]]=Ad[110],[Ad[109]]=Ad[112],[Ad[111]]=Ad[114]
                                                [Ad[113]]=Ad[116],[Ad[115]]=Ad[118]
                                                [Ad[117]]=Ad[120],[Ad[119]]=Ad[122]
                                                [Ad[121]]=Ad[124]
                                                [Ad[123]]=Ad[126]
                                                [Ad[125]]=Ad[128]}n[Ad[99]]=Ad[101]
                                            end
end
                                    end
                                elseif P<14464040 then
                                        if P<14445271 then
                                            if P<14438300 then
                                                if P<14436155 then
                                                    P=7596857 H=nil m=nil
                                                else
                                                    X="EquipToolName"P=U[X]d="Key"X=P(d)d="Key"X="CheckTool"P=U[X]X=P(d)P=X and 15434895 or 6445104
                                                end
                                            elseif P<14443834 then
                                                    o=n[B[2]]O=P Q=P P=o and 3266685 or 14397796 H=o
                                                else
                                                    i=P g="ExitTeleporter"h="FindFirstChild"h=o[h]h=h(o,g)v=h P=h and 5634846 or 8005272
                                                end
end
                                        elseif P<14456341 then
                                                if P<14449976 then
                                                    P=n[B[1]]d="Cake Prince"X=P(d)d=X P=d and 11279738 or 14871190
                                                else
                                                    d=n[B[2]]E="Data"r=d[E]d="Race"X=r[d]r="Value"m="PlayerGui"P=X[r]E=n[B[2]]r=P d=E[m]E="Main"X=d[E]d="Timer"P=X[d]X="Draco"d=P P=r==X P=P and 3115208 or 8883887
                                                end
                                            else
                                                d="task"X=U[d]d="spawn"P=X[d]d=p(9143471,{B[1]
                                                B[2],B[3]})X=P(d)d="task"X=U[d]d="spawn"P=X[d]d=p(4521478,{B[1],B[4]})X=P(d)P=4989095
                                            end
end
                                    elseif P<14479692 then
                                            if P<14478422 then
                                                if P<14473744 then
                                                    E=k[3]r=k[1]d=k[2]d=nil E=nil P=n[B[1]]r=nil X=P()P=U["QPit5pI0g9X1q"]X={}
                                                else
                                                    r="Cursed Captain"P=n[B[1]]X=P(r)P=X and 13924889 or 7179793
                                                end
                                            else
                                                P=U["YcRN8Z7VYaJTSS"]X={}
                                            end
                                        elseif P<14493515 then
                                                if P<14483037 then
                                                    E=n[B[1]]N="Container"m="PlayerGui"r=k[1]d=E[m]E="Main"X=d[E]d="Quest"P=X[d]d=P G="Visible"m=d[N]N="QuestTitle"E=m[N]m="Title"X=E[m]E="Text"P=X[E]X="gsub"m=""X=P[X]E="-"X=X(P,E,m)P="lower"P=X[P]P=P(X)m=""X="-"E=P P="gsub"P=r[P]P=P(r,X,m)X="lower"X=P[X]X=X(P)N=d[G]P=N and 13629647 or 14532185 m=X X=N
                                                else
                                                    P=U["bIDZc7JVVD9Oxe"]X={}
                                                end
                                            else
                                                X="print"P=U[X]E="Not working as for now"X=P(E)P=10638525
                                            end
end
                                    end
end
                            end
                        elseif P<14622241 then
                                if P<14550764 then
                                    if P<14521328 then
                                        if P<14508348 then
                                            if P<14504413 then
                                                if P<14503471 then
                                                    E="PrehistoricIslandParticipant"d="GetAttribute"r=n[B[2]]P=2319055 d=r[d]d=d(r,E)X=d
                                                else
                                                    X="ipairs"P=0 Q=P i="Enemies"P=U[X]v=n[B[5]]o=v[i]i="GetChildren"i=o[i]v={i(o)}o={P(I(v))}O=o[3]P=1857980 X=o[1]H=o[2]o=X
                                                end
                                            elseif P<14507269 then
                                                    P="Restocking now..."X={P}P=U["lwclP0aJj6QT"]
                                                else
                                                    N,H=G(m,N)P=N and 992044 or 16363017
                                                end
end
                                        elseif P<14518840 then
                                                if P<14512233 then
                                                    Q=nil P=717228 i=nil o=nil h=nil v=nil
                                                else
                                                    Q=4.92147732 X="EquipToolName"r="Torch"K=-0.74176991 P=U[X]X=P(r)G="Character"N=n[B[1]]m=N[G]N="HumanoidRootPart"o=-2.18307523e-008 g=2.1230365e-008 a=-0.670654476 E=m[N]m="Position"L=7.51052998e-009 h=1 i=-9.06980624e-009 G="CFrame"H=4349.36963 d=E[m]v=.74176991 O=-0.670654476 N=U[G]G="new"m=N[G]G=1115.23499 N=m(G,Q,H,O,o,v,i,h,g,K,L,a)m="Position"E=N[m]r=d-E d="Magnitude"X=r[d]r=5 P=X<r P=P and 10936201 or 14196432
                                                end
                                            else
                                                P=4867657 L="HumanoidRootPart"K=H[L]L="CFrame"g=K[L]K="Position"a="HumanoidRootPart"h=g[K]L=r[a]a="CFrame"K=L[a]L="Position"g=K[L]i=h-g h="Magnitude"g="BringMonsterRadius"v=i[h]h=n[B[1]]i=h[g]o=v<=i X=o
                                            end
end
                                    elseif P<14536777 then
                                            if P<14532736 then
                                                if P<14527720 then
                                                    P=Q N=n[B[3]]P=242170 Q="No fruits detected nearby."m=G or Q G="RefreshDesc"G=N[G]G=G(N,m)m=nil
                                                else
                                                    P=U["Smf84bZVjFAh"]X={X}
                                                end
                                            else
                                                P=16349999 v=nil
                                            end
                                        elseif P<14548057 then
                                                if P<14545424 then
                                                    P=3705453
                                                else
                                                    P=U["aTDwkiMBylANAZ"]X={}r=nil
                                                end
                                            else
                                                E="VerifyQuest"m="Demonic Soul"d=U[E]P=16372966 E=d(m)r=not E X=r
                                            end
end
                                    end
                                elseif P<14590434 then
                                        if P<14561526 then
                                            if P<14554107 then
                                                if P<14553234 then
                                                    X=n[B[5]]P=16286659 r="CFrame"m="CurrentCFq"E=n[B[2]]d=E[m]X[r]=d
                                                else
                                                    P=Q and 1279132 or 1762679
                                                end
                                            elseif P<14559521 then
                                                    P=9818821
                                                else
                                                    X="MobsNextSpawn"P=U[X]X={P(r)}P=U["LGfcSVKfcSoF"]X={I(X)}
                                                end
end
                                        elseif P<14581559 then
                                                if P<14574033 then
                                                    Q=5.26677656 G="Character"i=1 N=n[B[1]]m=N[G]K=8.71560069e-009 N="HumanoidRootPart"L=.888123989 E=m[N]v=7.5884703e-009 N="CFrame"h=-5.8864642e-009 m="Position"d=E[m]G=29.8520069 m=U[N]N="new"E=m[N]g=-0.459603906 H=.888123989 N=-1404.07996 O=-4.0340602e-009 o=.459603906 m=E(N,G,Q,H,O,o,v,i,h,g,K,L)r=d-m d="Magnitude"X=r[d]r=8 P=X>r P=P and 9730240 or 2975475
                                                else
                                                    r=nil P=U["pH5okv5QuV9o"]X={}E=nil d=nil
                                                end
                                            else
                                                P=n[B[3]]E="Swan Pirate"d={E}X=P(d)d=X P=d and 8997282 or 6063615
                                            end
end
                                    elseif P<14606975 then
                                            if P<14605925 then
                                                if P<14593304 then
                                                    d=#r E=0 X=d>E P=X and 5702640 or 16214721
                                                else
                                                    i="ProximityPrompt"v="FindFirstChild"v=H[v]P=9822331 v=v(H,i)O=v
                                                end
                                            else
                                                Ad[17]=n[E]Ad[16]=P Ad[15]=Ad[17]P=Ad[17]and 11449471 or 1115574
                                            end
                                        elseif P<14610227 then
                                                if P<14608215 then
                                                    P=U["rEdoSPa480nEvG"]X={}
                                                else
                                                    h=P P=H and 11712407 or 9804360 i=H
                                                end
                                            else
                                                X="pcall"P=U[X]r=p(11045208,{B[1]})X=P(r)P=6173774
                                            end
end
                                    end
end
                            elseif P<14684327 then
                                    if P<14647095 then
                                        if P<14643241 then
                                            if P<14625595 then
                                                if P<14622818 then
                                                    X="MobsNextSpawn"P=U[X]N="Bones"m=r[N]N=1 E=m[N]X=P(E)P=15439080
                                                else
                                                    X={}d=l(d)P=U["Q8TtvvQ4Kn26e"]E=l(E)
                                                end
                                            elseif P<14642033 then
                                                    N=n[B[6]]G="Character"m=N[G]N="HumanoidRootPart"E=m[N]m="Position"H="Map"d=E[m]Q=n[B[7]]G=Q[H]Q="IndraIsland"N=G[Q]G="Part"m=N[G]N="Position"E=m[N]r=d-E d="Magnitude"X=r[d]r=1000 P=X>r P=P and 11873579 or 6804383
                                                else
                                                    r=nil d=nil P=U["iVmIG0ZtjSxGu"]X={}
                                                end
end
                                        elseif P<14645923 then
                                                if P<14644030 then
                                                    E="CFrame"P=n[B[3]]d=U[E]m=1208.327 E="new"r=d[E]N=884.579 E=5814.427 d={r(E,m,N)}X=P(I(d))P=13049764
                                                else
                                                    o="Name"O=G[o]o="Blank Buddy"H=O==o Q=H P=H and 10050032 or 14192171
                                                end
                                            else
                                                P=nil X={P}P=U["DHqexuWprfwP9"]
                                            end
end
                                    elseif P<14672712 then
                                            if P<14668691 then
                                                if P<14657940 then
                                                    r=k[1]P=n[B[1]]X="BuyAbility"d=r P[X]=d P=U["DxzuCDVAEdXLER"]X={}r=nil
                                                else
                                                    m,G=d(E,m)P=m and 11960497 or 2136208
                                                end
                                            else
                                                N="FarmMode"m=n[B[5]]X=m[N]m="Nearest"P=X==m P=P and 6670297 or 12135619
                                            end
                                        elseif P<14682380 then
                                                if P<14675647 then
                                                    N="Mobs"G="Progress"X="HasQuest"Q="QuestType"P={[X]=m
                                                    [N]=r
                                                    [G]=d,[Q]=E}n[B[1]]=P P=5923964
                                                else
                                                    r="task"X=U[r]r="wait"P=X[r]r=.5 X=P(r)P=X and 1127538 or 8077450
                                                end
                                            else
                                                r="BuyAbility"X=n[B[1]]P=X[r]P=P and 15153990 or 993633
                                            end
end
                                    end
                                elseif P<14704840 then
                                        if P<14698704 then
                                            if P<14691547 then
                                                if P<14687841 then
                                                    E="Character"d=n[B[2]]r=d[E]X=r P=r and 8108996 or 665192
                                                else
                                                    P=n[B[4]]X=n[B[2]]d=r P[X]=d P=12801203
                                                end
                                            elseif P<14693755 then
                                                    P=8714429
                                                else
                                                    X={}P=U["yVQef3ca3iT4A"]
                                                end
end
                                        elseif P<14702685 then
                                                if P<14699473 then
                                                    X={}P=U["cSI3xKbAg44Xij"]
                                                else
                                                    X={}P=U["cgyn0gK7DO4y"]r=nil
                                                end
                                            else
                                                P=Ed md="math"bd=P ld=U[md]md="random"Ed=ld[md]ld=S()n[ld]=Ed Yd="table"md=U[Yd]Yd="concat"Ed=md[Yd]Yd=P Ad[2]="table"Ad[1]=U[Ad[2]]P=Ad[1]and 3160203 or 16622738 Td=Ad[1]
                                            end
end
                                    elseif P<14720169 then
                                            if P<14714816 then
                                                if P<14713894 then
                                                    E="getraidislands"d=U[E]E=d()P=E and 4984798 or 5339468
                                                else
                                                    Q="CanCollide"H=false G[Q]=H P=13777405
                                                end
                                            else
                                                N=2 d=n[B[1]]m=1 E=d(m,N)d=1 r=E==d X=r P=r and 1846976 or 7996
                                            end
                                        elseif P<14735249 then
                                                if P<14729735 then
                                                    r="GetDistance"N=14937 X=U[r]m="Vector3"E=U[m]m="new"d=E[m]G=72 m=28575 E={d(m,N,G)}r=X(I(E))X=2000 P=r>X P=P and 10254507 or 15146835
                                                else
                                                    H="gold"Q="find"Q=d[Q]Q=Q(d,H)P=Q and 15716821 or 16583665
                                                end
                                            else
                                                N=nil m=nil P=16173928
                                            end
end
                                    end
end
                            end
end
                    end
end
            elseif P<15789145 then
                    if P<15290736 then
                        if P<15000155 then
                            if P<14879080 then
                                if P<14795532 then
                                    if P<14767298 then
                                        if P<14759942 then
                                            if P<14754940 then
                                                if P<14742004 then
                                                    P=U["RX65zYBTC6xmI"]X={}
                                                else
                                                    d=not r P=d and 12838696 or 5888639
                                                end
                                            elseif P<14757578 then
                                                    N=2.5 d="Character"r=n[B[1]]X=r[d]m="Hit"r="HumanoidRootPart"P=X[r]r=P E=n[B[2]]d=E[m]G=0 E="Position"X=d[E]m="Vector3"E=U[m]m="new"d=E[m]m=0 E=d(m,N,G)P=X+E N="CFrame"E="Position"d=P X=r[E]P=d-X E=P m=r[N]P="CFrame"X=m+E E=nil r[P]=X d=nil r=nil X={}P=U["gUuBcAL372FKX"]
                                                else
                                                    r="BuyTTK"X=n[B[1]]P=X[r]P=P and 5454846 or 961061
                                                end
end
                                        elseif P<14762391 then
                                                if P<14760279 then
                                                    X="FireInvoke"Q="TushitaProgress"P=U[X]H="Torch"X=P(Q,H,G)P=15894594
                                                else
                                                    P=n[B[1]]X="BuyAccessories"r=k[1]d=r P[X]=d r=nil X={}P=U["cMFhok6cm6TtUW"]
                                                end
                                            else
                                                X="FireInvoke"P=U[X]d="CakePrinceSpawner"X={P(d)}P=U["AxQYMB3SC5Hef"]X={I(X)}
                                            end
end
                                    elseif P<14778390 then
                                            if P<14770866 then
                                                if P<14768677 then
                                                    Ad[3]="pcall"Td=0 Ad[8]="tostring"Ad[4]=w(11483707,{ld})Ad[2]=U[Ad[3]]Ad[3]={Ad[2](Ad[4])}bd=0 Ad[1]={I(Ad[3])}Ad[3]=2 Ad[2]=Ad[1][Ad[3]]Ad[4]="tonumber"Ad[3]=U[Ad[4]]Ad[5]=n[Bd]Ad[7]=U[Ad[8]]Ad[8]=Ad[7](Ad[2])Ad[7]=":(%d*):"Ad[6]=Ad[5](Ad[8],Ad[7])Ad[5]={Ad[6]()}Ad[4]=Ad[3](I(Ad[5]))Ad[3]=S()n[Ad[3]]=Ad[4]Ad[4]=1 Ad[5]=100 P=6450861 Ad[6]=Ad[5]Ad[5]=1 Ad[7]=Ad[5]Ad[5]=0 Ad[8]=Ad[7]<Ad[5]Ad[5]=Ad[4]-Ad[7]
                                                else
                                                    r="Temple of Time"X=n[d]P=X[r]r=n[E]X="Parent"P[X]=r r="CharacterAdded"X=n[B[3]]P=X[r]r=p(1902645,{B[2],E
                                                    d})X="Once"X=P[X]X=X(P,r)P=14623647
                                                end
                                            elseif P<14771951 then
                                                    X="AutoGetDBV2"P=U[X]X=P()P=4099427
                                                else
                                                    m=n[B[1]]N="Character"r=k[1]E=m[N]X=E P=E and 15973644 or 2083440 d=k[2]
                                                end
end
                                        elseif P<14785376 then
                                                if P<14783762 then
                                                    d=n[B[6]]N=true P=U["B3zeDTIMG6qZ33"]m={d(E,N)}X={I(m)}
                                                else
                                                    X={}P=U["oNKp5UWHFLLC"]
                                                end
                                            else
                                                E="Demonic Soul"d="Living Zombie"X="Reborn Skeleton"m="Posessed Mummy"P={X,d
                                                E,m}r=P P=15507798
                                            end
end
                                    end
                                elseif P<14845360 then
                                        if P<14820864 then
                                            if P<14807593 then
                                                if P<14806568 then
                                                    P=14956657
                                                else
                                                    r="CheckInventory"X=U[r]E="Conjured Cocoa"d="Material"r=X(d,E)X=10 P=r<X P=P and 9293967 or 5734061
                                                end
                                            elseif P<14812469 then
                                                    ld,md=dd(Ed,ld)P=ld and 15557732 or 6406502
                                                else
                                                    X="MobsNextSpawn"N="Cakes"P=U[X]m=r[N]N=1 E=m[N]X=P(E)P=15956698
                                                end
end
                                        elseif P<14844664 then
                                                if P<14825415 then
                                                    P=14703617 ld=n[dd]Xd=ld
                                                else
                                                    O=H i="Name"v=N[i]X=v==o P=X and 9152620 or 1275963
                                                end
                                            else
                                                P=16289951
                                            end
end
                                    elseif P<14868750 then
                                            if P<14862644 then
                                                if P<14845788 then
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 13902448 or 443587
                                                else
                                                    P=U["592bnW8mLkuz"]X={L}
                                                end
                                            else
                                                P=9040790 a=n[B[1]]C="Eagle Eye: Fully Active"L=a..C G=L
                                            end
                                        elseif P<14876107 then
                                                if P<14870898 then
                                                    d="GetDistance"X=U[d]N="CFrame"G=9.086 Q=433.864 m=U[N]N="new"E=m[N]N=-16927.451 m={E(N,G,Q)}d=X(I(m))X=12 P=d<=X P=P and 7130325 or 9662587
                                                else
                                                    P=9563255 d=nil
                                                end
                                            else
                                                P=n[B[3]]X={P(r)}P=U["LutFwipjB4iA"]X={I(X)}
                                            end
end
                                    end
end
                            elseif P<14942980 then
                                    if P<14900961 then
                                        if P<14888831 then
                                            if P<14879766 then
                                                if P<14879295 then
                                                    X="FireInvoke"N="2"P=U[X]m="LegendarySwordDealer"X=P(m,N)P=9745315
                                                else
                                                    O=i t=n[B[6]]R="Haunted Castle"y=t[R]t="Trophies"C=y[t]y="Quest"a=C[y]L=a[h]a="Handle"K=L[a]L="CFrame"g=K[L]C=", "R="1"L="tostring"K=U[L]a="split"y=P L=K(g)g=L a=g[a]a=a(g,C)C=4 K=a[C]g=K a="180"t=g==R C=t P=t and 10525437 or 5108607
                                                end
                                            elseif P<14884934 then
                                                    P=12128892 E="Level 1"d=r[E]X=d
                                                else
                                                    G="SelectedBait"P=2596474 m=n[B[4]]N="Modules"E=m[N]m="Net"d=E[m]E="RF/Craft"X=d[E]N=n[B[1]]m=N[G]E="Craft"d="InvokeServer"d=X[d]d=d(X,E,m)E="task"d=U[E]E="wait"X=d[E]E=2 d=X(E)
                                                end
end
                                        elseif P<14896844 then
                                                if P<14896530 then
                                                    P=U["HN5MZupABkonL"]X={}
                                                else
                                                    P=n[B[6]]X=P(r)P=2858600
                                                end
                                            else
                                                Ad[36]=n[V]P=Ad[36]and 9658146 or 16382064
                                            end
end
                                    elseif P<14919275 then
                                            if P<14913981 then
                                                if P<14906235 then
                                                    P=n[B[1]]r=k[1]X="BuyTTK"d=r P[X]=d d="task"X=U[d]d="spawn"P=X[d]r=nil d=W(8229189,{B[1]})X=P(d)P=U["aqr1MRH6YBXg"]X={}
                                                else
                                                    m=299 N=-6968 P=n[B[5]]E="CFrame"d=U[E]E="new"r=d[E]E=6571 d={r(E,m,N)}X=P(I(d))P=11281873
                                                end
                                            else
                                                P=n[B[2]]d=n[B[3]]E="BonesList"r=d[E]X=P(r)r=X P=r and 6979102 or 10707390
                                            end
                                        elseif P<14926003 then
                                                if P<14925342 then
                                                    r="Heartbeat"X=n[B[2]]P=X[r]X="Wait"X=P[X]X=X(P)P=n[B[1]]X="Destroy"X=P[X]X=X(P)P=6760429
                                                else
                                                    E=true P=n[B[4]]X=P(d,E)P=15956698
                                                end
                                            else
                                                X=d P=E P=12623508
                                            end
end
                                    end
                                elseif P<14982022 then
                                        if P<14967369 then
                                            if P<14961431 then
                                                if P<14954680 then
                                                    X="AutoFarmPirateRaid"P=U[X]X=P()P=8031669
                                                else
                                                    r="task"X=U[r]r="wait"P=X[r]r=.2 X=P(r)P=X and 9493864 or 5430637
                                                end
                                            elseif P<14964890 then
                                                    P=11743908 N=nil m=nil
                                                else
                                                    i="IsA"h="ColorCorrectionEffect"i=G[i]i=i(G,h)o=i v=P P=i and 6398046 or 15334942
                                                end
end
                                        elseif P<14974334 then
                                                if P<14972723 then
                                                    m="CFrame"P=n[B[5]]G=1679.75 E=U[m]N=10.4325 m="new"d=E[m]m=-1835.65 E={d(m,N,G)}X=P(I(E))P=13072617
                                                else
                                                    d=n[B[2]]E="Character"m="WalkSpeed"X=d[E]d="Humanoid"P=X[d]d="WalkSpeed"X="GetPropertyChangedSignal"X=P[X]X=X(P,d)P="Connect"d=b(10009519,{B[2]
                                                    B[1]})P=X[P]E="Character"P=P(X,d)d=n[B[2]]X=d[E]d="Humanoid"P=X[d]E=n[B[1]]X="WalkSpeed"d=E[m]P[X]=d P=648818
                                                end
                                            else
                                                P=13141151
                                            end
end
                                    elseif P<14984507 then
                                            if P<14984021 then
                                                if P<14983410 then
                                                    H="Part"Q="IsA"Q=N[Q]Q=Q(N,H)m=d G=P X=Q P=Q and 12568772 or 9955215
                                                else
                                                    H=n[B[2]]O="GetAttribute"P=13124824 O=H[O]o="IslandRaiding"O=O(H,o)Q=not O N=Q
                                                end
                                            else
                                                d=P G=n[B[2]]Q="Data"N=G[Q]G="Value"m=N[G]N=350 E=m<N P=E and 15615678 or 16248537 r=E
                                            end
                                        elseif P<14989251 then
                                                if P<14986153 then
                                                    N,H=G(m,N)P=N and 5036850 or 13685101
                                                else
                                                    X={}P=U["byh6o0Z7gROn"]
                                                end
                                            else
                                                P=U["rF1CixHOqMTuS"]X={}
                                            end
end
                                    end
end
                            end
                        elseif P<15169336 then
                                if P<15070087 then
                                    if P<15036529 then
                                        if P<15020033 then
                                            if P<15010069 then
                                                if P<15005333 then
                                                    h="Humanoid"i=G[h]h="Health"v=i[h]i=0 O=P o=v>i P=o and 13095977 or 4150426 H=o
                                                else
                                                    Ad[55]=nil P=13641269 Ad[54]=nil
                                                end
                                            elseif P<15014859 then
                                                    E,N=d(r,E)P=E and 8947103 or 15210608
                                                else
                                                    d=n[B[1]]r=not d X=r P=r and 14109140 or 14984444
                                                end
end
                                        elseif P<15032482 then
                                                if P<15022011 then
                                                    M="/4 Eyes Open"C=n[B[1]]x=K..M t="Eagle Eye: "y=t..x a=C..y G=a P=9040790
                                                else
                                                    X=n[B[1]]r="AutoPrehistoricIsland"P=X[r]P=P and 8370893 or 7201140
                                                end
                                            else
                                                P=11222355
                                            end
end
                                    elseif P<15057863 then
                                            if P<15050168 then
                                                if P<15047395 then
                                                    d="task"X=U[d]d="spawn"P=X[d]d=w(16126250,{B[1]})X=P(d)P=11529223
                                                else
                                                    P=15673081 Q="UnstoreBadFruit"G=n[B[5]]N=G[Q]E=N
                                                end
                                            else
                                                P=7561704 m="FindFirstChild"m=E[m]m=m(E,r)X=m
                                            end
                                        elseif P<15066683 then
                                                if P<15064296 then
                                                    m=true P=n[B[6]]X={P(E,m)}P=U["wP6qHVnV4uq5Z"]X={I(X)}
                                                else
                                                    E="Dough King"d="Cake Prince"P=n[B[2]]r={d,E}X=P(r)r=X P=r and 7283834 or 8259674
                                                end
                                            else
                                                P=n[B[1]]E="CFrame"N=-7326 m=2283 d=U[E]E="new"r=d[E]E=3030 d={r(E,m,N)}X=P(I(d))P=5026087
                                            end
end
                                    end
                                elseif P<15127578 then
                                        if P<15108428 then
                                            if P<15078282 then
                                                if P<15075657 then
                                                    P=n[B[5]]m="Galley Captain"E={m}m="CFrame"X=P(E)E=U[m]G=4852 r=X m="new"P=E[m]N=88 m=5533 E=P(m,N,G)P=2136202 d=E
                                                else
                                                    P=12784216 r=nil
                                                end
                                            elseif P<15106811 then
                                                    P=n[B[2]]G="CFrame"N="VehicleSeat"m=r[N]N="CFrame"E=m[N]N=U[G]G="new"m=N[G]G=0 H=0 Q=3 N=m(G,Q,H)d=E*N X=P(d)d="task"X=U[d]d="wait"P=X[d]E="Character"d=.3 X=P(d)d=n[B[3]]X=d[E]d="Humanoid"P=X[d]d=true X="Sit"P[X]=d P=13066350
                                                else
                                                    d=n[B[1]]E="AutoActiveRacenear"r=d[E]P=r and 5195684 or 12261174 X=r
                                                end
end
                                        elseif P<15116430 then
                                                if P<15110271 then
                                                    r=nil X={}P=U["HZrLzuMt2ShhTP"]
                                                else
                                                    d="task"X=U[d]d="wait"P=X[d]X=P()E="ClickDetector"X="fireclickdetector"P=U[X]d=r[E]X=P(d)E="BrickColor"d=r[E]E="Name"X=d[E]d=n[B[3]]P=X==d P=P and 6965855 or 15115237
                                                end
                                            else
                                                Q=nil P=14248488 O=nil H=nil
                                            end
end
                                    elseif P<15153473 then
                                            if P<15146047 then
                                                if P<15141926 then
                                                    r=k[1]P=r and 2119851 or 15268996
                                                else
                                                    X={r}P=U["tCwi9Aup8Pkz"]
                                                end
                                            else
                                                P=n[B[1]]E="CFrame"d=U[E]N=72 E="new"m=14937 r=d[E]E=28575 d={r(E,m,N)}X=P(I(d))P=10540450
                                            end
                                        elseif P<15160906 then
                                                if P<15155033 then
                                                    P=n[B[2]]d=n[B[1]]E="BuyAbility"r=d[E]d="Ability"X=P(r,d)P=993633
                                                else
                                                    R="Position"t=E[R]x="Position"R=C[x]y=t-R t="Magnitude"P=y[t]y=P P=y<N P=P and 8748490 or 2170195
                                                end
                                            else
                                                P=U["OF3qGGNFCSji"]r=l(r)X={}
                                            end
end
                                    end
end
                            elseif P<15218146 then
                                    if P<15209148 then
                                        if P<15193008 then
                                            if P<15186632 then
                                                if P<15184002 then
                                                    X="GetChildren"P=n[B[1]]X=P[X]X=X(P)r=X d=#r X=1 E=d d=1 m=d P=1734578 d=0 N=m<d d=X-m
                                                else
                                                    H=nil i=nil P=5413324
                                                end
                                            elseif P<15190748 then
                                                    P=8348384
                                                else
                                                    m="CFrame"P=n[B[6]]N=70 G=-12406 E=U[m]m="new"d=E[m]m=-2149 E={d(m,N,G)}X={P(I(E))}X={I(X)}P=U["wWhwDFT8qhn5RS"]
                                                end
end
                                        elseif P<15203446 then
                                                if P<15198693 then
                                                    P=n[B[1]]X=P()P=12342277
                                                else
                                                    E="CFrame"Q=-2.19578524e-008 g=-0.78613919 o=1 v=-3.68374984e-008 H=-0.618049502 O=1.02977182e-009 P=n[B[3]]d=U[E]i=.618049502 E="new"h=-2.95958493e-008 r=d[E]N=4365.27832 G=-0.78613919 m=7.5484705 E=1113.66992 d={r(E,m,N,G,Q,H,O,o,v,i,h,g)}N="Map"X=P(I(d))X="firetouchinterest"P=U[X]m=n[B[2]]E=m[N]m="Desert"d=E[m]E="Cup"N="Character"r=d[E]m=n[B[1]]E=m[N]m="HumanoidRootPart"d=E[m]E=0 X=P(r,d,E)X="firetouchinterest"P=U[X]m=n[B[2]]N="Map"E=m[N]m="Desert"d=E[m]E="Cup"r=d[E]N="Character"m=n[B[1]]E=m[N]m="HumanoidRootPart"d=E[m]E=1 X=P(r,d,E)P=U["245Exnldlbdp"]X={}
                                                end
                                            else
                                                P=9797022 v=nil Q=nil
                                            end
end
                                    elseif P<15212742 then
                                            if P<15211025 then
                                                if P<15209769 then
                                                    G=n[B[2]]N=not G E=N m=P P=N and 321135 or 3150750
                                                else
                                                    X={}P=U["NJxnM9FRK9oM"]
                                                end
                                            else
                                                X="pcall"P=U[X]r=w(9975488,{B[1]})X=P(r)P=8714429
                                            end
                                        elseif P<15217780 then
                                                if P<15213304 then
                                                    P=16381897 N=0 m=#d E=m==N X=E
                                                else
                                                    H="Name"Q=G[H]r=Q P=9335210
                                                end
                                            else
                                                P=4452047 E="task"d=U[E]E="wait"X=d[E]E=.1 d=X(E)
                                            end
end
                                    end
                                elseif P<15259305 then
                                        if P<15232732 then
                                            if P<15229780 then
                                                if P<15222672 then
                                                    m=n[B[6]]N=m(d)P=N and 9665438 or 640687
                                                else
                                                    P=X and 1951003 or 1308207
                                                end
                                            elseif P<15230824 then
                                                    d=5 r="Map"G="Character"P=n[B[1]]X="WaitForChild"X=P[X]X=X(P,r,d)r="Dungeon"P="WaitForChild"d=5 P=X[P]P=P(X,r,d)r=P N=n[B[2]]m=N[G]P=nil d=P X=m P=0 E=P P=m and 4550359 or 10769018
                                                else
                                                    Ad[58]="_G"Ad[56]="rawget"Ad[53]=U[Ad[56]]P=15005337 Ad[57]=Ad[55][Ad[58]]Ad[58]="SendHitsToServer"Ad[56]=Ad[53](Ad[57],Ad[58])n[Ad[50]]=Ad[56]
                                                end
end
                                        elseif P<15253976 then
                                                if P<15250441 then
                                                    X={}P=U["WXB64ltXYhGI"]
                                                else
                                                    P=n[B[2]]E="CFrame"d=U[E]E="new"r=d[E]E=-5073 m=315 N=-3153 d={r(E,m,N)}X=P(I(d))X="fireclickdetector"P=U[X]G=n[B[3]]Q="Boat Castle"N=G[Q]G="RaidSummon2"m=N[G]N="Button"E=m[N]m="Main"d=E[m]E="ClickDetector"r=d[E]X=P(r)P=14144354
                                                end
                                            else
                                                P=O P=X and 9815472 or 4633491
                                            end
end
                                    elseif P<15276280 then
                                            if P<15269006 then
                                                if P<15261765 then
                                                    P=16182719
                                                else
                                                    X={}P=U["upYvnxHmX7Cf"]r=nil
                                                end
                                            else
                                                H="DistanceFromCharacter"o="Position"X=n[B[2]]O=Q[o]H=X[H]H=H(X,O)X=3 P=H>X P=P and 4412118 or 678158
                                            end
                                        elseif P<15286298 then
                                                if P<15282159 then
                                                    P={}E="FortBuilderReplicatedSpawnPositionsFolder"r="next"n[B[1]]=P d="FindFirstChild"m="GetChildren"X=U[r]r=n[B[2]]d=r[d]d=d(r,E)m=d[m]m={m(d)}E=m[2]P=15013315 r=m[1]d=X
                                                else
                                                    E=n[B[1]]m="Data"d=E[m]E="Fragments"r=d[E]d="Value"X=r[d]r=1000 P=X>=r P=P and 7458934 or 1415627
                                                end
                                            else
                                                H="TeleService"P=U[H]H="Teleport"O=n[B[10]]H=P[H]o=n[B[2]]H=H(P,O,o)P=6932825
                                            end
end
                                    end
end
                            end
end
                    elseif P<15526910 then
                            if P<15372963 then
                                if P<15334974 then
                                    if P<15307659 then
                                        if P<15295905 then
                                            if P<15295157 then
                                                if P<15295091 then
                                                    P=2718182
                                                else
                                                    P=11788269
                                                end
                                            elseif P<15295216 then
                                                    P=10783285 h=i H=nil Q=h i=nil
                                                else
                                                    g="GetChildren"i="next"g=r[g]P=U[i]g={g(r)}h=g[2]i=g[1]g=P P=1125076
                                                end
end
                                        elseif P<15299803 then
                                                if P<15297598 then
                                                    h=-7.444102e-010 i=.668973804 E="CFrame"Q=-4.82822775e-011 v=-5.85609283e-010 P=n[B[3]]d=U[E]H=-0.668973804 E="new"O=4.62103383e-010 N=4364.55469 o=1 r=d[E]G=-0.743286014 E=1112.46521 m=4.92147732 g=-0.743286014 d={r(E,m,N,G,Q,H,O,o,v,i,h,g)}X=P(I(d))P=5491030
                                                else
                                                    P=n[B[2]]X=P()P=9221647
                                                end
                                            else
                                                X={}P=U["WYN8ZnheyGID"]r=nil
                                            end
end
                                    elseif P<15324706 then
                                            if P<15314300 then
                                                if P<15309468 then
                                                    P=E P=d and 10099507 or 9377093
                                                else
                                                    X="AutoBones"P=U[X]X=P()X={}P=U["ZJQlTOSX2kj2o2"]
                                                end
                                            elseif P<15317722 then
                                                    O=n[B[2]]H=G~=O Q=H P=H and 10363263 or 14553771 N=E
                                                else
                                                    P=U["vfNL5meHS9QU"]v=true X={v}
                                                end
end
                                        elseif P<15334870 then
                                                if P<15330256 then
                                                    X="IsA"P=n[B[1]]r="ForceField"X=P[X]X=X(P,r)P=X and 8551668 or 10011526
                                                else
                                                    P=nil X={P}P=U["ZTX58KflKmvVV"]
                                                end
                                            else
                                                K="BloomEffect"h=P g="IsA"g=G[g]g=g(G,K)i=g P=g and 11421180 or 11986193
                                            end
end
                                    end
                                elseif P<15359604 then
                                        if P<15353884 then
                                            if P<15343250 then
                                                if P<15339557 then
                                                    X="spawn"P=U[X]r=n[B[1]]X=P(r)X={}P=U["f6jhyHMy0xVh"]
                                                else
                                                    X=n[B[2]]d="Enemies"P=X[d]X="GetChildren"X=P[X]X=X(P)P=14248488 d=X E=#d X=1 m=E E=1 N=E E=0 G=N<E E=X-N
                                                end
                                            elseif P<15346117 then
                                                    X="DetectChest"P=U[X]X=P()r=X P=r and 7357865 or 3660161
                                                else
                                                    r="Character"X=n[B[1]]E="SelectedRod"P=X[r]d=n[B[2]]r=d[E]X="FindFirstChild"X=P[X]X=X(P,r)r=X P=r and 12411487 or 6578334
                                                end
end
                                        elseif P<15357780 then
                                                if P<15356030 then
                                                    P=true Q="pcall"m=S()r=k E="string"d=S()n[d]=P X=U[E]E="gmatch"N=S()P=X[E]E=S()n[E]=P P=Y(11945619,{})n[m]=P P=false H=A(1691769,{N})n[N]=P G=U[Q]Q=G(H)X=Q P=Q and 11794054 or 11315065
                                                else
                                                    K="SecretDoor"P=670718 g=o[K]K="CanCollide"h=g[K]v=h
                                                end
                                            else
                                                Q=N o="Type"O=H[o]o="Blox Fruit"X=O==o P=X and 16396381 or 7814862
                                            end
end
                                    elseif P<15365783 then
                                            if P<15363072 then
                                                if P<15361969 then
                                                    r=nil X={}P=U["z52prWZrNjIFNh"]
                                                else
                                                    N=E O=P v="FindFirstChild"o=n[B[3]]v=o[v]v=v(o,G)H=v P=v and 9521238 or 3786976
                                                end
                                            else
                                                P=15912610
                                            end
                                        elseif P<15372084 then
                                                if P<15368641 then
                                                    X="GetQuest"P=U[X]X={P()}X={I(X)}P=U["eVW4UxfjMape"]
                                                else
                                                    i="Task Completed"v="find"o=P v=Q[v]v=v(Q,i)O=v P=v and 13056896 or 16565099
                                                end
                                            else
                                                P=13010672 G=E
                                            end
end
                                    end
end
                            elseif P<15451790 then
                                    if P<15415560 then
                                        if P<15409513 then
                                            if P<15392498 then
                                                if P<15376727 then
                                                    X=false P=U["8zuFhXH3ENmt4y"]X={X}
                                                else
                                                    P=not d P=P and 6282432 or 5805647
                                                end
                                            elseif P<15404760 then
                                                    P=n[B[8]]i="HumanoidRootPart"v=r[i]i="CFrame"h="CFrame"o=v[i]g=0 i=U[h]K=0 h="new"v=i[h]h=3 i=v(h,g,K)O=o*i H=P(O)P=9159422
                                                else
                                                    X={}P=U["kwerzVO1yLvg"]
                                                end
end
                                        elseif P<15413423 then
                                                if P<15411538 then
                                                    r=nil X={}P=U["ZwLfyKsm6sY3"]
                                                else
                                                    P=G P=X and 13724867 or 13189809
                                                end
                                            else
                                                X={}P=U["kYcyGv5ImgEQL"]
                                            end
end
                                    elseif P<15434882 then
                                            if P<15434620 then
                                                if P<15418754 then
                                                    X={}P=U["LLV57mkA90JJy"]
                                                else
                                                    N=E H="table"Q=U[H]H="insert"P=Q[H]H=n[B[2]]N=nil Q=P(H,G)P=5467189 G=nil
                                                end
                                            else
                                                P=n[B[1]]X=P()X={}P=U["xAxtpgDeg3sh"]
                                            end
                                        elseif P<15437373 then
                                                if P<15434953 then
                                                    Q="workspace"P=n[B[4]]G=U[Q]Q="Map"N=G[Q]G="Ice"m=N[G]N="Door"E=m[N]m="CFrame"d=E[m]X=P(d)P=6445104
                                                else
                                                    P=12350446
                                                end
                                            else
                                                P=2417032 d=nil
                                            end
end
                                    end
                                elseif P<15500642 then
                                        if P<15487970 then
                                            if P<15463813 then
                                                if P<15454260 then
                                                    P=6565849
                                                else
                                                    P=X and 14690680 or 12801203
                                                end
                                            elseif P<15470010 then
                                                    X={}P=U["SJCEmslNx2ymxP"]
                                                else
                                                    E="Rarity"m="Rarity"X=r[E]E=d[m]P=X>E X={P}P=U["ZFpnaYNsSB1f"]
                                                end
end
                                        elseif P<15499661 then
                                                if P<15498635 then
                                                    P=1552692 g="Position"h=n[H]i=h[g]O="FireServer"L=n[B[1]]a="Character"K=L[a]L="HumanoidRootPart"g=K[L]K="Position"O=Q[O]h=g[K]v=i-h i="Unit"o=v[i]O=O(Q,o,N)
                                                else
                                                    N="ESPquantumONYX"m="FindFirstChild"d=n[r]m=d[m]m=m(d,N)P=m and 11835989 or 15166774
                                                end
                                            else
                                                P=m P=9414806 X=E
                                            end
end
                                    elseif P<15507551 then
                                            if P<15506291 then
                                                if P<15501980 then
                                                    m=n[B[1]]N="QuestType"E=m[N]m=2 d=E==m P=d and 6303749 or 8130596
                                                else
                                                    P=X and 3325073 or 12538645
                                                end
                                            else
                                                P=7776625
                                            end
                                        elseif P<15526650 then
                                                if P<15509806 then
                                                    d=n[B[4]]E=d(r)P=E and 4352228 or 9533291
                                                else
                                                    K="Rarity"g=H[K]h=P i=g P=g and 4033897 or 6982131
                                                end
                                            else
                                                r="Don Swan"P=n[B[3]]X=P(r)P=X and 16740582 or 11772875
                                            end
end
                                    end
end
                            end
                        elseif P<15641450 then
                                if P<15584430 then
                                    if P<15570057 then
                                        if P<15557577 then
                                            if P<15549527 then
                                                if P<15531240 then
                                                    m="VerifyQuest"X=U[m]m=X(r)P=not m P=P and 15365887 or 9007649
                                                else
                                                    m="FireInvoke"G="unpack"X=U[m]N=U[G]G={N(E)}P=2352765 m=X(I(G))
                                                end
                                            elseif P<15557106 then
                                                    X="^Quantum%-pogi%-"P="gsub"r=k[1]N=2 d=""P=r[P]P=P(r,X,d)d=P P={}m=#d E=P X=m%N m=0 P=X~=m P=P and 461576 or 6719377
                                                else
                                                    rd="string"Bd=U[rd]rd="gmatch"Xd=Bd[rd]rd="pcall"Bd=S()n[Bd]=Xd Xd=U[rd]Ed="main"dd=U[Ed]Ed={Xd(dd)}dd="ipairs"P=14811848 rd=Ed[1]Sd=Ed[2]Xd=U[dd]md={Xd(sd)}Ed=md[2]ld=md[3]dd=md[1]
                                                end
end
                                        elseif P<15560636 then
                                                if P<15557808 then
                                                    bd="getmetatable"Td=U[bd]Ad[3]="_G"Ad[2]=U[Ad[3]]Xd=ld Ad[1]=Ad[2][md]bd=Td(Ad[1])Ad[1]="getmetatable"Td=U[Ad[1]]Ad[3]=n[kd]Ad[2]=Ad[3][md]Ad[1]=Td(Ad[2])Yd=bd~=Ad[1]P=Yd and 5007584 or 3709938
                                                else
                                                    X=11649342 E=4749613 d="ZwpP"r=d^E P=X-r X="okfuGMcln2I94N"r=P P=X/r X={P}P=U["J69h3vy7vRqN"]
                                                end
                                            else
                                                P=n[B[1]]r=n[B[2]]d=n[B[3]]X=P(r,d)P=U["zTWrylkNiofQNz"]X={}
                                            end
end
                                    elseif P<15582286 then
                                            if P<15574856 then
                                                if P<15570114 then
                                                    X="pcall"r=w(7444527,{B[1],B[2]})P=U[X]X=P(r)P=5515466
                                                else
                                                    o=n[B[4]]v="Stop"H=P O=o[v]P=O and 6888932 or 5960489 Q=O
                                                end
                                            else
                                                r="task"X=U[r]r="wait"P=X[r]r=.3 X=P(r)P=X and 10745902 or 16055483
                                            end
                                        elseif P<15582702 then
                                                if P<15582619 then
                                                    P=H P=Q and 1960434 or 4333992
                                                else
                                                    r=nil P=8328487
                                                end
                                            else
                                                P=U["TYRALsQyLAPA0"]X={}
                                            end
end
                                    end
                                elseif P<15615449 then
                                        if P<15604764 then
                                            if P<15589478 then
                                                if P<15586059 then
                                                    P=1117158
                                                else
                                                    H="UPDATE11"G="EXP_5B"md="StrawHatMaine"E="Magicbus"N="SECRET_ADMIN"M="BIGNEWS"Ud="Sub2CaptainMaui"Q="CONTROL"g="TantaiGaming"u="Starcodeheo"sd="JCWK"Ed="Axiore"ld="TantaiGaming"a="Sub2Daigrock"o="1BILLION"v="ShutDownFix2"m="kittgaming"R="THEGREATACE"K="Colosseum"kd="Enyu_is_Pro"C="Sky Island 3"y="Sub2OfficialNoobie"V="DRAGONABUSE"Id="DEVSCOOKING"i="UPD14"Xd="Starcodeheo"d="Sub2Fer999"r="KITT_RESET"L="Axiore"z="FUDD10"nd="Bluxxy"D="3BVISITS"jd="Bluxxy"rd="Sub2NoobMaster123"h="STRAWHATMAINE"x="Fountain City"q="UPD15"e="SUB2GAMERROBOT_EXP1"t="SUB2NOOBMASTER123"dd="Sub2Daigrock"J="UPD16"O="XMASEXP"Bd="SUB2GAMERROBOT_EXP1"X="NEWTROLL"Sd="Sub2UncleKizaru"Pd="2BILLION"cd="fudd10_v2"P={X
                                                    r
                                                    d,E
                                                    m,N
                                                    G
                                                    Q
                                                    H
                                                    O,o
                                                    v
                                                    i,h,g
                                                    K,L
                                                    a
                                                    C
                                                    y
                                                    t
                                                    R,x,M,z
                                                    e
                                                    q
                                                    Pd,J
                                                    D
                                                    u,jd
                                                    V
                                                    Ud
                                                    Id
                                                    kd
                                                    sd,Xd,nd,cd,Bd,rd
                                                    Sd,dd,Ed,ld
                                                    md}X="pairs"r=P P=U[X]m={P(r)}X=m[1]d=m[2]E=m[3]P=10527736 m=X
                                                end
                                            elseif P<15591210 then
                                                    X={}P=U["kuufShFkqsFfng"]
                                                else
                                                    P=13630323 d="getfruitstore"r=U[d]d=r()X=d
                                                end
end
                                        elseif P<15611429 then
                                                if P<15609188 then
                                                    G="GetChildren"G=d[G]G=G(d)N=#G G=0 P=7991934 m=N>G X=m
                                                else
                                                    d="VerifyQuest"X=U[d]d=X(r)P=not d P=P and 8401551 or 11150286
                                                end
                                            else
                                                Q=n[B[3]]G=P N=Q P=Q and 7930790 or 15571713
                                            end
end
                                    elseif P<15619623 then
                                            if P<15616143 then
                                                if P<15615910 then
                                                    m="GetAttribute"E=n[B[2]]m=E[m]N="YoruEvolution"m=m(E,N)P=16248537 r=m
                                                else
                                                    P=6173821
                                                end
                                            else
                                                P=G P=X and 5017940 or 13991856
                                            end
                                        elseif P<15638577 then
                                                if P<15629148 then
                                                    jd=1 u=q[jd]jd=false D=u==jd Pd=D J=P P=D and 13715898 or 5502544
                                                else
                                                    P=n[B[1]]r=k[1]X={P(r)}X={I(X)}P=U["MYoIL1ZkyerZa"]
                                                end
                                            else
                                                P=2932213
                                            end
end
                                    end
end
                            elseif P<15715286 then
                                    if P<15680462 then
                                        if P<15670610 then
                                            if P<15653321 then
                                                if P<15642640 then
                                                    v=O L="Name"K=i[L]g=K==Q h=g P=g and 5657695 or 7769309
                                                else
                                                    r=nil P=3420948 d=nil
                                                end
                                            elseif P<15667583 then
                                                    i="Name"O=H v=N[i]X=v==o P=X and 1901285 or 16349999
                                                else
                                                    o="unpack"P=1463487 O=U[o]X=O
                                                end
end
                                        elseif P<15672681 then
                                                if P<15672475 then
                                                    X="AutoPurpleBelt"P=U[X]X=P()P=5293812
                                                else
                                                    O="Segment2"g="Trophy3"v="Segment9"H="Segment6"i="Segment5"K="Segment7"o="Segment8"Q={H
                                                    O
                                                    o,v,i}C="Trophy5"O="Segment1"i="Trophy2"L="Trophy4"h="Segment4"v="Segment3"P=343825 o="Trophy1"a="Segment10"H={[O]=o
                                                    [v]=i
                                                    [h]=g,[K]=L,[a]=C}o="pairs"O=U[o]h={O(Q)}i=h[3]o=h[1]v=h[2]
                                                end
                                            else
                                                P=m P=4700605 r=E
                                            end
end
                                    elseif P<15707614 then
                                            if P<15697515 then
                                                if P<15681894 then
                                                    m="IslandRaiding"E="GetAttribute"d=n[B[2]]E=d[E]E=E(d,m)r=not E P=r and 14046824 or 9066382
                                                else
                                                    N=E H="Name"Q=G[H]H="NotificationTemplate"P=Q==H P=P and 15976257 or 4674902
                                                end
                                            else
                                                d=P E=n[B[1]]N="Orbitus"m=E(N)P=m and 11386638 or 1644964 r=m
                                            end
                                        elseif P<15711626 then
                                                if P<15709877 then
                                                    X="FireInvoke"P=U[X]d="Microchip"r="BlackbeardReward"E="1"X=P(r,d,E)P=X and 12887668 or 16678587
                                                else
                                                    d=nil P=11410470
                                                end
                                            else
                                                r="Diablo"P=n[B[1]]X=P(r)P=X and 9573909 or 16643643
                                            end
end
                                    end
                                elseif P<15756948 then
                                        if P<15737315 then
                                            if P<15724894 then
                                                if P<15717746 then
                                                    O="Color3"o=215 H=U[O]v=0 O="fromRGB"Q=H[O]O=255 H=Q(O,o,v)n[m]=H Q="rbxassetid://103232045481498"O="Gold Chest"n[N]=Q n[G]=O P=5425571
                                                else
                                                    d=not r X=d P=d and 6611160 or 12345577
                                                end
                                            elseif P<15734515 then
                                                    h="Position"i=G[h]o=i P=12418757
                                                else
                                                    d=P E=n[B[3]]N="Flower1"m="FindFirstChild"m=E[m]m=m(E,N)X=m P=m and 79029 or 7050028
                                                end
end
                                        elseif P<15754386 then
                                                if P<15747183 then
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 13145813 or 9118134
                                                else
                                                    P=1608588
                                                end
                                            else
                                                sd=b(3310567,{kd
                                                H,v})Id=S()n[Id]=sd sd=p(495003,{o,h
                                                kd
                                                Id,v})Bd="error"Xd="protectGlobals"Ud[Xd]=sd sd=Y(15634127,{Id})Xd="protectTable"Ud[Xd]=sd Xd="protectFunction"sd=A(10474889,{v
                                                H})Ud[Xd]=sd Xd=P cd=U[Bd]nd=cd~=Q sd=nd P=nd and 3584149 or 8133033
                                            end
end
                                    elseif P<15769123 then
                                            if P<15760785 then
                                                if P<15758948 then
                                                    P=X and 10783040 or 9818821
                                                else
                                                    i="table"v=U[i]i="insert"g="Distance"P=v[i]h="Enemy"i={[h]=Q,[g]=o}v=P(d,i)P=8583733
                                                end
                                            else
                                                n[d]=Pd V=1 jd=n[M]u=jd+V D=q[u]J=v+D D=256 P=J%D v=P u=n[x]D=i+u u=256 J=D%u i=J P=8154282
                                            end
                                        elseif P<15786255 then
                                                if P<15778032 then
                                                    P=4085617
                                                else
                                                    Ad[106],Ad[108]=Ad[104](Ad[105],Ad[106])P=Ad[106]and 3938247 or 7179533
                                                end
                                            else
                                                P=2875860 X=n[B[4]]E=X(d)
                                            end
end
                                    end
end
                            end
end
                    end
                elseif P<16289615 then
                        if P<16049259 then
                            if P<15938002 then
                                if P<15867556 then
                                    if P<15830139 then
                                        if P<15811361 then
                                            if P<15801143 then
                                                if P<15798995 then
                                                    x="Y"C="X"N="LastCastLocation"m=n[B[2]]Q="Rod State: "E=m[N]R="math"o="tostring"N="FishingInfo"a="math"P=11682253 m=U[N]O=U[o]h="Cast @ X:"o=O(d)v="\n"L=U[a]a="floor"K=L[a]a=E[C]L=K(a)t=U[R]e="Z"R="floor"y=t[R]R=E[x]a=" Y:"N="RefreshDesc"t=y(R)N=m[N]R=" Z:"z="math"M=U[z]z="floor"x=M[z]z=E[e]M=x(z)y=R..M C=t..y K=a..C g=L..K i=h..g O=v..i H=o..O G=Q..H N=N(m,G)E=nil
                                                else
                                                    G="pairs"X=U[G]O=n[B[2]]o={X(O)}Q=o[2]H=o[3]G=o[1]P=48872
                                                end
                                            elseif P<15803524 then
                                                    P=Xd P=sd and 3596504 or 7400107
                                                else
                                                    P=11887684 N=nil m=nil
                                                end
end
                                        elseif P<15824963 then
                                                if P<15818603 then
                                                    Ad[12]=l(Ad[12])Ad[14]=l(Ad[14])Ad[10]=l(Ad[10])Ad[9]=nil Ad[11]=l(Ad[11])Ad[4]=l(Ad[4])P=6450861 Ad[13]=l(Ad[13])
                                                else
                                                    X="AutoGetTTK"P=U[X]X=P()P=15234620
                                                end
                                            else
                                                t="tostring"P=13091705 a="Bone Roll: No rolls left. Wait "K=n[B[1]]y=U[t]t=y(h)y=" min"C=t..y L=a..C O=K..L H=O
                                            end
end
                                    elseif P<15848751 then
                                            if P<15836112 then
                                                if P<15835735 then
                                                    r=r+E X=r<=d N=not m X=N and X N=r>=d N=m and N X=N or X N=8725259 P=X and N X=4122984 P=P or X
                                                else
                                                    h=P N=Q v=G[N]K="Humanoid"g="FindFirstChild"g=v[g]g=g(v,K)i=g P=g and 13710564 or 4359661
                                                end
                                            elseif P<15843526 then
                                                    P=X and 475160 or 12945929
                                                else
                                                    X="IsA"m=d G="Model"X=N[X]X=X(N,G)P=X and 13002631 or 10225851
                                                end
end
                                        elseif P<15865272 then
                                                if P<15859791 then
                                                    h="find"h=G[h]H=v h=h(G,i)P=h and 2604882 or 15184014
                                                else
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 8418941 or 14491635
                                                end
                                            else
                                                r="FireInvoke"d="SweetChaliceNpc"X=U[r]r=X(d)X="Where are the items?"P=r==X P=P and 14806695 or 16053851
                                            end
end
                                    end
                                elseif P<15895755 then
                                        if P<15876372 then
                                            if P<15873084 then
                                                if P<15868454 then
                                                    Ad[19]=1 P=13414871 Ad[18]=Ad[9][Ad[19]]Ad[16]=Ad[18]
                                                else
                                                    Ad[12]=P Ad[15]="string"Ad[14]=U[Ad[15]]Ad[13]=Ad[14]~=e Ad[11]=Ad[13]P=Ad[13]and 16049238 or 13649331
                                                end
                                            elseif P<15875451 then
                                                    P=6739530 L=nil t=nil
                                                else
                                                    d=1 P=r[d]E=n[B[2]]d=P m="Character"P=E[m]G=P m="Tool"E="FindFirstChildOfClass"E=P[E]E=E(P,m)H=P Q=E P=E and 6062242 or 8601156
                                                end
end
                                        elseif P<15884161 then
                                                if P<15878033 then
                                                    P=U["9zWANMC7pERBW"]X={}
                                                else
                                                    X="AutoKillRipIndra"P=U[X]X=P()P=8113032
                                                end
                                            else
                                                P=5785855 G=nil
                                            end
end
                                    elseif P<15914343 then
                                            if P<15913393 then
                                                if P<15907057 then
                                                    r="AutoGetGhoulRace"X=n[B[1]]P=X[r]P=P and 3765572 or 3106793
                                                else
                                                    r="task"X=U[r]r="wait"P=X[r]r=.2 X=P(r)P=X and 12116004 or 10308514
                                                end
                                            else
                                                d=n[B[4]]H=1002.2955 P=6479110 O=399.0869 Q="CFrame"G=U[Q]Q="new"N=G[Q]Q=4620.6157 G={N(Q,H,O)}m=d(I(G))
                                            end
                                        elseif P<15925370 then
                                                if P<15918482 then
                                                    E=E+N d=E<=m Q=not G d=Q and d Q=E>=m Q=G and Q d=Q or d Q=16387340 P=d and Q d=10474786 P=P or d
                                                else
                                                    d=n[B[4]]Q="CFrame"G=U[Q]Q="new"N=G[Q]H="Position"Q=E[H]G=N(Q)P=5663225 N=true m=d(G,N)
                                                end
                                            else
                                                d="Context"E="Check"X="WaitForChild"P=n[B[1]]X=P[X]r="RF/DragonHunter"X=X(P,r)P="InvokeServer"r={[d]=E}P=X[P]P=P(X,r)X={}n[B[2]]=P P=U["qR8kbWrt2sBa"]
                                            end
end
                                    end
end
                            elseif P<15983166 then
                                    if P<15964997 then
                                        if P<15956573 then
                                            if P<15948727 then
                                                if P<15946409 then
                                                    P=285693
                                                else
                                                    P={}r=P X="next"m="GetChildren"P=U[X]X=n[B[1]]m=X[m]m={m(X)}E=m[2]d=m[1]m=P P=3016101
                                                end
                                            elseif P<15950326 then
                                                    P=15582648 d=nil
                                                else
                                                    g="FishReplicated"h=n[B[4]]i=h[g]h="FishingRequest"X=i[h]i="InvokeServer"i=X[i]h="StartCasting"i=i(X,h)h="task"i=U[h]P=O and 2917245 or 13328252 h="wait"X=i[h]h=.7 i=X(h)
                                                end
end
                                        elseif P<15960803 then
                                                if P<15956848 then
                                                    d=nil P=2417032
                                                else
                                                    P=X and 15099202 or 13066350
                                                end
                                            else
                                                P=U["QSDMWjdSQzJcy"]X={}
                                            end
end
                                    elseif P<15971079 then
                                            if P<15968422 then
                                                if P<15965828 then
                                                    P=2885604
                                                else
                                                    X="spawncache"P=U[X]X=P()P=13945431
                                                end
                                            else
                                                d="FireInvoke"m="Bartilo"X=U[d]E="BartiloQuestProgress"d=X(E,m)X=1 P=d==X P=P and 12186488 or 10090929
                                            end
                                        elseif P<15979951 then
                                                if P<15975076 then
                                                    N="Character"m=n[B[1]]E=m[N]m="FindFirstChild"N="HumanoidRootPart"m=E[m]P=2083440 m=m(E,N)X=m
                                                else
                                                    O="Text"H=G[O]P=H and 8613448 or 1521182 Q=H
                                                end
                                            else
                                                X="WaitForChild"O=N O=nil o="RF/SubmarineWorkerSpeak"P=n[B[8]]X=P[X]X=X(P,o)P="InvokeServer"o="TravelToSubmergedIsland"P=X[P]P=P(X,o)P=305116
                                            end
end
                                    end
                                elseif P<16033291 then
                                        if P<16016940 then
                                            if P<16006099 then
                                                if P<15994159 then
                                                    d,N=r(E,d)P=d and 2494270 or 10799406
                                                else
                                                    O=nil Q=nil P=12003304 H=nil
                                                end
                                            elseif P<16012994 then
                                                    P=X and 12838940 or 4622972
                                                else
                                                    X=n[B[3]]m=n[r]Q="Color3"G=U[Q]Q="fromRGB"H=238 N=G[Q]O=144 Q=144 G=N(Q,H,O)N=w(10288302,{B[4]
                                                    r
                                                    d})d=l(d)P=999614 E=X(m,G,N)
                                                end
end
                                        elseif P<16028087 then
                                                if P<16020274 then
                                                    X={}P=U["6ruc9zCAxhYgo"]
                                                else
                                                    r=k[1]X="Melee"P=n[B[1]]d=r P[X]=d P=U["ySyFERFac9bo"]X={}r=nil
                                                end
                                            else
                                                P=U["xghvsS9mj6JG"]X={r}
                                            end
end
                                    elseif P<16043554 then
                                            if P<16036446 then
                                                if P<16035705 then
                                                    P=d P=X and 5615293 or 15507798
                                                else
                                                    X="EquipToolName"E="CFrame"r="Relic"N=4.5685839653015 P=U[X]X=P(r)P=n[B[3]]d=U[E]m=29.977333068848 E="new"r=d[E]E=-1405.3677978516 d={r(E,m,N)}X=P(I(d))P=15749423
                                                end
                                            else
                                                X="AutoGetCyborgRace"P=U[X]X=P()P=11809582
                                            end
                                        elseif P<16048787 then
                                                if P<16047089 then
                                                    K="Mastery"g=Q[K]P=2048270 K=600 i=g<K o=i
                                                else
                                                    r=k[1]X="GunSelect"d=r P=n[B[1]]P[X]=d X={}r=nil P=U["ztL9hScVukpTL"]
                                                end
                                            else
                                                P=Ad[12]P=11260701 Ad[9]=Ad[11]
                                            end
end
                                    end
end
                            end
                        elseif P<16170076 then
                                if P<16097715 then
                                    if P<16081582 then
                                        if P<16061321 then
                                            if P<16055142 then
                                                if P<16051767 then
                                                    K="GetAttributes"G=H K=O[K]v="pairs"o=U[v]g={K(O)}K={o(I(g))}i=K[2]P=1705635 v=K[1]h=K[3]
                                                else
                                                    P=13551736
                                                end
                                            elseif P<16057247 then
                                                    X={}P=U["GP4SO1f3FLQmJE"]
                                                else
                                                    P=8461421 H=nil
                                                end
end
                                        elseif P<16080103 then
                                                if P<16079170 then
                                                    G=nil N=nil P=U["ALMYshKcWS7bQ"]d=nil X={}r=nil E=nil m=nil
                                                else
                                                    N="game"d="tostring"X="setclipboard"P=U[X]r=U[d]m=U[N]N="JobId"E=m[N]d={r(E)}X=P(I(d))P=U["EZufBu4gcjGbU"]X={}
                                                end
                                            else
                                                i="Name"O=P v=H[i]o=v==d P=o and 8889936 or 16402987 X=o
                                            end
end
                                    elseif P<16093162 then
                                            if P<16087526 then
                                                if P<16086239 then
                                                    P=U["AGnPrqP9iNkXV"]X={}
                                                else
                                                    P=u Id=4442272183 u=S()jd=P n[u]=M Ud=n[D]V=Ud==Id M=V P=V and 1014902 or 8450747
                                                end
                                            else
                                                m,G=d(E,m)P=m and 8924803 or 1745600
                                            end
                                        elseif P<16095273 then
                                                if P<16094698 then
                                                    N=n[d]G="Parent"m=N[G]G="Humanoid"N="FindFirstChildOfClass"N=m[N]N=N(m,G)m=S()n[m]=N G=n[m]N=not G P=N and 11676479 or 12209820
                                                else
                                                    O="Map"P=n[B[4]]H=n[B[3]]Q=H[O]H="CyborgTrial"G=Q[H]O=0 Q="Floor"H=500 N=G[Q]Q="CFrame"G="CFrame"m=N[G]G=U[Q]Q="new"N=G[Q]Q=0 G=N(Q,H,O)E=m*G X=P(E)P=10638525
                                                end
                                            else
                                                X="StopTween"P=U[X]X={P()}X={I(X)}P=U["U3gZFqLJgDmML"]
                                            end
end
                                    end
                                elseif P<16127081 then
                                        if P<16122681 then
                                            if P<16114953 then
                                                if P<16110843 then
                                                    E=X P=d and 2611369 or 4096036
                                                else
                                                    o=nil P=15116575
                                                end
                                            elseif P<16119121 then
                                                    P=12557727
                                                else
                                                    X="AutoDarkbeard"P=U[X]X=P()P=11486791
                                                end
end
                                        elseif P<16124324 then
                                                if P<16123412 then
                                                    o="FireInvoke"O=U[o]v="LoadItem"o=O(v,G)O=nil X={O}P=U["4Ap1TgzZsJug"]
                                                else
                                                    Ad[5]=Ad[7]P=Ad[8]P=16579088
                                                end
                                            else
                                                X="game"P=U[X]X="GetService"X=P[X]r="VirtualUser"X=X(P,r)r=X P=13016111
                                            end
end
                                    elseif P<16142850 then
                                            if P<16136978 then
                                                if P<16136009 then
                                                    r="tick"X=U[r]r=X()X=n[B[1]]P=r-X N=.5 r=P E=P m=r<=N P=m and 833897 or 5666394 d=m
                                                else
                                                    P=12135619
                                                end
                                            else
                                                X={}P=U["ih6ZjfrgxnwLt"]
                                            end
                                        elseif P<16149903 then
                                                if P<16149346 then
                                                    G=nil P=3016101 N=nil
                                                else
                                                    X="MobsNextSpawn"d="Don Swan"P=U[X]X=P(d)P=3925887
                                                end
                                            else
                                                X="originalError"P=U[X]r=w(2719214,{})X=P(r)P=12159849
                                            end
end
                                    end
end
                            elseif P<16234148 then
                                    if P<16214688 then
                                        if P<16185732 then
                                            if P<16179170 then
                                                if P<16176015 then
                                                    d,N=E(r,d)P=d and 14982939 or 5222760
                                                else
                                                    h=nil P=9406756
                                                end
                                            elseif P<16182221 then
                                                    X="pcall"P=U[X]r=b(13216279,{B[1]})X=P(r)P=9487054
                                                else
                                                    O=nil H=nil P=16546708
                                                end
end
                                        elseif P<16212623 then
                                                if P<16198749 then
                                                    G="CircleIsland"N=n[B[2]]m=N[G]N="RaidSummon"E=m[N]m="Button"d=E[m]E="Main"r=d[E]d="ClickDetector"X=r[d]P=not X P=P and 13129360 or 7369057
                                                else
                                                    P=U["b6dFiyEtnpq18U"]X={}
                                                end
                                            else
                                                X="pcall"P=U[X]r=A(13372556,{B[1]})X=P(r)P=8409336
                                            end
end
                                    elseif P<16227591 then
                                            if P<16223182 then
                                                if P<16217090 then
                                                    r=nil P=U["lQ3FhOpdKfTV"]X={}
                                                else
                                                    P=m P=X and 3207991 or 212920
                                                end
                                            else
                                                P=U["czvDzSVbecg9L"]X={}
                                            end
                                        elseif P<16233707 then
                                                if P<16231372 then
                                                    P=U["wFwSjm4O5Xkoz"]X={}
                                                else
                                                    d="Bartilo Quest"P=n[B[7]]E="Quest Completed"m=8 X=P(d,E,m)P=13025155
                                                end
                                            else
                                                P=12184455 m=not d X=m
                                            end
end
                                    end
                                elseif P<16267733 then
                                        if P<16258386 then
                                            if P<16241820 then
                                                if P<16236278 then
                                                    m="CheckTool"N="Cup"E=U[m]m=E(N)E="Handle"d=m[E]E="FindFirstChild"m="TouchInterest"E=d[E]E=E(d,m)r=not E X=r P=15841288
                                                else
                                                    H="find"O="Destroy"H=G[H]H=H(G,O)P=H and 12863651 or 9447522
                                                end
                                            elseif P<16251398 then
                                                    X=r P=d P=14109140
                                                else
                                                    G=X X="ipairs"P=U[X]O={P(G)}X=O[1]Q=O[2]H=O[3]P=12032760 O=X
                                                end
end
                                        elseif P<16259958 then
                                                if P<16258727 then
                                                    H=n[B[1]]m=r O="TeleportIslandSelect"Q=H[O]G=m==Q P=G and 9499662 or 10174991
                                                else
                                                    P=16515397
                                                end
                                            else
                                                X=m P=7004406
                                            end
end
                                    elseif P<16277440 then
                                            if P<16276393 then
                                                if P<16274494 then
                                                    P=n[B[3]]X=P(d)P=12593821
                                                else
                                                    r="CakePrinceSpawner"X="FireInvoke"P=U[X]X=P(r)P=11060000
                                                end
                                            else
                                                X=n[B[4]]r="DistanceFromCharacter"r=X[r]Q=-6839 N="CFrame"m=U[N]N="new"E=m[N]G=293 N=6373 m=E(N,G,Q)E="Position"d=m[E]r=r(X,d)X=2 P=r>X P=P and 14906539 or 9362382
                                            end
                                        elseif P<16285773 then
                                                if P<16285038 then
                                                    X={}P=U["fD7rL65eItUZ"]
                                                else
                                                    r=S()d=k[2]m=S()n[r]=k[1]E=S()n[E]=k[3]n[m]=k[4]G=n[r]N=not G P=N and 10604194 or 5053796 X=N
                                                end
                                            else
                                                X={}P=U["7TbEaGJAN4jU"]
                                            end
end
                                    end
end
                            end
end
                    elseif P<16565313 then
                            if P<16401091 then
                                if P<16362551 then
                                    if P<16334926 then
                                        if P<16320464 then
                                            if P<16309922 then
                                                if P<16303977 then
                                                    P=true P=P and 10126522 or 4716953
                                                else
                                                    P=n[B[2]]X=P()P=16666557
                                                end
                                            elseif P<16311912 then
                                                    v=nil o=nil P=12032760 i=nil
                                                else
                                                    X="SeaLevelSelected"P=n[B[1]]r=k[1]d=r P[X]=d r=nil X={}P=U["fzGyWiw2ZT0qtP"]
                                                end
end
                                        elseif P<16333782 then
                                                if P<16329177 then
                                                    X="AutoTaskEliteHunter"P=U[X]X=P()P=12082345
                                                else
                                                    m=0 E=#d P=E==m P=P and 8324291 or 9559754
                                                end
                                            else
                                                r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 8722729 or 10839163
                                            end
end
                                    elseif P<16348780 then
                                            if P<16344528 then
                                                if P<16337539 then
                                                    P=i P=X and 15950876 or 10176204
                                                else
                                                    X="ipairs"P=U[X]N="GetChildren"N=r[N]m={N(r)}N={P(I(m))}E=N[3]d=N[2]P=6028633 X=N[1]m=X
                                                end
                                            elseif P<16348080 then
                                                    H,O=N(Q,H)P=H and 16049345 or 2713916
                                                else
                                                    P=G P=X and 10364268 or 10352445
                                                end
end
                                        elseif P<16359508 then
                                                if P<16352176 then
                                                    O=nil P=48872 o=nil
                                                else
                                                    X={E}P=U["6ucKhjZbmf2Oz"]
                                                end
                                            else
                                                P=10969869
                                            end
end
                                    end
                                elseif P<16382004 then
                                        if P<16372252 then
                                            if P<16368608 then
                                                if P<16365048 then
                                                    m="Material"X=r==m P=X and 4941473 or 12491367
                                                else
                                                    P=X and 1256432 or 6660300
                                                end
                                            elseif P<16368912 then
                                                    r=k[1]P=r and 2710947 or 4353674
                                                else
                                                    o="warn"X=U[o]g="game"h=U[g]g="PlaceId"P=U["eItCoodPyeDL"]v="[Teleport] Could not detect world for PlaceId:"i=h[g]o=X(v,i)X={}
                                                end
end
                                        elseif P<16378412 then
                                                if P<16373170 then
                                                    P=X and 7710891 or 14917188
                                                else
                                                    r="task"E="CFrame"X=U[r]r="wait"P=X[r]m=14888 r=.3 X=P(r)X="TempleTimeStash"P=U[X]X=P()N=-120 X="FireInvoke"P=U[X]r="RaceV4Progress"d="Teleport"X=P(r,d)P=n[B[1]]d=U[E]E="new"r=d[E]E=28982 d={r(E,m,N)}X=P(I(d))P=5719624
                                                end
                                            else
                                                P=X and 11426899 or 11966640
                                            end
end
                                    elseif P<16387960 then
                                            if P<16385664 then
                                                if P<16382756 then
                                                    Ad[38]="walang kayo"Ad[37]={Ad[38]}Ad[33]=Ad[37]P=12278038
                                                else
                                                    P=n[B[4]]m="CFrame"G=254 E=U[m]N=92 m="new"d=E[m]m=3758 E={d(m,N,G)}X=P(I(E))P=7440924
                                                end
                                            else
                                                P=n[B[1]]H=0 O=255 Q=P(H,O)P=15914511 d=E r[d]=Q d=nil
                                            end
                                        elseif P<16396249 then
                                                if P<16395567 then
                                                    P=9488007 r=nil
                                                else
                                                    P=8533515 r=nil
                                                end
                                            else
                                                X=not r P=X and 7696232 or 14403421
                                            end
end
                                    end
end
                            elseif P<16498729 then
                                    if P<16455723 then
                                        if P<16439143 then
                                            if P<16413208 then
                                                if P<16405990 then
                                                    P=O P=X and 16570670 or 8502411
                                                else
                                                    P=X and 7038289 or 10429572
                                                end
                                            elseif P<16415210 then
                                                    d=n[B[1]]r=k[1]E="BringMonster"X=d[E]P=not X P=P and 13700766 or 15341231
                                                else
                                                    h="MeshPart"i="IsA"v=P i=G[i]i=i(G,h)o=i P=i and 12270004 or 4319517
                                                end
end
                                        elseif P<16454080 then
                                                if P<16452774 then
                                                    P=n[B[4]]d=n[B[3]]r=P(d)m="_G"N="__metatable"P="_G"X={}U[P]=r G="This metatable is locked."P=n[B[5]]E=U[m]m={[N]=G}d=P(E,m)P=U["UoasBaSsO4G8"]
                                                else
                                                    r=S()n[r]=k[1]X=n[B[1]]d=n[r]P=X[d]P=P and 15406626 or 12556562
                                                end
                                            else
                                                P=1928616
                                            end
end
                                    elseif P<16491286 then
                                            if P<16465847 then
                                                if P<16461893 then
                                                    Bd="pcall"Xd=P cd=U[Bd]nd=cd~=K sd=nd P=nd and 15801294 or 2881335
                                                else
                                                    X={}P=U["9tbcAeCESSAO"]r=nil
                                                end
                                            else
                                                m=not d P=m and 6618726 or 8328135 E=m
                                            end
                                        elseif P<16498110 then
                                                if P<16494285 then
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 2170412 or 6945756
                                                else
                                                    P=8919783
                                                end
                                            else
                                                X="FruitESP"P=U[X]X=P()P=10442776
                                            end
end
                                    end
                                elseif P<16541358 then
                                        if P<16512269 then
                                            if P<16502135 then
                                                if P<16500862 then
                                                    N="FireInvoke"G="ZQuestProgress"m=U[N]Q="Zou"N=m(G,Q)m=0 E=N==m P=224090 r=E
                                                else
                                                    e="Name"R=P z=L[e]M=r[z]z=nil x=M~=z P=x and 11007800 or 3596542 t=x
                                                end
                                            elseif P<16503180 then
                                                    P=808966 Ad[6]=Td==bd Ad[4]=Ad[6]
                                                else
                                                    Q=O P=o P=2223059
                                                end
end
                                        elseif P<16529386 then
                                                if P<16515987 then
                                                    P=8394334
                                                else
                                                    P=n[B[6]]P=P and 7941741 or 7272881
                                                end
                                            else
                                                X="GetSeaMons"E="Shark"P=U[X]X=P(E)d=X P=16485103
                                            end
end
                                    elseif P<16552171 then
                                            if P<16548744 then
                                                if P<16544151 then
                                                    P=U["cLuGLYEjnW4jM"]X={}r=nil
                                                else
                                                    H=not Q m=m+G X=m<=N X=H and X H=m>=N H=Q and H X=H or X H=13444281 P=X and H X=4355698 P=P or X
                                                end
                                            else
                                                m="NoWorld"E=U[m]m=false d=E==m P=d and 5014271 or 6541520
                                            end
                                        elseif P<16565063 then
                                                if P<16560308 then
                                                    v="FindFirstChild"i="SecretDoor"O=Q v=o[v]v=v(o,i)P=v and 2702429 or 9838027
                                                else
                                                    X=true X={X}P=U["WMpUcPR8IXnR"]
                                                end
                                            else
                                                v="find"i="Head back to the Dojo"v=Q[v]P=13056896 v=v(Q,i)O=v
                                            end
end
                                    end
end
                            end
                        elseif P<16672249 then
                                if P<16616901 then
                                    if P<16588152 then
                                        if P<16569610 then
                                            if P<16565774 then
                                                if P<16565408 then
                                                    m=1208 P=n[B[3]]E="CFrame"d=U[E]N=870 E="new"r=d[E]E=5867 d={r(E,m,N)}X=P(I(d))P=3230983
                                                else
                                                    X=true n[B[2]]=X d=n[B[3]]E=d()m=P d=S()n[d]=E G=n[d]N=not G P=N and 12373553 or 12265253 E=N
                                                end
                                            elseif P<16567684 then
                                                    E="workspace"X=U[E]E="Enemies"P=X[E]X="GetChildren"X=P[X]X=X(P)E=X P=16546708 m=#E N=m m=1 G=m X=1 m=0 Q=G<m m=X-G
                                                else
                                                    H=n[B[5]]O="FarmMode"P=449012 Q=H[O]H="Nearest"G=Q~=H m=G
                                                end
end
                                        elseif P<16582385 then
                                                if P<16577348 then
                                                    X=true X={X}P=U["BYSSXvQzCcLdEK"]
                                                else
                                                    P=Ad[6]Ad[3]=Ad[5]P=7276782
                                                end
                                            else
                                                v="diamond"o="find"o=d[o]o=o(d,v)P=o and 12575237 or 5425571
                                            end
end
                                    elseif P<16601509 then
                                            if P<16599234 then
                                                if P<16597567 then
                                                    Q=38 E=1 X="StartQuest"P=U[X]d="CakeQuest1"G="CFrame"N=U[G]G="new"m=N[G]G=-2021 H=-12029 N={m(G,Q,H)}X={P(d,E,I(N))}X={I(X)}P=U["4ysX0uOWLfHR"]
                                                else
                                                    P=16641869
                                                end
                                            else
                                                X="CheckBoat"P=U[X]X=P()r=X P=not r P=P and 14869411 or 97280
                                            end
                                        elseif P<16611818 then
                                                if P<16608838 then
                                                    O=0 o=1 X="Play"X=Q[X]P=502477 X=X(Q,O,o,H)O=.01 X="TimePosition"Q[X]=O
                                                else
                                                    Q=nil H=nil P=14984651
                                                end
                                            else
                                                P=2932213
                                            end
end
                                    end
                                elseif P<16643771 then
                                        if P<16640138 then
                                            if P<16627588 then
                                                if P<16618491 then
                                                    N="table"m=U[N]N="sort"P=m[N]N=Z(2681668,{})m=P(E,N)P=nil N="ipairs"m=P P=U[N]H={P(E)}N=H[1]G=H[2]P=1848355 Q=H[3]
                                                else
                                                    P=bd md=Td P=Td and 10175538 or 3173533
                                                end
                                            elseif P<16635368 then
                                                    sd=n[H]P=16458906 Xd=sd()
                                                else
                                                    X={}P=U["QwBzhKKt3QNN"]
                                                end
end
                                        elseif P<16643003 then
                                                if P<16640709 then
                                                    X=n[B[1]]r="AutoEliteHunter"P=X[r]P=P and 16329049 or 12082345
                                                else
                                                    r="task"X=U[r]r="wait"P=X[r]X=P()P=X and 3018590 or 14697424
                                                end
                                            else
                                                P=nil X={P}P=U["XgFSuSzpqJvk"]
                                            end
end
                                    elseif P<16662522 then
                                            if P<16651241 then
                                                if P<16645249 then
                                                    P=X and 4943308 or 7621407
                                                else
                                                    Q=not G E=E+N d=E<=m d=Q and d Q=E>=m Q=G and Q d=Q or d Q=11106138 P=d and Q d=3303843 P=P or d
                                                end
                                            else
                                                X={G}P=U["sct24vORPE1ej1"]
                                            end
                                        elseif P<16667045 then
                                                if P<16664874 then
                                                    P=11562064
                                                else
                                                    r=nil d=nil P=U["kYfAki5Nm0mOr"]X={}
                                                end
                                            else
                                                r=nil P=7179793
                                            end
end
                                    end
end
                            elseif P<16723962 then
                                    if P<16716107 then
                                        if P<16687350 then
                                            if P<16683556 then
                                                if P<16677163 then
                                                    X="AutoStartRaceV2"P=U[X]X=P()P=11757501
                                                else
                                                    E=8 d="Not Enough Frags"P=n[B[6]]r="Auto Law Raid"X=P(r,d,E)P=5046016
                                                end
                                            elseif P<16686317 then
                                                    Q="FindFirstChild"O="LeftClickRemote"Q=r[Q]Q=Q(r,O)O=n[H]P=O and 15495258 or 13059656
                                                else
                                                    P=""X={P}P=U["gTkRgDTQzCtL2"]
                                                end
end
                                        elseif P<16710049 then
                                                if P<16703301 then
                                                    Q=o P=v P=13152672
                                                else
                                                    P=U["gzLjm06ociM0"]Q="Part"G=N[Q]X={G}
                                                end
                                            else
                                                P=10377385 a="CanCollide"C=false L[a]=C
                                            end
end
                                    elseif P<16719236 then
                                            if P<16718048 then
                                                if P<16716471 then
                                                    d=nil P=16395834 m=nil E=nil
                                                else
                                                    H="FindFirstChild"O="Molten"H=Q[H]o=P H=H(Q,O)P=H and 14602466 or 9822331 O=H
                                                end
                                            else
                                                g="FishReplicated"h=n[B[4]]i=h[g]h="FishingRequest"g=true X=i[h]h="Catching"i="InvokeServer"i=X[i]P=10176204 i=i(X,h,g)h="task"i=U[h]h="wait"X=i[h]g="FishReplicated"h=.25 i=X(h)h=n[B[4]]i=h[g]h="FishingRequest"X=i[h]i="InvokeServer"i=X[i]h="Catch"g=1 i=i(X,h,g)
                                            end
                                        elseif P<16721054 then
                                                if P<16719699 then
                                                    P=n[B[5]]d="Order"r={d}X=P(r)r=X P=r and 8681788 or 8238994
                                                else
                                                    E,G=m(d,E)P=E and 2998502 or 3045289
                                                end
                                            else
                                                X=E P=m P=6585803
                                            end
end
                                    end
                                elseif P<16753249 then
                                        if P<16738664 then
                                            if P<16731507 then
                                                if P<16727291 then
                                                    P=S()Q="pcall"N=E n[P]=G G=P P=U[Q]H=p(12083973,{B[1],G})Q=P(H)N=nil H="task"Q=U[H]G=l(G)H="wait"P=Q[H]H=.05 Q=P(H)P=10527736
                                                else
                                                    P=n[B[4]]P=P and 15250785 or 14144354
                                                end
                                            elseif P<16737303 then
                                                    Ad[9]="debug"Ad[6]=P Ad[8]=U[Ad[9]]Ad[7]=Ad[8]~=R P=Ad[7]and 16579088 or 318714 Ad[5]=Ad[7]
                                                else
                                                    X="AutoCollectEgg"P=U[X]X=P()P=11385899
                                                end
end
                                        elseif P<16741706 then
                                                if P<16740090 then
                                                    Ad[5]="pcall"Ad[4]=U[Ad[5]]Ad[2]=P Ad[3]=Ad[4]~=K P=Ad[3]and 10928748 or 9747776 Ad[1]=Ad[3]
                                                else
                                                    r="Don Swan"P=n[B[4]]X=P(r)r=X P=r and 11151412 or 16149615
                                                end
                                            else
                                                X="FireInvoke"r="TalkTrevor"d="1"P=U[X]X=P(r,d)d="2"X="FireInvoke"P=U[X]r="TalkTrevor"X=P(r,d)d="3"X="FireInvoke"P=U[X]r="TalkTrevor"X=P(r,d)P=7456060
                                            end
end
                                    elseif P<16767293 then
                                            if P<16765979 then
                                                if P<16755005 then
                                                    E=n[B[1]]m="Value"r="Points Available: "d=E[m]X=r..d P={X}r=P X="ipairs"P=U[X]m=n[B[2]]N={P(m)}d=N[2]E=N[3]P=4166984 X=N[1]m=X
                                                else
                                                    P=n[B[3]]P=P and 14242346 or 14986640
                                                end
                                            else
                                                X="DevilFruitESP"P=n[B[1]]r=k[1]d=r P[X]=d X="FruitESP"P=U[X]r=nil X=P()P=U["b1gtHSjb7MVv"]X={}
                                            end
                                        elseif P<16774610 then
                                                if P<16771950 then
                                                    P=Q Q="Instance"G[P]=X X=U[Q]Q="new"v=0 P=X[Q]Q="BillboardGui"X=P(Q,N)P="Adornee"o=200 Q=X X=n[r]Q[P]=X O="UDim2"i=50 P="Size"H=U[O]O="new"h=0 X=H[O]O=0 g=36 H=X(O,o,v,i)Q[P]=H P="StudsOffset"K=0 O="Vector3"H=U[O]O="new"i=36 o=3 X=H[O]v=0 O=0 H=X(O,o,v)Q[P]=H P="AlwaysOnTop"H="Instance"X=true Q[P]=X X=U[H]v="UDim2"H="new"O=1 P=X[H]H="ImageLabel"X=P(H,Q)H=S()n[H]=X X="BackgroundTransparency"P=n[H]P[X]=O X="Size"P=n[H]o=U[v]v="new"O=o[v]v=0 o=O(v,i,h,g)g=-18 P[X]=o P=n[H]v="UDim2"X="Position"o=U[v]v="new"h=.5 O=o[v]v=0 i=0 o=O(v,i,h,g)P[X]=o o=1 X="Image"i="UDim2"O="rbxassetid://0"P=n[H]P[X]=O O="Instance"h=-40 X=U[O]O="new"P=X[O]O="TextLabel"X=P(O,Q)O=S()n[O]=X X="BackgroundTransparency"P=n[O]P[X]=o X="Size"g=1 P=n[O]v=U[i]i="new"o=v[i]i=1 v=o(i,h,g,K)P[X]=v P=n[O]X="Position"i="UDim2"K=0 h=40 g=0 v=U[i]i="new"o=v[i]i=0 v=o(i,h,g,K)P[X]=v X="TextSize"h="Enum"o=14 P=n[O]P[X]=o P=n[O]i=U[h]h="Font"X="Font"v=i[h]i="SourceSansBold"o=v[i]P[X]=o P=n[O]o=.3 X="TextStrokeTransparency"P[X]=o X="TextColor3"P=n[O]v=P P=d and 14185867 or 9721235 o=d
                                                else
                                                    r=k[1]d=r X="AutoBuyEnchancementColor"P=n[B[1]]P[X]=d r=nil d="task"X=U[d]d="spawn"P=X[d]d=p(6128513,{B[1]})X=P(d)X={}P=U["uD8OiJI6wGae"]
                                                end
                                            else
                                                v=true X={v}P=U["KIJ5u0hnDgaFU"]
                                            end
end
                                    end
end
                            end
end
                    end
end
            end
end
    end
end
P=#c
return I(X)
end
,
function(U,j)
local I=E(j)
local k=
function(k,B,c,s,X,n,r)
return P(U,{k
B,c,s
X,n,r},j,I)
end
return k
end
,
function(U,j)
local I=E(j)
local k=
function(k,B,c,s,X,n,r,S,d,E,m)
return P(U,{k
B
c,s
X
n,r,S,d,E,m},j,I)
end
return k
end
,
function(U,j)
local I=E(j)
local k=
function()
return P(U,{},j,I)
end
return k
end
,{},
function(U,j)
local I=E(j)
local k=
function(k,B)
return P(U,{k
B},j,I)
end
return k
end
return(T(15355796,{}))(I(X))
end
)(getfenv and getfenv()or _ENV,unpack or table["unpack"],newproxy,setmetatable,getmetatable,select,{...})
end
)(...)