.class public abstract Lcom/facebook/ads/redexgen/X/T9;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Lk;


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/View;

.field public A01:Lcom/facebook/ads/redexgen/X/Ke;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/Oe;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Z

.field public A04:Z

.field public A05:Lcom/facebook/ads/redexgen/X/18;

.field public A06:Lcom/facebook/ads/redexgen/X/P5;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Z

.field public final A08:Lcom/facebook/ads/redexgen/X/L8;

.field public final A09:Lcom/facebook/ads/redexgen/X/Lj;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Zs;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Ia;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Ii;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Li;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 54158
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "fqT9snXDZkE2N6bIU2twhbCcrvrF5wQR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "W8MK3buqarkLhDixdfnbfGeXuw3i87xB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "M5iWaw3OwwKxChS5bTa9KUrj63pwu1Od"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QKu8TlGQ3D7NsDDaY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OUnrWL6BanKvWJF"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "644mHU9zQQHAcSiNB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MqQzuM0GD0HqxOL2854PPJvoiao7nama"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "mSpdOD621tCilusEUOf234Jx9LR3KzyX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/T9;->A0G:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/T9;->A0O()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/Zs;)V
    .locals 7

    .line 54159
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 54160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A07:Z

    .line 54161
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A04:Z

    .line 54162
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A03:Z

    .line 54163
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/T9;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    .line 54164
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/T9;->A0C:Lcom/facebook/ads/redexgen/X/Ia;

    .line 54165
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/T9;->A09:Lcom/facebook/ads/redexgen/X/Lj;

    .line 54166
    new-instance v0, Lcom/facebook/ads/redexgen/X/L8;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/L8;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A08:Lcom/facebook/ads/redexgen/X/L8;

    .line 54167
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/T9;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    .line 54168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    .line 54169
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T9;->A0C:Lcom/facebook/ads/redexgen/X/Ia;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ii;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ii;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ia;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0D:Lcom/facebook/ads/redexgen/X/Ii;

    .line 54170
    new-instance v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/T9;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    .line 54171
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T9;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Lj;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/T9;->A0D:Lcom/facebook/ads/redexgen/X/Ii;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    .line 54172
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0b()I

    move-result v6

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/Ii;II)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/T9;->A0E:Lcom/facebook/ads/redexgen/X/Li;

    .line 54173
    return-void
.end method

