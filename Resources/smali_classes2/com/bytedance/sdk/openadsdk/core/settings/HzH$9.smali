.class Lcom/bytedance/sdk/openadsdk/core/settings/HzH$9;
.super Ljava/lang/Object;
.source "TTSdkSettings.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->EBS()Lcom/bytedance/sdk/openadsdk/core/settings/WAv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$cJ<",
        "Lcom/bytedance/sdk/openadsdk/core/settings/WAv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/HzH;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/settings/HzH;)V
    .locals 0

    .line 884
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$9;->Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/HzH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/WAv;
    .locals 1

    .line 887
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/WAv;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/WAv;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic cJ(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 884
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$9;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/WAv;

    move-result-object p1

    return-object p1
.end method
