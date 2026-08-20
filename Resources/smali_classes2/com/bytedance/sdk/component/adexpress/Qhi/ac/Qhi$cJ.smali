.class public Lcom/bytedance/sdk/component/adexpress/Qhi/ac/Qhi$cJ;
.super Ljava/lang/Object;
.source "TempPkgModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/Qhi/ac/Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "cJ"
.end annotation


# instance fields
.field private Qhi:Ljava/lang/String;

.field private ac:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private cJ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/adexpress/Qhi/ac/Qhi$cJ;)Ljava/lang/String;
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/Qhi$cJ;->Qhi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/component/adexpress/Qhi/ac/Qhi$cJ;)Ljava/lang/String;
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/Qhi$cJ;->cJ:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/Qhi$cJ;->Qhi:Ljava/lang/String;

    return-object v0
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/Qhi$cJ;->Qhi:Ljava/lang/String;

    return-void
.end method

.method public Qhi(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 297
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/Qhi$cJ;->ac:Ljava/util/List;

    return-void
.end method

.method public cJ()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/Qhi$cJ;->ac:Ljava/util/List;

    return-object v0
.end method

.method public cJ(Ljava/lang/String;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/Qhi/ac/Qhi$cJ;->cJ:Ljava/lang/String;

    return-void
.end method
