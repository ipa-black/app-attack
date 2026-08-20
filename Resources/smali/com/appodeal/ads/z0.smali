.class public final Lcom/appodeal/ads/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/utils/h;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/utils/h;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/z0;->a:Lcom/appodeal/ads/utils/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/z0;->a:Lcom/appodeal/ads/utils/h;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/utils/h;->c:Lcom/appodeal/ads/utils/h$a;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
