//abstract class StreamController<T>	implements StreamSink<T>	{
// 		StreamSink<T>	get	sink;
// }

import 'dart:async';

void acessaSink(StreamSink sink) {
  sink.add(42);
  if (sink is StreamController) {
    sink.stream.listen(print);
  }
}

void main() {
  /// Sink encapsulada, impede o acesso direto ao controller:
  acessaSink(StreamController().sink);

  /// Controller também é um sink, mas fornece acesso a mais informações
  // acessaSink(StreamController());
}