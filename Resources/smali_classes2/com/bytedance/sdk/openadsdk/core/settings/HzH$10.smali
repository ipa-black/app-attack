.class Lcom/bytedance/sdk/openadsdk/core/settings/HzH$10;
.super Ljava/lang/Object;
.source "TTSdkSettings.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->pM()Lcom/bytedance/sdk/openadsdk/core/settings/Sf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ<",
        "Lcom/bytedance/sdk/openadsdk/core/settings/Sf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/HzH;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/settings/HzH;)V
    .locals 0

    .line 910
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$10;->Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/HzH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Sf;
    .locals 1

    .line 913
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/Sf;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Sf;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic cJ(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 910
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$10;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Sf;

    move-result-object p1

    return-object p1
.end method
