.class public final enum Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;
.super Ljava/lang/Enum;
.source "PlayablePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/hpZ/hm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Qhi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CJ:Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

.field public static final enum Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

.field public static final enum ac:Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

.field public static final enum cJ:Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

.field private static final synthetic fl:[Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 2908
    new-instance v0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    const-string v1, "LAND_PAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    const-string v2, "FEED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    const-string v3, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;->ac:Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    const-string v4, "FEED_AWEME"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;->CJ:Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    .line 2907
    filled-new-array {v0, v1, v2, v3}, [Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;->fl:[Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2907
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;
    .locals 1

    .line 2907
    const-class v0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;
    .locals 1

    .line 2907
    sget-object v0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;->fl:[Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    return-object v0
.end method
