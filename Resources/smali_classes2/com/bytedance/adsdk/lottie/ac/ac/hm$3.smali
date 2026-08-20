.class synthetic Lcom/bytedance/adsdk/lottie/ac/ac/hm$3;
.super Ljava/lang/Object;
.source "TextLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/lottie/ac/ac/hm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic Qhi:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 290
    invoke-static {}, Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;->values()[Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bytedance/adsdk/lottie/ac/ac/hm$3;->Qhi:[I

    :try_start_0
    sget-object v1, Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;->Qhi:Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/bytedance/adsdk/lottie/ac/ac/hm$3;->Qhi:[I

    sget-object v1, Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;->cJ:Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/bytedance/adsdk/lottie/ac/ac/hm$3;->Qhi:[I

    sget-object v1, Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;->ac:Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
