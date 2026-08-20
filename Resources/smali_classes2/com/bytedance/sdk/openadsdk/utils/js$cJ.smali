.class public Lcom/bytedance/sdk/openadsdk/utils/js$cJ;
.super Ljava/lang/Object;
.source "ToolUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/utils/js;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "cJ"
.end annotation


# instance fields
.field public final Qhi:Landroid/content/ComponentName;

.field public final cJ:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;I)V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/js$cJ;->Qhi:Landroid/content/ComponentName;

    .line 156
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/utils/js$cJ;->cJ:I

    return-void
.end method
