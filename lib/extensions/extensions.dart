extension FormattedTime on int {
  toFormattedTime() =>
      '${(Duration(seconds: this))}'.split('.')[0].padLeft(8, '0');
}
