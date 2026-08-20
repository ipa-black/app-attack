.class public final enum Lcom/bytedance/adsdk/Qhi/cJ/CJ/fl;
.super Ljava/lang/Enum;
.source "MethodToken.java"

# interfaces
.implements Lcom/bytedance/adsdk/Qhi/cJ/CJ/Sf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/Qhi/cJ/CJ/fl;",
        ">;",
        "Lcom/bytedance/adsdk/Qhi/cJ/CJ/Sf;"
    }
.end annotation


# static fields
.field public static final enum Qhi:Lcom/bytedance/adsdk/Qhi/cJ/CJ/fl;

.field private static final synthetic cJ:[Lcom/bytedance/adsdk/Qhi/cJ/CJ/fl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/bytedance/adsdk/Qhi/cJ/CJ/fl;

    const-string v1, "METHOD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/Qhi/cJ/CJ/fl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/adsdk/Qhi/cJ/CJ/fl;->Qhi:Lcom/bytedance/adsdk/Qhi/cJ/CJ/fl;

    .line 3
    filled-new-array {v0}, [Lcom/bytedance/adsdk/Qhi/cJ/CJ/fl;

    move-result-object v0

    sput-object v0, Lcom/bytedance/adsdk/Qhi/cJ/CJ/fl;->cJ:[Lcom/bytedance/adsdk/Qhi/cJ/CJ/fl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/Qhi/cJ/CJ/fl;
    .locals 1

    .line 3
    const-class v0, Lcom/bytedance/adsdk/Qhi/cJ/CJ/fl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/Qhi/cJ/CJ/fl;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/Qhi/cJ/CJ/fl;
    .locals 1

    .line 3
    sget-object v0, Lcom/bytedance/adsdk/Qhi/cJ/CJ/fl;->cJ:[Lcom/bytedance/adsdk/Qhi/cJ/CJ/fl;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/Qhi/cJ/CJ/fl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/Qhi/cJ/CJ/fl;

    return-object v0
.end method
