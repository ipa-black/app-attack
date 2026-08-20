.class public Lorg/apache/ldap/common/message/MessageTypeEnum;
.super Lorg/apache/ldap/common/util/ValuedEnum;
.source "MessageTypeEnum.java"


# static fields
.field public static final ABANDONREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final ABANDONREQUEST_VAL:I = 0x40000010

.field public static final ADDREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final ADDREQUEST_VAL:I = 0x40000008

.field public static final ADDRESPONSE:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final ADDRESPONSE_VAL:I = 0x40000009

.field public static final BINDREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final BINDREQUEST_VAL:I = 0x40000000

.field public static final BINDRESPONSE:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final BINDRESPONSE_VAL:I = 0x40000001

.field public static final COMPAREREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final COMPAREREQUEST_VAL:I = 0x4000000e

.field public static final COMPARERESPONSE:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final COMPARERESPONSE_VAL:I = 0x4000000f

.field public static final DELREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final DELREQUEST_VAL:I = 0x4000000a

.field public static final DELRESPONSE:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final DELRESPONSE_VAL:I = 0x4000000b

.field public static final EXTENDEDREQ:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final EXTENDEDREQ_VAL:I = 0x40000017

.field public static final EXTENDEDRESP:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final EXTENDEDRESP_VAL:I = 0x40000018

.field public static final MODDNREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final MODDNREQUEST_VAL:I = 0x4000000c

.field public static final MODDNRESPONSE:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final MODDNRESPONSE_VAL:I = 0x4000000d

.field public static final MODIFYREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final MODIFYREQUEST_VAL:I = 0x40000006

.field public static final MODIFYRESPONSE:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final MODIFYRESPONSE_VAL:I = 0x40000007

.field public static final SEARCHREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final SEARCHREQUEST_VAL:I = 0x40000003

.field public static final SEARCHRESDONE:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final SEARCHRESDONE_VAL:I = 0x40000005

.field public static final SEARCHRESENTRY:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final SEARCHRESENTRY_VAL:I = 0x40000004

.field public static final SEARCHRESREF:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final SEARCHRESREF_VAL:I = 0x40000013

.field public static final UNBINDREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final UNBINDREQUEST_VAL:I = 0x40000002


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 75
    new-instance v0, Lorg/apache/ldap/common/message/MessageTypeEnum;

    const-string v1, "BINDREQUEST"

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/MessageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->BINDREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 78
    new-instance v0, Lorg/apache/ldap/common/message/MessageTypeEnum;

    const-string v1, "BINDRESPONSE"

    const v2, 0x40000001    # 2.0000002f

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/MessageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->BINDRESPONSE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 81
    new-instance v0, Lorg/apache/ldap/common/message/MessageTypeEnum;

    const-string v1, "UNBINDREQUEST"

    const v2, 0x40000002    # 2.0000005f

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/MessageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->UNBINDREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 84
    new-instance v0, Lorg/apache/ldap/common/message/MessageTypeEnum;

    const-string v1, "SEARCHREQUEST"

    const v2, 0x40000003    # 2.0000007f

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/MessageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->SEARCHREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 87
    new-instance v0, Lorg/apache/ldap/common/message/MessageTypeEnum;

    const-string v1, "SEARCHRESENTRY"

    const v2, 0x40000004    # 2.000001f

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/MessageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->SEARCHRESENTRY:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 90
    new-instance v0, Lorg/apache/ldap/common/message/MessageTypeEnum;

    const-string v1, "SEARCHRESDONE"

    const v2, 0x40000005    # 2.0000012f

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/MessageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->SEARCHRESDONE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 93
    new-instance v0, Lorg/apache/ldap/common/message/MessageTypeEnum;

    const-string v1, "SEARCHRESREF"

    const v2, 0x40000013    # 2.0000045f

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/MessageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->SEARCHRESREF:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 96
    new-instance v0, Lorg/apache/ldap/common/message/MessageTypeEnum;

    const-string v1, "MODIFYREQUEST"

    const v2, 0x40000006    # 2.0000014f

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/MessageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->MODIFYREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 99
    new-instance v0, Lorg/apache/ldap/common/message/MessageTypeEnum;

    const-string v1, "MODIFYRESPONSE"

    const v2, 0x40000007    # 2.0000017f

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/MessageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->MODIFYRESPONSE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 102
    new-instance v0, Lorg/apache/ldap/common/message/MessageTypeEnum;

    const-string v1, "ADDREQUEST"

    const v2, 0x40000008    # 2.000002f

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/MessageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->ADDREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 105
    new-instance v0, Lorg/apache/ldap/common/message/MessageTypeEnum;

    const-string v1, "ADDRESPONSE"

    const v2, 0x40000009    # 2.0000021f

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/MessageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->ADDRESPONSE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 108
    new-instance v0, Lorg/apache/ldap/common/message/MessageTypeEnum;

    const-string v1, "DELREQUEST"

    const v2, 0x4000000a    # 2.0000024f

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/MessageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->DELREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 111
    new-instance v0, Lorg/apache/ldap/common/message/MessageTypeEnum;

    const-string v1, "DELRESPONSE"

    const v2, 0x4000000b    # 2.0000026f

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/MessageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->DELRESPONSE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 114
    new-instance v0, Lorg/apache/ldap/common/message/MessageTypeEnum;

    const-string v1, "MODDNREQUEST"

    const v2, 0x4000000c    # 2.0000029f

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/MessageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->MODDNREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 117
    new-instance v0, Lorg/apache/ldap/common/message/MessageTypeEnum;

    const-string v1, "MODDNRESPONSE"

    const v2, 0x4000000d    # 2.000003f

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/MessageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->MODDNRESPONSE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 120
    new-instance v0, Lorg/apache/ldap/common/message/MessageTypeEnum;

    const-string v1, "COMPAREREQUEST"

    const v2, 0x4000000e    # 2.0000033f

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/MessageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->COMPAREREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 123
    new-instance v0, Lorg/apache/ldap/common/message/MessageTypeEnum;

    const-string v1, "COMPARERESPONSE"

    const v2, 0x4000000f    # 2.0000036f

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/MessageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->COMPARERESPONSE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 126
    new-instance v0, Lorg/apache/ldap/common/message/MessageTypeEnum;

    const-string v1, "ABANDONREQUEST"

    const v2, 0x40000010    # 2.0000038f

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/MessageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->ABANDONREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 129
    new-instance v0, Lorg/apache/ldap/common/message/MessageTypeEnum;

    const-string v1, "EXTENDEDREQ"

    const v2, 0x40000017    # 2.0000055f

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/MessageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->EXTENDEDREQ:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 132
    new-instance v0, Lorg/apache/ldap/common/message/MessageTypeEnum;

    const-string v1, "EXTENDEDRESP"

    const v2, 0x40000018    # 2.0000057f

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/MessageTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->EXTENDEDRESP:Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/common/util/ValuedEnum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
