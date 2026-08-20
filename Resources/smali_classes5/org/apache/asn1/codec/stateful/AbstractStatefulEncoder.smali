.class public abstract Lorg/apache/asn1/codec/stateful/AbstractStatefulEncoder;
.super Ljava/lang/Object;
.source "AbstractStatefulEncoder.java"

# interfaces
.implements Lorg/apache/asn1/codec/stateful/StatefulEncoder;


# instance fields
.field private cb:Lorg/apache/asn1/codec/stateful/EncoderCallback;

.field private monitor:Lorg/apache/asn1/codec/stateful/EncoderMonitor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulEncoder;->cb:Lorg/apache/asn1/codec/stateful/EncoderCallback;

    .line 33
    iput-object v0, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulEncoder;->monitor:Lorg/apache/asn1/codec/stateful/EncoderMonitor;

    return-void
.end method

.method public constructor <init>(Lorg/apache/asn1/codec/stateful/EncoderCallback;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulEncoder;->cb:Lorg/apache/asn1/codec/stateful/EncoderCallback;

    .line 33
    iput-object v0, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulEncoder;->monitor:Lorg/apache/asn1/codec/stateful/EncoderMonitor;

    .line 56
    invoke-virtual {p0, p1}, Lorg/apache/asn1/codec/stateful/AbstractStatefulEncoder;->setCallback(Lorg/apache/asn1/codec/stateful/EncoderCallback;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/asn1/codec/stateful/EncoderCallback;Lorg/apache/asn1/codec/stateful/EncoderMonitor;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulEncoder;->cb:Lorg/apache/asn1/codec/stateful/EncoderCallback;

    .line 79
    iput-object p2, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulEncoder;->monitor:Lorg/apache/asn1/codec/stateful/EncoderMonitor;

    .line 80
    invoke-virtual {p0, p1}, Lorg/apache/asn1/codec/stateful/AbstractStatefulEncoder;->setCallback(Lorg/apache/asn1/codec/stateful/EncoderCallback;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/asn1/codec/stateful/EncoderMonitor;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulEncoder;->cb:Lorg/apache/asn1/codec/stateful/EncoderCallback;

    .line 67
    iput-object p1, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulEncoder;->monitor:Lorg/apache/asn1/codec/stateful/EncoderMonitor;

    return-void
.end method


# virtual methods
.method protected encodeOccurred(Ljava/lang/Object;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulEncoder;->cb:Lorg/apache/asn1/codec/stateful/EncoderCallback;

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0, p0, p1}, Lorg/apache/asn1/codec/stateful/EncoderCallback;->encodeOccurred(Lorg/apache/asn1/codec/stateful/StatefulEncoder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected getEncoderMonitor()Lorg/apache/asn1/codec/stateful/EncoderMonitor;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulEncoder;->monitor:Lorg/apache/asn1/codec/stateful/EncoderMonitor;

    return-object v0
.end method

.method public setCallback(Lorg/apache/asn1/codec/stateful/EncoderCallback;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulEncoder;->cb:Lorg/apache/asn1/codec/stateful/EncoderCallback;

    .line 96
    iput-object p1, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulEncoder;->cb:Lorg/apache/asn1/codec/stateful/EncoderCallback;

    .line 98
    iget-object v1, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulEncoder;->monitor:Lorg/apache/asn1/codec/stateful/EncoderMonitor;

    if-eqz v1, :cond_0

    .line 100
    invoke-interface {v1, p0, v0, p1}, Lorg/apache/asn1/codec/stateful/EncoderMonitor;->callbackSet(Lorg/apache/asn1/codec/stateful/StatefulEncoder;Lorg/apache/asn1/codec/stateful/EncoderCallback;Lorg/apache/asn1/codec/stateful/EncoderCallback;)V

    :cond_0
    return-void
.end method

.method public setEncoderMonitor(Lorg/apache/asn1/codec/stateful/EncoderMonitor;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lorg/apache/asn1/codec/stateful/AbstractStatefulEncoder;->monitor:Lorg/apache/asn1/codec/stateful/EncoderMonitor;

    return-void
.end method
