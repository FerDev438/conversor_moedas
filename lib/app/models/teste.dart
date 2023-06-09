import 'currency_model.dart';

List<CurrencyModel> getCurrencies() {
  return [
    CurrencyModel(
        name: 'Real', real: 1.0, dolar: 0.18, euro: 0.15, bitcoin: 0.000016),
    CurrencyModel(
        name: 'Dolar', real: 5.63, dolar: 1.0, euro: 0.85, bitcoin: 0.000088),
    CurrencyModel(
        name: 'Euro', real: 6.62, dolar: 1.17, euro: 1.0, bitcoin: 0.00010),
    CurrencyModel(
        name: 'Bitcoin',
        real: 64116.51,
        dolar: 11351.30,
        euro: 9689.34,
        bitcoin: 1.0),
  ];
}