.method private A0K(I)Lcom/facebook/ads/redexgen/X/1L;
    .locals 4

    .line 54174
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 54175
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A05:Lcom/facebook/ads/redexgen/X/18;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A01()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v0

    return-object v0

    .line 54176
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/T9;->A05:Lcom/facebook/ads/redexgen/X/18;

    sget-object v1, Lcom/facebook/ads/redexgen/X/T9;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4f

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/T9;->A0G:[Ljava/lang/String;

    const-string v1, "MYlveE6g4wScBr3MsnlZwbj0w3RA4Q0m"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/18;->A00()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v0

    return-object v0
.end method

.method public static A0L(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/T9;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x51

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0M()V
    .locals 0

    .line 54177
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T9;->removeAllViews()V

    .line 54178
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 54179
    return-void
.end method

.method private A0N()V
    .locals 7

    .line 54180
    const/4 v0, -0x1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54181
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T9;->A0X()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A02:Lcom/facebook/ads/redexgen/X/Oe;

    if-nez v0, :cond_0

    .line 54182
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/T9;->A04:Z

    .line 54183
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/T9;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    .line 54184
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    .line 54185
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0k()Lcom/facebook/ads/redexgen/X/1V;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Oc;

    invoke-direct {v1, v6, v2, v0}, Lcom/facebook/ads/redexgen/X/Oc;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/1J;Lcom/facebook/ads/redexgen/X/1V;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    .line 54186
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0g()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A01()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oc;->A08(Lcom/facebook/ads/redexgen/X/1L;)Lcom/facebook/ads/redexgen/X/Oc;

    move-result-object v0

    .line 54187
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oc;->A0B()Lcom/facebook/ads/redexgen/X/Oe;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A02:Lcom/facebook/ads/redexgen/X/Oe;

    .line 54188
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/T9;->A02:Lcom/facebook/ads/redexgen/X/Oe;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T9;->A0D:Lcom/facebook/ads/redexgen/X/Ii;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ih;->A0U:Lcom/facebook/ads/redexgen/X/Ih;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ik;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Ii;Lcom/facebook/ads/redexgen/X/Ih;)V

    .line 54189
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A09:Lcom/facebook/ads/redexgen/X/Lj;

    invoke-interface {v0, p0, v5, v3}, Lcom/facebook/ads/redexgen/X/Lj;->A3I(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 54190
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T9;->A09:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A02:Lcom/facebook/ads/redexgen/X/Oe;

    invoke-interface {v1, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Lj;->A3I(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 54191
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T9;->A02:Lcom/facebook/ads/redexgen/X/Oe;

    new-instance v0, Lcom/facebook/ads/redexgen/X/TB;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/TB;-><init>(Lcom/facebook/ads/redexgen/X/T9;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oe;->A04(Lcom/facebook/ads/redexgen/X/Od;)V

    .line 54192
    :goto_0
    return-void

    .line 54193
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A09:Lcom/facebook/ads/redexgen/X/Lj;

    invoke-interface {v0, p0, v5, v3}, Lcom/facebook/ads/redexgen/X/Lj;->A3I(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 54194
    goto :goto_0
.end method

.method public static A0O()V
    .locals 1

    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/T9;->A0F:[B

    return-void

    :array_0
    .array-data 1
        0x58t
        0x54t
        0x56t
        0x15t
        0x5dt
        0x5at
        0x58t
        0x5et
        0x59t
        0x54t
        0x54t
        0x50t
        0x15t
        0x5at
        0x5ft
        0x48t
        0x15t
        0x52t
        0x55t
        0x4ft
        0x5et
        0x49t
        0x48t
        0x4ft
        0x52t
        0x4ft
        0x52t
        0x5at
        0x57t
        0x15t
        0x52t
        0x56t
        0x4bt
        0x49t
        0x5et
        0x48t
        0x48t
        0x52t
        0x54t
        0x55t
        0x15t
        0x57t
        0x54t
        0x5ct
        0x5ct
        0x5et
        0x5ft
    .end array-data
.end method

.method private A0P(Lcom/facebook/ads/redexgen/X/1L;Z)V
    .locals 3

    .line 54195
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0E:Lcom/facebook/ads/redexgen/X/Li;

    .line 54196
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Li;->getToolbarHeight()I

    move-result v1

    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54197
    .local v0, "toolbarParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 54198
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T9;->A0E:Lcom/facebook/ads/redexgen/X/Li;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sa;->A08(Lcom/facebook/ads/redexgen/X/Zs;)Z

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Li;->A04(Lcom/facebook/ads/redexgen/X/1L;Z)V

    .line 54199
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0E:Lcom/facebook/ads/redexgen/X/Li;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/T9;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54200
    return-void
.end method

.method public static synthetic A0Q(Lcom/facebook/ads/redexgen/X/T9;Z)Z
    .locals 0

    .line 54201
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/T9;->A04:Z

    return p1
.end method

.method public static synthetic A0R(Lcom/facebook/ads/redexgen/X/T9;Z)Z
    .locals 0

    .line 54202
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/T9;->A03:Z

    return p1
.end method


# virtual methods
.method public final A0S()V
    .locals 1

    .line 54203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A00:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Ni;

    if-nez v0, :cond_1

    .line 54204
    :cond_0
    return-void

    .line 54205
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T9;->A0Y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A00:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ni;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ni;->A0b()V

    .line 54207
    :goto_0
    return-void

    .line 54208
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A00:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ni;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ni;->A0a()V

    goto :goto_0
.end method

.method public final A0T(I)V
    .locals 2

    .line 54209
    new-instance v1, Lcom/facebook/ads/redexgen/X/TA;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/redexgen/X/TA;-><init>(Lcom/facebook/ads/redexgen/X/T9;I)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ke;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Ke;-><init>(ILcom/facebook/ads/redexgen/X/Kd;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A01:Lcom/facebook/ads/redexgen/X/Ke;

    .line 54210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A03:Z

    .line 54211
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T9;->A0S()V

    .line 54212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A01:Lcom/facebook/ads/redexgen/X/Ke;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ke;->A08()Z

    .line 54213
    return-void
.end method

.method public final A0U(Landroid/view/View;ZI)V
    .locals 4

    .line 54214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0E:Lcom/facebook/ads/redexgen/X/Li;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/Li;->setFullscreen(Z)V

    .line 54215
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/T9;->A00:Landroid/view/View;

    .line 54216
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T9;->A08:Lcom/facebook/ads/redexgen/X/L8;

    sget-object v0, Lcom/facebook/ads/redexgen/X/L7;->A03:Lcom/facebook/ads/redexgen/X/L7;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A05(Lcom/facebook/ads/redexgen/X/L7;)V

    .line 54217
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T9;->A0M()V

    .line 54218
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54219
    .local v0, "contentParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 54220
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 54221
    invoke-virtual {p0, p1, v2}, Lcom/facebook/ads/redexgen/X/T9;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54222
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/T9;->A0K(I)Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v0

    .line 54223
    .local v2, "colorInfo":Lcom/facebook/ads/redexgen/X/1L;
    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/T9;->A0P(Lcom/facebook/ads/redexgen/X/1L;Z)V

    .line 54224
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/1L;->A07(Z)I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0M(Landroid/view/View;I)V

    .line 54225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A09:Lcom/facebook/ads/redexgen/X/Lj;

    if-eqz v0, :cond_2

    .line 54226
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T9;->A0N()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/T9;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 54227
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0E:Lcom/facebook/ads/redexgen/X/Li;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Li;->getToolbarHeight()I

    move-result v0

    goto :goto_0

    .line 54228
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/T9;->A0G:[Ljava/lang/String;

    const-string v1, "NsWlVTe7e8AxmZfep9MsD1WsEVvEb3lR"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz p2, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_2

    .line 54229
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/T9;->A08:Lcom/facebook/ads/redexgen/X/L8;

    sget-object v1, Lcom/facebook/ads/redexgen/X/T9;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/T9;->A0G:[Ljava/lang/String;

    const-string v1, "LlUUcmlOaTawHlOzciUSj9DhXPbTXBAe"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/L7;->A04:Lcom/facebook/ads/redexgen/X/L7;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/L8;->A05(Lcom/facebook/ads/redexgen/X/L7;)V

    .line 54230
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0V(Lcom/facebook/ads/redexgen/X/5F;)V
    .locals 5

    .line 54231
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T9;->A08:Lcom/facebook/ads/redexgen/X/L8;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5F;->A0H()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/L8;->A04(Landroid/view/Window;)V

    .line 54232
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0g()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A05:Lcom/facebook/ads/redexgen/X/18;

    .line 54233
    const/4 v1, 0x0

    .line 54234
    .local v0, "adInfo":Lcom/facebook/ads/redexgen/X/1C;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v1

    .line 54236
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/T9;->A0E:Lcom/facebook/ads/redexgen/X/Li;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    .line 54237
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0k()Lcom/facebook/ads/redexgen/X/1V;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    .line 54238
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v2

    .line 54239
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A03()I

    move-result v1

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    .line 54240
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0l()Lcom/facebook/ads/redexgen/X/1b;

    move-result-object v0

    .line 54241
    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Li;->setPageDetails(Lcom/facebook/ads/redexgen/X/1V;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/1b;)V

    .line 54242
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T9;->A0E:Lcom/facebook/ads/redexgen/X/Li;

    new-instance v0, Lcom/facebook/ads/redexgen/X/TD;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/TD;-><init>(Lcom/facebook/ads/redexgen/X/T9;Lcom/facebook/ads/redexgen/X/5F;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Li;->setToolbarListener(Lcom/facebook/ads/redexgen/X/Lh;)V

    .line 54243
    return-void

    .line 54244
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A0W(Lcom/facebook/ads/redexgen/X/5F;)V
    .locals 4

    .line 54245
    move-object v3, p0

    .line 54246
    .local v0, "interstitialView":Lcom/facebook/ads/redexgen/X/T9;
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 54247
    .local v1, "fadeOut":Landroid/view/animation/Animation;
    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 54248
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lr;

    invoke-direct {v0, p0, v3, p1}, Lcom/facebook/ads/redexgen/X/Lr;-><init>(Lcom/facebook/ads/redexgen/X/T9;Lcom/facebook/ads/redexgen/X/T9;Lcom/facebook/ads/redexgen/X/5F;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 54249
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/T9;->startAnimation(Landroid/view/animation/Animation;)V

    .line 54250
    return-void
.end method

.method public final A0X()Z
    .locals 4

    .line 54251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    .line 54252
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0P()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/T9;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/T9;->A0G:[Ljava/lang/String;

    const-string v1, "rwsNokIOLx9Fj0KMvDMbhHWjcozH5rOe"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 54253
    :goto_0
    return v0
.end method

.method public final A0Y()Z
    .locals 1

    .line 54254
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A03:Z

    return v0
.end method

.method public final A0Z()Z
    .locals 1

    .line 54255
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A04:Z

    return v0
.end method

.method public abstract A0a()Z
.end method

.method public ABw(Z)V
    .locals 1

    .line 54256
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A01:Lcom/facebook/ads/redexgen/X/Ke;

    if-eqz v0, :cond_0

    .line 54257
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ke;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A01:Lcom/facebook/ads/redexgen/X/Ke;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ke;->A07()Z

    .line 54259
    :cond_0
    return-void
.end method

.method public ACM(Z)V
    .locals 1

    .line 54260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A01:Lcom/facebook/ads/redexgen/X/Ke;

    if-eqz v0, :cond_0

    .line 54261
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ke;->A05()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54262
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A01:Lcom/facebook/ads/redexgen/X/Ke;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ke;->A08()Z

    .line 54263
    :cond_0
    return-void
.end method

.method public getAdEventManager()Lcom/facebook/ads/redexgen/X/Ia;
    .locals 1

    .line 54264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0C:Lcom/facebook/ads/redexgen/X/Ia;

    return-object v0
.end method

.method public getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Lj;
    .locals 1

    .line 54265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A09:Lcom/facebook/ads/redexgen/X/Lj;

    return-object v0
.end method

.method public abstract getCloseButtonStyle()I
    .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    .end annotation
.end method

.method public getCurrentClientToken()Ljava/lang/String;
    .locals 1

    .line 54266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 54267
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 54268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A08:Lcom/facebook/ads/redexgen/X/L8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L8;->A03()V

    .line 54269
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T9;->A0E:Lcom/facebook/ads/redexgen/X/Li;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Li;->setToolbarListener(Lcom/facebook/ads/redexgen/X/Lh;)V

    .line 54270
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T9;->A0M()V

    .line 54271
    return-void
.end method

.method public setImpressionRecordingFlag(Lcom/facebook/ads/redexgen/X/LD;)V
    .locals 4

    .line 54272
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/LD;->A05()V

    .line 54273
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T9;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Lj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54274
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A07:Z

    if-eqz v0, :cond_1

    .line 54275
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T9;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Lj;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>()V

    .line 54276
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A6t()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A3t(Ljava/lang/String;)V

    .line 54277
    :cond_0
    :goto_0
    return-void

    .line 54278
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T9;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Lj;

    move-result-object v3

    .line 54279
    const/4 v2, 0x0

    const/16 v1, 0x2f

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T9;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A3t(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Lj;)V
    .locals 0

    .line 54280
    return-void
.end method

.method public setServerSideRewardHandler(Lcom/facebook/ads/redexgen/X/P5;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 54281
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/T9;->A06:Lcom/facebook/ads/redexgen/X/P5;

    .line 54282
    return-void
.end method
