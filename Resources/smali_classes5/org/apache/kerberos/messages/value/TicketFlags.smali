.class public Lorg/apache/kerberos/messages/value/TicketFlags;
.super Lorg/apache/kerberos/messages/value/Options;
.source "TicketFlags.java"


# static fields
.field public static final FORWARDABLE:I = 0x1

.field public static final FORWARDED:I = 0x2

.field public static final HW_AUTHENT:I = 0xb

.field public static final INITIAL:I = 0x9

.field public static final INVALID:I = 0x7

.field public static final MAX_VALUE:I = 0x20

.field public static final MAY_POSTDATE:I = 0x5

.field public static final OK_AS_DELEGATE:I = 0xd

.field public static final POSTDATED:I = 0x6

.field public static final PRE_AUTHENT:I = 0xa

.field public static final PROXIABLE:I = 0x3

.field public static final PROXY:I = 0x4

.field public static final RENEWABLE:I = 0x8

.field public static final RESERVED:I = 0x0

.field public static final TRANSITED_POLICY_CHECKED:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 56
    invoke-direct {p0, v0}, Lorg/apache/kerberos/messages/value/Options;-><init>(I)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/16 v0, 0x20

    .line 60
    invoke-direct {p0, v0}, Lorg/apache/kerberos/messages/value/Options;-><init>(I)V

    .line 61
    invoke-virtual {p0, p1}, Lorg/apache/kerberos/messages/value/TicketFlags;->setBytes([B)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    .line 69
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/TicketFlags;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "FORWARDABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/4 v1, 0x2

    .line 71
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/TicketFlags;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    const-string v1, "FORWARDED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const/4 v1, 0x3

    .line 73
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/TicketFlags;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    const-string v1, "PROXIABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const/4 v1, 0x4

    .line 75
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/TicketFlags;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    const-string v1, "PROXY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const/4 v1, 0x5

    .line 77
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/TicketFlags;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 78
    const-string v1, "MAY_POSTDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const/4 v1, 0x6

    .line 79
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/TicketFlags;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 80
    const-string v1, "POSTDATED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    const/4 v1, 0x7

    .line 81
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/TicketFlags;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 82
    const-string v1, "INVALID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    const/16 v1, 0x8

    .line 83
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/TicketFlags;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 84
    const-string v1, "RENEWABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    const/16 v1, 0x9

    .line 85
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/TicketFlags;->get(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 86
    const-string v1, "INITIAL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    const/16 v1, 0xa

    .line 87
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/TicketFlags;->get(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 88
    const-string v1, "PRE_AUTHENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    const/16 v1, 0xb

    .line 89
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/TicketFlags;->get(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 90
    const-string v1, "HW_AUTHENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    const/16 v1, 0xc

    .line 91
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/TicketFlags;->get(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 92
    const-string v1, "TRANSITED_POLICY_CHECKED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    const/16 v1, 0xd

    .line 93
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/TicketFlags;->get(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 94
    const-string v1, "OPTS_OK_AS_DELEGATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
