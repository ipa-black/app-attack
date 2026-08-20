.class public final Lcom/facebook/ads/redexgen/X/Mz;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/N0;->A0E()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/N0;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/N0;)V
    .locals 0

    .line 45207
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mz;->A00:Lcom/facebook/ads/redexgen/X/N0;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 45208
    sget v0, Lcom/facebook/ads/redexgen/X/7s;->A2e:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N0;->A02(I)V

    .line 45209
    const/4 v0, 0x1

    return v0
.end method
