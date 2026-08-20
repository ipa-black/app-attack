.class synthetic Lcom/bytedance/adsdk/lottie/Qhi/Qhi/pA$1;
.super Ljava/lang/Object;
.source "PolystarContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/lottie/Qhi/Qhi/pA;
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

    .line 127
    invoke-static {}, Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;->values()[Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/pA$1;->Qhi:[I

    :try_start_0
    sget-object v1, Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;->Qhi:Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/pA$1;->Qhi:[I

    sget-object v1, Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;->cJ:Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
