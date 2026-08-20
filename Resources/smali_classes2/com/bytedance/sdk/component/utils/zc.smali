.class public Lcom/bytedance/sdk/component/utils/zc;
.super Ljava/lang/Object;
.source "LoadUrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/utils/zc$cJ;,
        Lcom/bytedance/sdk/component/utils/zc$Qhi;
    }
.end annotation


# static fields
.field private static final Qhi:Lcom/bytedance/sdk/component/utils/zc$Qhi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lcom/bytedance/sdk/component/utils/zc$cJ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/utils/zc$cJ;-><init>(Lcom/bytedance/sdk/component/utils/zc$1;)V

    sput-object v0, Lcom/bytedance/sdk/component/utils/zc;->Qhi:Lcom/bytedance/sdk/component/utils/zc$Qhi;

    return-void
.end method

.method public static Qhi(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 68
    sget-object v0, Lcom/bytedance/sdk/component/utils/zc;->Qhi:Lcom/bytedance/sdk/component/utils/zc$Qhi;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/component/utils/zc$Qhi;->Qhi(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
