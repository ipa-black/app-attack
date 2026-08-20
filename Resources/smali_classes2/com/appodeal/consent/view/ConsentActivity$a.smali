.class public final Lcom/appodeal/consent/view/ConsentActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/consent/view/ConsentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lcom/appodeal/consent/internal/d$f$a;)V
    .locals 0

    .line 3
    sput-object p0, Lcom/appodeal/consent/view/ConsentActivity;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static a(Lcom/appodeal/consent/internal/d$f$b;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/appodeal/consent/view/ConsentActivity;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static a(Lcom/appodeal/consent/view/b;)V
    .locals 2

    const-string v0, "consentWebView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/appodeal/consent/view/ConsentActivity;->a(Lcom/appodeal/consent/view/b;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 4
    sget-boolean v0, Lcom/appodeal/consent/view/ConsentActivity;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 5
    sput-boolean v0, Lcom/appodeal/consent/view/ConsentActivity;->d:Z

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appodeal/consent/view/ConsentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/appodeal/consent/view/ConsentActivity;->d:Z

    return v0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/appodeal/consent/view/ConsentActivity;->d:Z

    return-void
.end method
