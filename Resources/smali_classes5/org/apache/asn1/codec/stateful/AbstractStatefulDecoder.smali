.class public abstract Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;
.super Ljava/lang/Object;
.source "AbstractStatefulDecoder.java"

# interfaces
.implements Lorg/apache/asn1/codec/stateful/StatefulDecoder;


# instance fields
.field private cb:Lorg/apache/asn1/codec/stateful/DecoderCallback;

.field private monitor:Lorg/apache/asn1/codec/stateful/DecoderMonitor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;->cb:Lorg/apache/asn1/codec/stateful/DecoderCallback;

    .line 33
    iput-object v0, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;->monitor:Lorg/apache/asn1/codec/stateful/DecoderMonitor;

    return-void
.end method

.method public constructor <init>(Lorg/apache/asn1/codec/stateful/DecoderCallback;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;->cb:Lorg/apache/asn1/codec/stateful/DecoderCallback;

    .line 33
    iput-object v0, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;->monitor:Lorg/apache/asn1/codec/stateful/DecoderMonitor;

    .line 56
    invoke-virtual {p0, p1}, Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;->setCallback(Lorg/apache/asn1/codec/stateful/DecoderCallback;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/asn1/codec/stateful/DecoderCallback;Lorg/apache/asn1/codec/stateful/DecoderMonitor;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;->cb:Lorg/apache/asn1/codec/stateful/DecoderCallback;

    .line 79
    iput-object p2, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;->monitor:Lorg/apache/asn1/codec/stateful/DecoderMonitor;

    .line 80
    invoke-virtual {p0, p1}, Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;->setCallback(Lorg/apache/asn1/codec/stateful/DecoderCallback;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/asn1/codec/stateful/DecoderMonitor;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;->cb:Lorg/apache/asn1/codec/stateful/DecoderCallback;

    .line 67
    iput-object p1, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;->monitor:Lorg/apache/asn1/codec/stateful/DecoderMonitor;

    return-void
.end method


# virtual methods
.method protected decodeOccurred(Ljava/lang/Object;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;->cb:Lorg/apache/asn1/codec/stateful/DecoderCallback;

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0, p0, p1}, Lorg/apache/asn1/codec/stateful/DecoderCallback;->decodeOccurred(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected getDecoderMonitor()Lorg/apache/asn1/codec/stateful/DecoderMonitor;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;->monitor:Lorg/apache/asn1/codec/stateful/DecoderMonitor;

    return-object v0
.end method

.method public setCallback(Lorg/apache/asn1/codec/stateful/DecoderCallback;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;->cb:Lorg/apache/asn1/codec/stateful/DecoderCallback;

    .line 96
    iput-object p1, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;->cb:Lorg/apache/asn1/codec/stateful/DecoderCallback;

    .line 98
    iget-object v1, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;->monitor:Lorg/apache/asn1/codec/stateful/DecoderMonitor;

    if-eqz v1, :cond_0

    .line 100
    invoke-interface {v1, p0, v0, p1}, Lorg/apache/asn1/codec/stateful/DecoderMonitor;->callbackSet(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Lorg/apache/asn1/codec/stateful/DecoderCallback;Lorg/apache/asn1/codec/stateful/DecoderCallback;)V

    :cond_0
    return-void
.end method

.method public setDecoderMonitor(Lorg/apache/asn1/codec/stateful/DecoderMonitor;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulDecoder;->monitor:Lorg/apache/asn1/codec/stateful/DecoderMonitor;

    return-void
.end method
