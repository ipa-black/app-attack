.class Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ/cJ$1;
.super Lcom/bytedance/sdk/component/fl/ac/Qhi/ac;
.source "LruCountBitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ/cJ;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/fl/ac/Qhi/ac<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ/cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ/cJ;I)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ/cJ$1;->Qhi:Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ/cJ;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/fl/ac/Qhi/ac;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected Qhi(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 33
    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ/cJ;->Qhi(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method protected synthetic cJ(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/fl/ac/Qhi/cJ/cJ$1;->Qhi(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method
