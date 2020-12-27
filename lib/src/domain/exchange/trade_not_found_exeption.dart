import 'package:oxen_wallet/src/domain/exchange/exchange_provider_description.dart';
import 'package:oxen_wallet/generated/l10n.dart';

class TradeNotFoundException implements Exception {
  TradeNotFoundException(this.tradeId, {this.provider, this.description = ''});

  String tradeId;
  ExchangeProviderDescription provider;
  String description;

  @override
  String toString() {
    var text = tradeId != null && provider != null
        ? S.current.trade_id_not_found(tradeId, provider.title)
        : S.current.trade_not_found;
    text += ' $description';

    return text;
  }
}
