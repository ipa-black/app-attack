.class public Lorg/apache/kerberos/messages/value/KdcOptions;
.super Lorg/apache/kerberos/messages/value/Options;
.source "KdcOptions.java"


# static fields
.field public static final ALLOW_POSTDATE:I = 0x5

.field public static final DISABLE_TRANSISTED_CHECKED:I = 0x1a

.field public static final ENC_TKT_IN_SKEY:I = 0x1c

.field public static final FORWARDABLE:I = 0x1

.field public static final FORWARDED:I = 0x2

.field public static final MAX_VALUE:I = 0x20

.field public static final POSTDATED:I = 0x6

.field public static final PROXIABLE:I = 0x3

.field public static final PROXY:I = 0x4

.field public static final RENEW:I = 0x1e

.field public static final RENEWABLE:I = 0x8

.field public static final RENEWABLE_OK:I = 0x1b

.field public static final RESERVED:I = 0x0

.field public static final UNUSED10:I = 0xa

.field public static final UNUSED11:I = 0xb

.field public static final UNUSED12:I = 0xc

.field public static final UNUSED13:I = 0xd

.field public static final UNUSED7:I = 0x7

.field public static final UNUSED9:I = 0x9

.field public static final VALIDATE:I = 0x1f


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 66
    invoke-direct {p0, v0}, Lorg/apache/kerberos/messages/value/Options;-><init>(I)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/16 v0, 0x20

    .line 70
    invoke-direct {p0, v0}, Lorg/apache/kerberos/messages/value/Options;-><init>(I)V

    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/kerberos/messages/value/KdcOptions;->setBytes([B)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x5

    .line 79
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/KdcOptions;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "ALLOW_POSTDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/16 v1, 0x1a

    .line 81
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/KdcOptions;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    const-string v1, "DISABLE_TRANSISTED_CHECKED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const/16 v1, 0x1c

    .line 83
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/KdcOptions;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    const-string v1, "ENC_TKT_IN_SKEY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const/4 v1, 0x1

    .line 85
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/KdcOptions;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    const-string v1, "FORWARDABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const/4 v1, 0x2

    .line 87
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/KdcOptions;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 88
    const-string v1, "FORWARDED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const/4 v1, 0x6

    .line 89
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/KdcOptions;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 90
    const-string v1, "POSTDATED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    const/4 v1, 0x3

    .line 91
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/KdcOptions;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 92
    const-string v1, "PROXIABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    const/4 v1, 0x4

    .line 93
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/KdcOptions;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 94
    const-string v1, "PROXY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    const/16 v1, 0x1e

    .line 95
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/KdcOptions;->get(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 96
    const-string v1, "RENEW "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    const/16 v1, 0x8

    .line 97
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/KdcOptions;->get(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 98
    const-string v1, "RENEWABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    const/16 v1, 0x1b

    .line 99
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/KdcOptions;->get(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 100
    const-string v1, "RENEWABLE_OK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/KdcOptions;->get(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 102
    const-string v1, "RESERVED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    const/16 v1, 0x1f

    .line 103
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/KdcOptions;->get(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 104
    const-string v1, "VALIDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
