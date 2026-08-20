.class public Lcom/facebook/ads/redexgen/X/RA;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Q8;
.implements Lcom/facebook/ads/redexgen/X/PD;
.implements Lcom/facebook/ads/redexgen/X/Q6;


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;

.field public static final A0G:Lcom/facebook/ads/redexgen/X/P8;

.field public static final A0H:Lcom/facebook/ads/redexgen/X/NC;

.field public static final A0I:Lcom/facebook/ads/redexgen/X/MK;

.field public static final A0J:Lcom/facebook/ads/redexgen/X/Ly;

.field public static final A0K:Lcom/facebook/ads/redexgen/X/Lx;

.field public static final A0L:Lcom/facebook/ads/redexgen/X/Ks;

.field public static final A0M:Lcom/facebook/ads/redexgen/X/Kc;

.field public static final A0N:Lcom/facebook/ads/redexgen/X/KD;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/Ii;

.field public A02:Lcom/facebook/ads/redexgen/X/PH;

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public A06:Z

.field public final A07:Landroid/os/Handler;

.field public final A08:Landroid/os/Handler;

.field public final A09:Landroid/view/View$OnTouchListener;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A0B:Lcom/facebook/ads/redexgen/X/8U;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/8U<",
            "Lcom/facebook/ads/redexgen/X/8V;",
            "Lcom/facebook/ads/redexgen/X/8T;",
            ">;"
        }
    .end annotation
.end field

.field public final A0C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/PL;",
            ">;"
        }
    .end annotation
.end field

