.class public Lorg/apache/kerberos/io/encoder/EncAsRepPartEncoder;
.super Lorg/apache/kerberos/io/encoder/EncKdcRepPartEncoder;
.source "EncAsRepPartEncoder.java"


# static fields
.field public static final APPLICATION_CODE:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x19

    .line 30
    invoke-direct {p0, v0}, Lorg/apache/kerberos/io/encoder/EncKdcRepPartEncoder;-><init>(I)V

    return-void
.end method
