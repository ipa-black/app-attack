.class public Lorg/apache/asn1/codec/stateful/DecoderMonitorAdapter;
.super Ljava/lang/Object;
.source "DecoderMonitorAdapter.java"

# interfaces
.implements Lorg/apache/asn1/codec/stateful/DecoderMonitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callbackOccured(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Lorg/apache/asn1/codec/stateful/DecoderCallback;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public callbackSet(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Lorg/apache/asn1/codec/stateful/DecoderCallback;Lorg/apache/asn1/codec/stateful/DecoderCallback;)V
    .locals 0

    return-void
.end method

.method public error(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Exception;)V
    .locals 2

    .line 38
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ERROR: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public fatalError(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Exception;)V
    .locals 2

    .line 48
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "FATAL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public warning(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Exception;)V
    .locals 2

    .line 58
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "WARN: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