.field public final A0D:Lcom/facebook/ads/redexgen/X/Q5;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 50088
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "bTF0mPynjITMPKd7AWnGFE0wjuUHqGk"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "NLuteA0O4hImypGMVaagZ7KROvpQko"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vHIsSgA1dNPe0TxNLDw8T5r"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Tu3OEd7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "fTm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "FLX2LFKD3Z9kyRG7iyj3Ajj18EKg1"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ES7oyLysdjBWPeOJZDQ9P8Sn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "e8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RA;->A0I()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/MK;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/MK;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/RA;->A0I:Lcom/facebook/ads/redexgen/X/MK;

    .line 50089
    new-instance v0, Lcom/facebook/ads/redexgen/X/P8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/P8;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/RA;->A0G:Lcom/facebook/ads/redexgen/X/P8;

    .line 50090
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ly;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ly;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/RA;->A0J:Lcom/facebook/ads/redexgen/X/Ly;

    .line 50091
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lx;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Lx;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/RA;->A0K:Lcom/facebook/ads/redexgen/X/Lx;

    .line 50092
    new-instance v0, Lcom/facebook/ads/redexgen/X/NC;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/NC;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/RA;->A0H:Lcom/facebook/ads/redexgen/X/NC;

    .line 50093
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ks;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ks;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/RA;->A0L:Lcom/facebook/ads/redexgen/X/Ks;

    .line 50094
    new-instance v0, Lcom/facebook/ads/redexgen/X/KD;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/KD;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/RA;->A0N:Lcom/facebook/ads/redexgen/X/KD;

    .line 50095
    new-instance v0, Lcom/facebook/ads/redexgen/X/Kc;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Kc;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/RA;->A0M:Lcom/facebook/ads/redexgen/X/Kc;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 1

    .line 50096
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 50097
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0C:Ljava/util/List;

    .line 50098
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A07:Landroid/os/Handler;

    .line 50099
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Landroid/os/Handler;

    .line 50100
    new-instance v0, Lcom/facebook/ads/redexgen/X/8U;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/8U;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0B:Lcom/facebook/ads/redexgen/X/8U;

    .line 50101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A05:Z

    .line 50102
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A00:I

    .line 50103
    new-instance v0, Lcom/facebook/ads/redexgen/X/PC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PC;-><init>(Lcom/facebook/ads/redexgen/X/RA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A09:Landroid/view/View$OnTouchListener;

    .line 50104
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RA;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    .line 50105
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/RA;->A0S(Lcom/facebook/ads/redexgen/X/Xc;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50106
    new-instance v0, Lcom/facebook/ads/redexgen/X/JG;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/JG;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    .line 50107
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RA;->A0G()V

    .line 50108
    return-void

    .line 50109
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ig;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Ig;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;)V
    .locals 1

    .line 50110
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0C:Ljava/util/List;

    .line 50112
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A07:Landroid/os/Handler;

    .line 50113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Landroid/os/Handler;

    .line 50114
    new-instance v0, Lcom/facebook/ads/redexgen/X/8U;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/8U;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0B:Lcom/facebook/ads/redexgen/X/8U;

    .line 50115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A05:Z

    .line 50116
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A00:I

    .line 50117
    new-instance v0, Lcom/facebook/ads/redexgen/X/PC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PC;-><init>(Lcom/facebook/ads/redexgen/X/RA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A09:Landroid/view/View$OnTouchListener;

    .line 50118
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RA;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    .line 50119
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/RA;->A0S(Lcom/facebook/ads/redexgen/X/Xc;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50120
    new-instance v0, Lcom/facebook/ads/redexgen/X/JG;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/JG;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    .line 50121
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RA;->A0G()V

    .line 50122
    return-void

    .line 50123
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ig;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ig;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 50124
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0C:Ljava/util/List;

    .line 50126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A07:Landroid/os/Handler;

    .line 50127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Landroid/os/Handler;

    .line 50128
    new-instance v0, Lcom/facebook/ads/redexgen/X/8U;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/8U;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0B:Lcom/facebook/ads/redexgen/X/8U;

    .line 50129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A05:Z

    .line 50130
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A00:I

    .line 50131
    new-instance v0, Lcom/facebook/ads/redexgen/X/PC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PC;-><init>(Lcom/facebook/ads/redexgen/X/RA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A09:Landroid/view/View$OnTouchListener;

    .line 50132
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RA;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    .line 50133
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/RA;->A0S(Lcom/facebook/ads/redexgen/X/Xc;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50134
    new-instance v0, Lcom/facebook/ads/redexgen/X/JG;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/JG;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    .line 50135
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RA;->A0G()V

    .line 50136
    return-void

    .line 50137
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ig;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ig;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    goto :goto_0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/RA;)I
    .locals 0

    .line 50138
    iget p0, p0, Lcom/facebook/ads/redexgen/X/RA;->A00:I

    return p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/RA;)Landroid/os/Handler;
    .locals 0

    .line 50139
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/RA;->A07:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/RA;)Lcom/facebook/ads/redexgen/X/Xc;
    .locals 0

    .line 50140
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/RA;)Lcom/facebook/ads/redexgen/X/8U;
    .locals 0

    .line 50141
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0B:Lcom/facebook/ads/redexgen/X/8U;

    return-object p0
.end method

.method public static synthetic A0A()Lcom/facebook/ads/redexgen/X/P8;
    .locals 1

    .line 50142
    sget-object v0, Lcom/facebook/ads/redexgen/X/RA;->A0G:Lcom/facebook/ads/redexgen/X/P8;

    return-object v0
.end method

.method public static synthetic A0B()Lcom/facebook/ads/redexgen/X/NC;
    .locals 1

    .line 50143
    sget-object v0, Lcom/facebook/ads/redexgen/X/RA;->A0H:Lcom/facebook/ads/redexgen/X/NC;

    return-object v0
.end method

.method public static synthetic A0C()Lcom/facebook/ads/redexgen/X/MK;
    .locals 4

    .line 50144
    sget-object v3, Lcom/facebook/ads/redexgen/X/RA;->A0I:Lcom/facebook/ads/redexgen/X/MK;

    sget-object v1, Lcom/facebook/ads/redexgen/X/RA;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0F:[Ljava/lang/String;

    const-string v1, "XnBln0F0zo0j2g49JSScdoR2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v3
.end method

.method public static synthetic A0D()Lcom/facebook/ads/redexgen/X/Ly;
    .locals 1

    .line 50145
    sget-object v0, Lcom/facebook/ads/redexgen/X/RA;->A0J:Lcom/facebook/ads/redexgen/X/Ly;

    return-object v0
.end method

.method public static synthetic A0E()Lcom/facebook/ads/redexgen/X/Lx;
    .locals 1

    .line 50146
    sget-object v0, Lcom/facebook/ads/redexgen/X/RA;->A0K:Lcom/facebook/ads/redexgen/X/Lx;

    return-object v0
.end method

.method public static A0F(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/RA;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x67

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0G()V
    .locals 3

    .line 50147
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A0o(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Z

    .line 50148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2r()V

    .line 50149
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Q5;->setRequestedVolume(F)V

    .line 50150
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Q5;->setVideoStateChangeListener(Lcom/facebook/ads/redexgen/X/Q8;)V

    .line 50151
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RA;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    new-instance v0, Lcom/facebook/ads/redexgen/X/PH;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/PH;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Q5;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Lcom/facebook/ads/redexgen/X/PH;

    .line 50152
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50153
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50154
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Lcom/facebook/ads/redexgen/X/PH;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/RA;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50155
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A09:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/RA;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 50156
    return-void
.end method

.method private A0H()V
    .locals 4

    .line 50157
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RA;->A07:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/RE;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/RE;-><init>(Lcom/facebook/ads/redexgen/X/RA;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A00:I

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50158
    return-void
.end method

.method public static A0I()V
    .locals 4

    const/16 v0, 0x22

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/RA;->A0F:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0F:[Ljava/lang/String;

    const-string v1, "dnbQEbQJ0095hjHrUlDt4BBpkj0Wp"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "GI"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/RA;->A0E:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4t
        0x57t
        0x49t
        0x47t
        0x4t
        0x58t
        0x53t
        0x58t
        0x45t
        0x50t
        0x4t
        0x5bt
        0x45t
        0x58t
        0x47t
        0x4ct
        0x4t
        0x58t
        0x4dt
        0x51t
        0x49t
        0x26t
        0x58t
        0x55t
        0x55t
        0x48t
        0x51t
        0x57t
        0x4ft
        0x5ct
        0x3t
        0x44t
        0x57t
        0x3t
    .end array-data
.end method

.method private final A0J()V
    .locals 3

    .line 50159
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/PL;

    .line 50160
    .local v1, "plugin":Lcom/facebook/ads/redexgen/X/PL;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/PR;

    if-eqz v0, :cond_0

    .line 50161
    move-object v0, v1

    check-cast v0, Lcom/facebook/ads/redexgen/X/PR;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0Q(Lcom/facebook/ads/redexgen/X/PR;)V

    .line 50162
    :cond_0
    invoke-interface {v1, p0}, Lcom/facebook/ads/redexgen/X/PL;->A93(Lcom/facebook/ads/redexgen/X/RA;)V

    .line 50163
    .end local v1    # "plugin":Lcom/facebook/ads/redexgen/X/PL;
    goto :goto_0

    .line 50164
    :cond_1
    return-void
.end method

.method private A0K(I)V
    .locals 6

    .line 50165
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A0s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50166
    int-to-float v5, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v5, v0

    .line 50167
    .local v0, "sec":F
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/RA;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15

    const/16 v1, 0xd

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0F(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0F(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-static {v4, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 50168
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 50169
    .end local v0    # "sec":F
    :cond_0
    return-void
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/Ih;)V
    .locals 2

    .line 50170
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RA;->A01:Lcom/facebook/ads/redexgen/X/Ii;

    if-nez v1, :cond_0

    .line 50171
    return-void

    .line 50172
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Ii;->A04(Lcom/facebook/ads/redexgen/X/Ih;Ljava/util/Map;)V

    .line 50173
    return-void
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/RA;)V
    .locals 0

    .line 50174
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RA;->A0H()V

    return-void
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/RA;I)V
    .locals 0

    .line 50175
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/RA;->A0K(I)V

    return-void
.end method

.method public static synthetic A0O(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Ih;)V
    .locals 0

    .line 50176
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/RA;->A0L(Lcom/facebook/ads/redexgen/X/Ih;)V

    return-void
.end method

.method private A0P(Lcom/facebook/ads/redexgen/X/PL;)V
    .locals 1

    .line 50177
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/PR;

    if-eqz v0, :cond_0

    .line 50178
    move-object v0, p1

    check-cast v0, Lcom/facebook/ads/redexgen/X/PR;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0R(Lcom/facebook/ads/redexgen/X/PR;)V

    .line 50179
    :cond_0
    invoke-interface {p1, p0}, Lcom/facebook/ads/redexgen/X/PL;->AFf(Lcom/facebook/ads/redexgen/X/RA;)V

    .line 50180
    return-void
.end method

.method private A0Q(Lcom/facebook/ads/redexgen/X/PR;)V
    .locals 1

    .line 50181
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PR;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50182
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/6g;

    if-eqz v0, :cond_1

    .line 50183
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Lcom/facebook/ads/redexgen/X/PH;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PH;->A00(Lcom/facebook/ads/redexgen/X/PR;)V

    .line 50184
    :cond_0
    :goto_0
    return-void

    .line 50185
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/RA;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private A0R(Lcom/facebook/ads/redexgen/X/PR;)V
    .locals 1

    .line 50186
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/6g;

    if-eqz v0, :cond_0

    .line 50187
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Lcom/facebook/ads/redexgen/X/PH;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PH;->A01(Lcom/facebook/ads/redexgen/X/PR;)V

    .line 50188
    :goto_0
    return-void

    .line 50189
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    goto :goto_0
.end method

.method private A0S(Lcom/facebook/ads/redexgen/X/Xc;)Z
    .locals 1

    .line 50190
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pu;->A03()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/IK;->A2H(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static synthetic A0T(Lcom/facebook/ads/redexgen/X/RA;)Z
    .locals 0

    .line 50191
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/RA;->A03:Z

    return p0
.end method

.method public static synthetic A0U(Lcom/facebook/ads/redexgen/X/RA;Z)Z
    .locals 0

    .line 50192
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/RA;->A03:Z

    return p1
.end method


# virtual methods
.method public final A0V()V
    .locals 2

    .line 50193
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Q5;->setVideoStateChangeListener(Lcom/facebook/ads/redexgen/X/Q8;)V

    .line 50194
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q5;->destroy()V

    .line 50195
    return-void
.end method

.method public final A0W()V
    .locals 1

    .line 50196
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RA;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50197
    return-void

    .line 50198
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q5;->A87()V

    .line 50199
    return-void
.end method

.method public final A0X()V
    .locals 5

    .line 50200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/RA;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0F:[Ljava/lang/String;

    const-string v1, "GYUlZXdJo7nruMh2UHaMalRUd7rYm0D"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/PL;

    .line 50201
    .local v1, "plugin":Lcom/facebook/ads/redexgen/X/PL;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0P(Lcom/facebook/ads/redexgen/X/PL;)V

    .line 50202
    .end local v1    # "plugin":Lcom/facebook/ads/redexgen/X/PL;
    goto :goto_0

    .line 50203
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 50204
    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0F:[Ljava/lang/String;

    const-string v1, "dBG"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "pEPub8w"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_2
    return-void
.end method

.method public final A0Y(I)V
    .locals 2

    .line 50205
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RA;->A07:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 50206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q5;->seekTo(I)V

    .line 50207
    return-void
.end method

.method public final A0Z(I)V
    .locals 1

    .line 50208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q5;->AFT(I)V

    .line 50209
    return-void
.end method

.method public final A0a(Lcom/facebook/ads/redexgen/X/PF;)V
    .locals 5

    .line 50210
    new-instance v4, Lcom/facebook/ads/redexgen/X/RB;

    invoke-direct {v4, p0}, Lcom/facebook/ads/redexgen/X/RB;-><init>(Lcom/facebook/ads/redexgen/X/RA;)V

    .line 50211
    .local v0, "skipRunnable":Lcom/facebook/ads/redexgen/X/K1;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Z

    if-eqz v0, :cond_0

    .line 50212
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/LF;->A00(Ljava/lang/Runnable;)V

    .line 50213
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PF;->A02()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Q5;->AFH(I)V

    .line 50214
    return-void

    .line 50215
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Landroid/os/Handler;

    sget-object v1, Lcom/facebook/ads/redexgen/X/RA;->A0F:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0F:[Ljava/lang/String;

    const-string v1, "kK0l9LoMdPIpLA2D0gOeof4W"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/PK;I)V
    .locals 2

    .line 50216
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A03:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q5;->getState()Lcom/facebook/ads/redexgen/X/Q7;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A06:Lcom/facebook/ads/redexgen/X/Q7;

    if-ne v1, v0, :cond_0

    .line 50217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A03:Z

    .line 50218
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Q5;->AFM(Lcom/facebook/ads/redexgen/X/PK;I)V

    .line 50219
    return-void
.end method

.method public final A0c(Lcom/facebook/ads/redexgen/X/PL;)V
    .locals 1

    .line 50220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0C:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50221
    return-void
.end method

.method public final A0d(Lcom/facebook/ads/redexgen/X/PL;)V
    .locals 1

    .line 50222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0C:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 50223
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/RA;->A0P(Lcom/facebook/ads/redexgen/X/PL;)V

    .line 50224
    return-void
.end method

.method public final A0e(ZI)V
    .locals 1

    .line 50225
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RA;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50226
    return-void

    .line 50227
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Q5;->ADO(ZI)V

    .line 50228
    return-void
.end method

.method public final A0f(ZZI)V
    .locals 0

    .line 50229
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/RA;->A05:Z

    .line 50230
    invoke-virtual {p0, p1, p3}, Lcom/facebook/ads/redexgen/X/RA;->A0e(ZI)V

    .line 50231
    return-void
.end method

.method public final A0g()Z
    .locals 1

    .line 50232
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q5;->A8I()Z

    move-result v0

    return v0
.end method

.method public final A0h()Z
    .locals 2

    .line 50233
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RA;->getVolume()F

    move-result v1

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0i()Z
    .locals 2

    .line 50234
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RA;->getState()Lcom/facebook/ads/redexgen/X/Q7;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A05:Lcom/facebook/ads/redexgen/X/Q7;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0j()Z
    .locals 1

    .line 50235
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RA;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q5;->A8q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0k()Z
    .locals 2

    .line 50236
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RA;->getState()Lcom/facebook/ads/redexgen/X/Q7;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A0A:Lcom/facebook/ads/redexgen/X/Q7;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0l()Z
    .locals 1

    .line 50237
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Z

    return v0
.end method

.method public final A8i()Z
    .locals 1

    .line 50238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0S(Lcom/facebook/ads/redexgen/X/Xc;)Z

    move-result v0

    return v0
.end method

.method public final A8l()Z
    .locals 1

    .line 50239
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A04:Z

    return v0
.end method

.method public final AB3(JJJF)V
    .locals 9

    .line 50240
    move-object v1, p0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/RA;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1R(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50241
    return-void

    .line 50242
    :cond_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/RA;->A0B:Lcom/facebook/ads/redexgen/X/8U;

    new-instance v1, Lcom/facebook/ads/redexgen/X/71;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/71;-><init>(JJJF)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/8U;->A02(Lcom/facebook/ads/redexgen/X/8T;)V

    .line 50243
    return-void
.end method

.method public final ABe()V
    .locals 2

    .line 50244
    const/4 v1, 0x1

    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0e(ZI)V

    .line 50245
    return-void
.end method

.method public final ABf()V
    .locals 2

    .line 50246
    sget-object v1, Lcom/facebook/ads/redexgen/X/PK;->A04:Lcom/facebook/ads/redexgen/X/PK;

    const/4 v0, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0b(Lcom/facebook/ads/redexgen/X/PK;I)V

    .line 50247
    return-void
.end method

.method public final ACV(II)V
    .locals 2

    .line 50248
    new-instance v1, Lcom/facebook/ads/redexgen/X/RC;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/RC;-><init>(Lcom/facebook/ads/redexgen/X/RA;II)V

    .line 50249
    .local v0, "seekRunnable":Lcom/facebook/ads/redexgen/X/K1;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Z

    if-eqz v0, :cond_0

    .line 50250
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/LF;->A00(Ljava/lang/Runnable;)V

    .line 50251
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RA;->A0H()V

    .line 50252
    return-void

    .line 50253
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final ADB(Lcom/facebook/ads/redexgen/X/Q7;)V
    .locals 3

    .line 50254
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RA;->getCurrentPositionInMillis()I

    move-result v2

    .line 50255
    .local v0, "currentPositionMS":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RA;->getDuration()I

    move-result v0

    .line 50256
    .local v1, "duration":I
    new-instance v1, Lcom/facebook/ads/redexgen/X/RD;

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/facebook/ads/redexgen/X/RD;-><init>(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Q7;II)V

    .line 50257
    .local v2, "stateRunnable":Lcom/facebook/ads/redexgen/X/K1;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Z

    if-eqz v0, :cond_0

    .line 50258
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/LF;->A00(Ljava/lang/Runnable;)V

    .line 50259
    :goto_0
    return-void

    .line 50260
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getCurrentPositionInMillis()I
    .locals 1

    .line 50261
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q5;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 50262
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q5;->getDuration()I

    move-result v0

    return v0
.end method

.method public getEventBus()Lcom/facebook/ads/redexgen/X/8U;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/8U<",
            "Lcom/facebook/ads/redexgen/X/8V;",
            "Lcom/facebook/ads/redexgen/X/8T;",
            ">;"
        }
    .end annotation

    .line 50263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0B:Lcom/facebook/ads/redexgen/X/8U;

    return-object v0
.end method

.method public getInitialBufferTime()J
    .locals 2

    .line 50264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q5;->getInitialBufferTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getState()Lcom/facebook/ads/redexgen/X/Q7;
    .locals 1

    .line 50265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q5;->getState()Lcom/facebook/ads/redexgen/X/Q7;

    move-result-object v0

    return-object v0
.end method

.method public getStateHandler()Landroid/os/Handler;
    .locals 1

    .line 50266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Landroid/os/Handler;

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    .line 50267
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    check-cast v0, Landroid/view/TextureView;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 50268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q5;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoImplView()Landroid/view/View;
    .locals 1

    .line 50269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q5;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVideoProgressReportIntervalMs()I
    .locals 1

    .line 50270
    iget v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A00:I

    return v0
.end method

.method public getVideoStartReason()Lcom/facebook/ads/redexgen/X/PK;
    .locals 1

    .line 50271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q5;->getStartReason()Lcom/facebook/ads/redexgen/X/PK;

    move-result-object v0

    return-object v0
.end method

.method public getVideoView()Landroid/view/View;
    .locals 1

    .line 50272
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Lcom/facebook/ads/redexgen/X/PH;

    return-object v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 50273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q5;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 50274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q5;->getVolume()F

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 50275
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RA;->A0B:Lcom/facebook/ads/redexgen/X/8U;

    sget-object v0, Lcom/facebook/ads/redexgen/X/RA;->A0M:Lcom/facebook/ads/redexgen/X/Kc;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8U;->A02(Lcom/facebook/ads/redexgen/X/8T;)V

    .line 50276
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 50277
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 50278
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RA;->A0B:Lcom/facebook/ads/redexgen/X/8U;

    sget-object v0, Lcom/facebook/ads/redexgen/X/RA;->A0N:Lcom/facebook/ads/redexgen/X/KD;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8U;->A02(Lcom/facebook/ads/redexgen/X/8T;)V

    .line 50279
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 50280
    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .locals 1

    .line 50281
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    if-eqz v0, :cond_0

    .line 50282
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q5;->setControlsAnchorView(Landroid/view/View;)V

    .line 50283
    :cond_0
    return-void
.end method

.method public setFunnelLoggingHandler(Lcom/facebook/ads/redexgen/X/Ii;)V
    .locals 0

    .line 50284
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RA;->A01:Lcom/facebook/ads/redexgen/X/Ii;

    .line 50285
    return-void
.end method

.method public setIsFullScreen(Z)V
    .locals 1

    .line 50286
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/RA;->A04:Z

    .line 50287
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q5;->setFullScreen(Z)V

    .line 50288
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 50289
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50290
    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 50291
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q5;->setVideoMPD(Ljava/lang/String;)V

    .line 50292
    return-void
.end method

.method public setVideoProgressReportIntervalMs(I)V
    .locals 0

    .line 50293
    iput p1, p0, Lcom/facebook/ads/redexgen/X/RA;->A00:I

    .line 50294
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 50295
    if-nez p1, :cond_0

    .line 50296
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RA;->A0X()V

    .line 50297
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A03:Z

    .line 50298
    return-void

    .line 50299
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RA;->A0J()V

    .line 50300
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q5;->setup(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setVideoURI(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 50301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A2y(Ljava/lang/String;)V

    .line 50302
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/RA;->setVideoURI(Landroid/net/Uri;)V

    .line 50303
    return-void

    .line 50304
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 4

    .line 50305
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 50306
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ih;->A0f:Lcom/facebook/ads/redexgen/X/Ih;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0L(Lcom/facebook/ads/redexgen/X/Ih;)V

    .line 50307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A32()V

    .line 50308
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0D:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q5;->setRequestedVolume(F)V

    .line 50309
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RA;->getEventBus()Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/RA;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0F:[Ljava/lang/String;

    const-string v1, "etD2zaPMct9y2wbR2YehsJmmTem"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/RA;->A0L:Lcom/facebook/ads/redexgen/X/Ks;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/8U;->A02(Lcom/facebook/ads/redexgen/X/8T;)V

    .line 50310
    return-void

    .line 50311
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ih;->A0e:Lcom/facebook/ads/redexgen/X/Ih;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0L(Lcom/facebook/ads/redexgen/X/Ih;)V

    .line 50312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A0A:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A31()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
