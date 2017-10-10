%% Входные даные Var3_exp
A=1;
t1=16;
t2=5;
t=-10:1:100;
%% Входные даные Var3_filt
l=5;
k=11;
m1=16;
m2=1;
%% Функция Var3_exp
[ v ] = Var3_exp( t1, t2, t, A );
%% Функция Var3_filt
[ s ] = Var3_filt( l, k, m1, m2, v );
%% Нормировка сигнала v
v=v*max(s)/max(v);
%% Построение графиков
plot(t,s,t,v)
