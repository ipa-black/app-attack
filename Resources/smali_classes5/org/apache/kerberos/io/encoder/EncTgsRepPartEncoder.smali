.class public Lorg/apache/kerberos/io/encoder/EncTgsRepPartEncoder;
.super Lorg/apache/kerberos/io/encoder/EncKdcRepPartEncoder;
.source "EncTgsRepPartEncoder.java"


# static fields
.field public static final APPLICATION_CODE:I = 0x1a


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x1a

    .line 30
    invoke-direct {p0, v0}, Lorg/apache/kerberos/io/encoder/EncKdcRepPartEncoder;-><init>(I)V

    return-void
.end method
