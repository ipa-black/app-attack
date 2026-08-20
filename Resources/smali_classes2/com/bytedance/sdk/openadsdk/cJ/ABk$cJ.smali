.class Lcom/bytedance/sdk/openadsdk/cJ/ABk$cJ;
.super Ljava/lang/Object;
.source "OpenAppSuccEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/cJ/ABk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "cJ"
.end annotation


# instance fields
.field public Qhi:I

.field public cJ:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    .line 191
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ABk$cJ;->Qhi:I

    const/16 v0, 0x1770

    .line 192
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ABk$cJ;->cJ:I

    return-void
.end method

.method public static Qhi()Lcom/bytedance/sdk/openadsdk/cJ/ABk$cJ;
    .locals 1

    .line 195
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/ABk$cJ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ABk$cJ;-><init>()V

    return-object v0
.end method
