.class public final Lcom/facebook/ads/redexgen/X/SM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Mu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/SG;->A0O(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/SG;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 52101
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kBW4xLQ0UagetoFfZBciP8yG8j8W9VjJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "CuM3P9amPTPJ5VHvR15Uue2Gct3r32Ot"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "lbGRsJ8fypW9S7UDq3wjuqDAeCT4ZPX8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CX6eEzMwkcIPtUXHSQR62noGC5y"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Dd2JYkt6fB7OqeIXSHoD4gCnoZc1iMAP"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "m18x0ngOflO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "jU1O956PNCfHvoVw6Wvh6mauWMk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "8DHuyV3l5L6zPCdvs"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/SM;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SG;)V
    .locals 0

    .line 52102
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ABt(Ljava/lang/String;)V
    .locals 2

    .line 52103
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SG;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/SG;->A0W(Lcom/facebook/ads/redexgen/X/SG;Z)Z

    .line 52104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SG;->A06(Lcom/facebook/ads/redexgen/X/SG;)Lcom/facebook/ads/redexgen/X/Mn;

    move-result-object v1

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mn;->setProgress(I)V

    .line 52105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SG;->A06(Lcom/facebook/ads/redexgen/X/SG;)Lcom/facebook/ads/redexgen/X/Mn;

    move-result-object v1

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0N(Landroid/view/View;I)V

    .line 52106
    return-void
.end method

.method public final ABv(Ljava/lang/String;)V
    .locals 2

    .line 52107
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SG;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/SG;->A0W(Lcom/facebook/ads/redexgen/X/SG;Z)Z

    .line 52108
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SG;->A06(Lcom/facebook/ads/redexgen/X/SG;)Lcom/facebook/ads/redexgen/X/Mn;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0N(Landroid/view/View;I)V

    .line 52109
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SG;->A05(Lcom/facebook/ads/redexgen/X/SG;)Lcom/facebook/ads/redexgen/X/Mm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Mm;->setUrl(Ljava/lang/String;)V

    .line 52110
    return-void
.end method

.method public final ACD(I)V
    .locals 4

    .line 52111
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SG;->A0U(Lcom/facebook/ads/redexgen/X/SG;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SG;->A06(Lcom/facebook/ads/redexgen/X/SG;)Lcom/facebook/ads/redexgen/X/Mn;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/SM;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/SM;->A01:[Ljava/lang/String;

    const-string v1, "lMw90bHodMLjKU6qsq03ZDigEQG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "W3A1xCHgBxfgFje8Ug40eYh6nHu"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3, p1}, Lcom/facebook/ads/redexgen/X/Mn;->setProgress(I)V

    .line 52113
    :cond_1
    return-void
.end method

.method public final ACI(Ljava/lang/String;)V
    .locals 1

    .line 52114
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SG;->A05(Lcom/facebook/ads/redexgen/X/SG;)Lcom/facebook/ads/redexgen/X/Mm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Mm;->setTitle(Ljava/lang/String;)V

    .line 52115
    return-void
.end method

.method public final ACK()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 52116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SG;->A08(Lcom/facebook/ads/redexgen/X/SG;)Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    .line 52117
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A09()Lcom/facebook/ads/redexgen/X/Lj;

    move-result-object v1

    .line 52118
    const/16 v0, 0xe

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->AAR(I)V

    .line 52119
    return-void
.end method
