.class public interface abstract Lorg/apache/asn1/codec/stateful/EncoderMonitor;
.super Ljava/lang/Object;
.source "EncoderMonitor.java"


# static fields
.field public static final INSTANCE:Lorg/apache/asn1/codec/stateful/EncoderMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/apache/asn1/codec/stateful/EncoderMonitorAdapter;

    invoke-direct {v0}, Lorg/apache/asn1/codec/stateful/EncoderMonitorAdapter;-><init>()V

    sput-object v0, Lorg/apache/asn1/codec/stateful/EncoderMonitor;->INSTANCE:Lorg/apache/asn1/codec/stateful/EncoderMonitor;

    return-void
.end method


# virtual methods
.method public abstract callbackOccured(Lorg/apache/asn1/codec/stateful/StatefulEncoder;Lorg/apache/asn1/codec/stateful/EncoderCallback;Ljava/lang/Object;)V
.end method

.method public abstract callbackSet(Lorg/apache/asn1/codec/stateful/StatefulEncoder;Lorg/apache/asn1/codec/stateful/EncoderCallback;Lorg/apache/asn1/codec/stateful/EncoderCallback;)V
.end method

.method public abstract error(Lorg/apache/asn1/codec/stateful/StatefulEncoder;Ljava/lang/Exception;)V
.end method

.method public abstract fatalError(Lorg/apache/asn1/codec/stateful/StatefulEncoder;Ljava/lang/Exception;)V
.end method

.method public abstract warning(Lorg/apache/asn1/codec/stateful/StatefulEncoder;Ljava/lang/Exception;)V
.end method
