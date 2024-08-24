load matlabfinal.mat
time =ready(1:82,"Time");
Inflation = ready(1:82,"Inflation");
InterestRates = ready(1:82,"BankInterestRates");
OilPrice = ready(1:82,"EuropeBrentSpotPriceFOBDollarsPerBarrel");
ExchangeRate = ready(1:82, "ExchangeRate1EquivalentToUZS");
MoneySupply = ready(1:82, "MoneySupplyInNationalCurrencybillionsOfUzbekSum");
PPI = ready(1:82, "PPI");

plot(Inflation.Inflation, ('r--o'), 'LineWidth', 2)    %line plot
xlabel('time.Time')
ylabel('Inflation.Inflation')
title('Inflation (% change over the month)')
legend('Inflation')

%%%% Converting from level to first difference

Inflation_diff = diff(Inflation.Inflation);
plot(Inflation_diff)

ExchangeRate_diff = diff(ExchangeRate.ExchangeRate1EquivalentToUZS);
plot(ExchangeRate_diff)

InterestRates_diff = diff(InterestRates.BankInterestRates);
plot(InterestRates_diff)

MoneySupply_diff = diff(MoneySupply.MoneySupplyInNationalCurrencybillionsOfUzbekSum);
plot(MoneySupply_diff)

OilPrice_diff = diff(OilPrice.EuropeBrentSpotPriceFOBDollarsPerBarrel);
plot(OilPrice_diff)

PPI_diff = diff(PPI.PPI);
plot(PPI_diff)

%%% Unit Root Tests
%%% ADF Test

%%% Unit rot tests in level

adftest(Inflation)
%%% Comment: Inflation is not stationary at level according to the result


adftest(ExchangeRate)
%%% Comment: ExchangeRate is not stationary at level according to the result

adftest(InterestRates)
%%% Comment: InterestRates is not stationary at level according to the result

adftest(OilPrice)
%%% Comment: OilPrice is not stationary at level according to the result

adftest(MoneySupply)
%%% Comment: Moneysupply is not stationary at level according to the result

adftest(PPI)
%%% Comment: PPI is stationary at level according to the result

%%% KPSS tests

kpsstest(Inflation.Inflation)
%%% Comment: Inflation is stationary at level according to the result

kpsstest(ExchangeRate)
%%% Comment: ExchangeRate is not stationary at level according to the result

kpsstest(InterestRates)
%%% Comment: InterestRates is stationary at level according to the result

kpsstest(OilPrice)
%%% Comment: OilPrice is not stationary at level according to the result

kpsstest(MoneySupply)
%%% Comment: MoneySupply is not stationary at level according to the result

kpsstest(PPI)
%%% Comment: PPI is not stationary at level according to the result

%%%% First difference unit root tests

adftest(Inflation_diff)
%%% p-value is 1
%%%% comment-Inflation_diff is stationary at first difference 
% "Values of 1 indicate rejection of the unit-root null model in favor of the alternative model"

adftest(OilPrice_diff)
%%% p-value is 1
%%%% comment-OilPrice_diff is stationary at first difference 
% "Values of 1 indicate rejection of the unit-root null model in favor of the alternative model"

adftest(ExchangeRate_diff)
%%% p-value is 1
%%%% comment-ExchnageRate_diff is stationary at first difference 
% "Values of 1 indicate rejection of the unit-root null model in favor of the alternative model"

adftest(InterestRates_diff)
%%% p-value is 1
%%%% comment-InterestRate_diff is stationary at first difference 
% "Values of 1 indicate rejection of the unit-root null model in favor of the alternative model"

adftest(MoneySupply_diff)
%%% p-value is 1
%%%% comment-MoneySupply_diff is stationary at first difference 
% "Values of 1 indicate rejection of the unit-root null model in favor of the alternative model"

adftest(PPI_diff)
%%% p-value is 1
%%%% comment-PPI_diff is stationary at first difference 
% "Values of 1 indicate rejection of the unit-root null model in favor of the alternative model"

%%% KPSS unit root tests

kpsstest(Inflation_diff)
%%%% p-value is 0. Inflation_diff is stationary at first difference acording to 'Values of 0 indicate failure to reject the trend-stationary null hypothesis.'

kpsstest(ExchangeRate_diff)
%%%% p-value is 0. ExchangeRate_diff is stationary at first difference acording to 'Values of 0 indicate failure to reject the trend-stationary null hypothesis.'

kpsstest(InterestRates_diff)
%%%% p-value is 0. InterestRate_diff is stationary at first difference acording to 'Values of 0 indicate failure to reject the trend-stationary null hypothesis.'

kpsstest(MoneySupply_diff)
%%%% p-value is 1. MoneySupply is not stationary at first difference acording to 'Values of 1 indicate to reject the trend-stationary null hypothesis.'

kpsstest(OilPrice_diff)
%%%% p-value is 0. OilPrice_diff is stationary at first difference acording to 'Values of 0 indicate failure to reject the trend-stationary null hypothesis.'

kpsstest(PPI_diff)
%%%% p-value is 0. PPI_diff is stationary at first difference acording to 'Values of 0 indicate failure to reject the trend-stationary null hypothesis.'

%%% Philps Perron unit root tests

pptest(Inflation_diff)
%%%% p-value is 1. Inflation_diff is stationary at first difference acording to 'Values of 1 indicate rejection of the unit-root null hypothesis in favor of the alternative.'

pptest(ExchangeRate_diff)
%%%% p-value is 1. Exchamgerate_diff is stationary at first difference acording to 'Values of 1 indicate rejection of the unit-root null hypothesis in favor of the alternative.'

pptest(InterestRates_diff)
%%%% p-value is 1. InteretsRate_diff is stationary at first difference acording to 'Values of 1 indicate rejection of the unit-root null hypothesis in favor of the alternative.'

pptest(MoneySupply_diff)
%%%% p-value is 1. Moneysupply_diff is stationary at first difference acording to 'Values of 1 indicate rejection of the unit-root null hypothesis in favor of the alternative.'

pptest(OilPrice_diff)
%%%% p-value is 1. OilPrice_diff is stationary at first difference acording to 'Values of 1 indicate rejection of the unit-root null hypothesis in favor of the alternative.'

pptest(PPI_diff)
%%%% p-value is 1. PPI_diff is stationary at first difference acording to 'Values of 1 indicate rejection of the unit-root null hypothesis in favor of the alternative.'

%%%%%

