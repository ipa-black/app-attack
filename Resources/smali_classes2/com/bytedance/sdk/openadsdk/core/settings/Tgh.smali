.class public interface abstract Lcom/bytedance/sdk/openadsdk/core/settings/Tgh;
.super Ljava/lang/Object;
.source "ISettingsDataRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;,
        Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;
    }
.end annotation


# static fields
.field public static final Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final cJ:Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;

    .line 25
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$2;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$2;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh;->cJ:Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;

    return-void
.end method


# virtual methods
.method public abstract Qhi(Lorg/json/JSONObject;)V
.end method
