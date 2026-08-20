.class public Lcom/bytedance/adsdk/ugeno/component/text/RichTextView;
.super Landroid/widget/TextView;
.source "RichTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setRichText(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/component/text/RichTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
