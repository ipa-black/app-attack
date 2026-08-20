.class public final Lcom/criteo/publisher/advancednative/g$a$a;
.super Ljava/lang/Object;
.source "CriteoImageLoader.kt"

# interfaces
.implements Lcom/squareup/picasso/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/advancednative/g$a;->a(Lcom/criteo/publisher/e0/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/e0/a$a;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/e0/a$a;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/g$a$a;->a:Lcom/criteo/publisher/e0/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/criteo/publisher/advancednative/g$a$a;->a:Lcom/criteo/publisher/e0/a$a;

    invoke-virtual {p1}, Lcom/criteo/publisher/e0/a$a;->a()V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/g$a$a;->a:Lcom/criteo/publisher/e0/a$a;

    invoke-virtual {v0}, Lcom/criteo/publisher/e0/a$a;->a()V

    return-void
.end method
