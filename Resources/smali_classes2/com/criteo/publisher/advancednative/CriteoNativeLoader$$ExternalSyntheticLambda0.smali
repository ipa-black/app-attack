.class public final synthetic Lcom/criteo/publisher/advancednative/CriteoNativeLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

.field public final synthetic f$1:Lcom/criteo/publisher/advancednative/CriteoNativeAd;


# direct methods
.method public synthetic constructor <init>(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader$$ExternalSyntheticLambda0;->f$0:Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    iput-object p2, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader$$ExternalSyntheticLambda0;->f$1:Lcom/criteo/publisher/advancednative/CriteoNativeAd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader$$ExternalSyntheticLambda0;->f$0:Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader$$ExternalSyntheticLambda0;->f$1:Lcom/criteo/publisher/advancednative/CriteoNativeAd;

    invoke-static {v0, v1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->$r8$lambda$xWZ87zxzjBeUnhmFXjHVv7ajgdQ(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V

    return-void
.end method
