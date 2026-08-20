.class Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;
.super Ljava/lang/Object;
.source "AdChoiceOverlayNativeRenderer.java"

# interfaces
.implements Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;


# instance fields
.field private final adChoiceOverlay:Lcom/criteo/publisher/advancednative/b;

.field private final delegate:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;)V
    .locals 1

    .line 49
    invoke-static {}, Lcom/criteo/publisher/s;->c()Lcom/criteo/publisher/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/s;->b0()Lcom/criteo/publisher/advancednative/b;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;-><init>(Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;Lcom/criteo/publisher/advancednative/b;)V

    return-void
.end method

.method constructor <init>(Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;Lcom/criteo/publisher/advancednative/b;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;->delegate:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    .line 57
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;->adChoiceOverlay:Lcom/criteo/publisher/advancednative/b;

    return-void
.end method


# virtual methods
.method public createNativeView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;->adChoiceOverlay:Lcom/criteo/publisher/advancednative/b;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;->delegate:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    invoke-interface {v1, p1, p2}, Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;->createNativeView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/advancednative/b;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method public renderNativeView(Lcom/criteo/publisher/advancednative/RendererHelper;Landroid/view/View;Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;->adChoiceOverlay:Lcom/criteo/publisher/advancednative/b;

    invoke-virtual {v0, p2}, Lcom/criteo/publisher/advancednative/b;->c(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 77
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;->delegate:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    invoke-interface {v0, p1, p2, p3}, Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;->renderNativeView(Lcom/criteo/publisher/advancednative/RendererHelper;Landroid/view/View;Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V

    :cond_0
    return-void
.end method
