.class public Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;
.super Ljava/lang/Object;
.source "NativeTemplateStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-direct {v0}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    return-void
.end method


# virtual methods
.method public build()Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    return-object v0
.end method

.method public withCallToActionBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->access$302(Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;Landroid/graphics/drawable/ColorDrawable;)Landroid/graphics/drawable/ColorDrawable;

    return-object p0
.end method

.method public withCallToActionTextSize(F)Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->access$002(Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;F)F

    return-object p0
.end method

.method public withCallToActionTextTypeface(Landroid/graphics/Typeface;)Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->access$102(Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object p0
.end method

.method public withCallToActionTypefaceColor(I)Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->access$202(Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;I)I

    return-object p0
.end method

.method public withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->access$1602(Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;Landroid/graphics/drawable/ColorDrawable;)Landroid/graphics/drawable/ColorDrawable;

    return-object p0
.end method

.method public withPrimaryTextBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->access$702(Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;Landroid/graphics/drawable/ColorDrawable;)Landroid/graphics/drawable/ColorDrawable;

    return-object p0
.end method

.method public withPrimaryTextSize(F)Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->access$502(Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;F)F

    return-object p0
.end method

.method public withPrimaryTextTypeface(Landroid/graphics/Typeface;)Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->access$402(Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object p0
.end method

.method public withPrimaryTextTypefaceColor(I)Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->access$602(Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;I)I

    return-object p0
.end method

.method public withSecondaryTextBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->access$1102(Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;Landroid/graphics/drawable/ColorDrawable;)Landroid/graphics/drawable/ColorDrawable;

    return-object p0
.end method

.method public withSecondaryTextSize(F)Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->access$902(Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;F)F

    return-object p0
.end method

.method public withSecondaryTextTypeface(Landroid/graphics/Typeface;)Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->access$802(Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object p0
.end method

.method public withSecondaryTextTypefaceColor(I)Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->access$1002(Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;I)I

    return-object p0
.end method

.method public withTertiaryTextBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->access$1502(Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;Landroid/graphics/drawable/ColorDrawable;)Landroid/graphics/drawable/ColorDrawable;

    return-object p0
.end method

.method public withTertiaryTextSize(F)Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->access$1302(Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;F)F

    return-object p0
.end method

.method public withTertiaryTextTypeface(Landroid/graphics/Typeface;)Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->access$1202(Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object p0
.end method

.method public withTertiaryTextTypefaceColor(I)Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle$Builder;->styles:Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;->access$1402(Lcom/appsgeyser/sdk/utils/admobnative/NativeTemplateStyle;I)I

    return-object p0
.end method
