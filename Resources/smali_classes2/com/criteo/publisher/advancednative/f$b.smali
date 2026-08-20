.class Lcom/criteo/publisher/advancednative/f$b;
.super Lcom/criteo/publisher/x;
.source "ClickHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/advancednative/f;->c(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/advancednative/f;Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V
    .locals 0

    .line 68
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/f$b;->c:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-direct {p0}, Lcom/criteo/publisher/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/f$b;->c:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-interface {v0}, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;->onAdLeftApplication()V

    return-void
.end method
