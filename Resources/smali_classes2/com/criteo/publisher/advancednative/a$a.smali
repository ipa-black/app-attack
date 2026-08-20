.class Lcom/criteo/publisher/advancednative/a$a;
.super Ljava/lang/Object;
.source "AdChoiceClickHandler.java"

# interfaces
.implements Lcom/criteo/publisher/b0/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/advancednative/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/advancednative/a;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/advancednative/a;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/a$a;->a:Lcom/criteo/publisher/advancednative/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/a$a;->a:Lcom/criteo/publisher/advancednative/a;

    invoke-static {v0}, Lcom/criteo/publisher/advancednative/a;->b(Lcom/criteo/publisher/advancednative/a;)Lcom/criteo/publisher/advancednative/f;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/a$a;->a:Lcom/criteo/publisher/advancednative/a;

    invoke-static {v1}, Lcom/criteo/publisher/advancednative/a;->a(Lcom/criteo/publisher/advancednative/a;)Ljava/lang/ref/Reference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/advancednative/f;->b(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/a$a;->a:Lcom/criteo/publisher/advancednative/a;

    invoke-static {v0}, Lcom/criteo/publisher/advancednative/a;->b(Lcom/criteo/publisher/advancednative/a;)Lcom/criteo/publisher/advancednative/f;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/a$a;->a:Lcom/criteo/publisher/advancednative/a;

    invoke-static {v1}, Lcom/criteo/publisher/advancednative/a;->a(Lcom/criteo/publisher/advancednative/a;)Ljava/lang/ref/Reference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/advancednative/f;->c(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V

    return-void
.end method
