.class Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$OutputCallback;
.super Ljava/lang/Object;
.source "SnickersEncoder.java"

# interfaces
.implements Lorg/apache/asn1/codec/stateful/EncoderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OutputCallback"
.end annotation


# instance fields
.field private channel:Ljava/nio/channels/WritableByteChannel;

.field private final synthetic this$0:Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;


# direct methods
.method constructor <init>(Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;)V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$OutputCallback;->this$0:Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;

    const/4 p1, 0x0

    .line 192
    iput-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$OutputCallback;->channel:Ljava/nio/channels/WritableByteChannel;

    return-void
.end method


# virtual methods
.method attach(Ljava/io/OutputStream;)V
    .locals 0

    .line 222
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$OutputCallback;->channel:Ljava/nio/channels/WritableByteChannel;

    return-void
.end method

.method attach(Ljava/nio/channels/WritableByteChannel;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$OutputCallback;->channel:Ljava/nio/channels/WritableByteChannel;

    return-void
.end method

.method public encodeOccurred(Lorg/apache/asn1/codec/stateful/StatefulEncoder;Ljava/lang/Object;)V
    .locals 0

    .line 205
    :try_start_0
    iget-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$OutputCallback;->channel:Ljava/nio/channels/WritableByteChannel;

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-interface {p1, p2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 209
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
