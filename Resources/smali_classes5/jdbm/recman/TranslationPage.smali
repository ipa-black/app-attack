.class final Ljdbm/recman/TranslationPage;
.super Ljdbm/recman/PageHeader;
.source "TranslationPage.java"


# static fields
.field static final ELEMS_PER_PAGE:S = 0x331s

.field static final O_TRANS:S = 0x12s


# instance fields
.field final slots:[Ljdbm/recman/PhysicalRowId;


# direct methods
.method constructor <init>(Ljdbm/recman/BlockIo;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Ljdbm/recman/PageHeader;-><init>(Ljdbm/recman/BlockIo;)V

    const/16 p1, 0x331

    .line 63
    new-array p1, p1, [Ljdbm/recman/PhysicalRowId;

    iput-object p1, p0, Ljdbm/recman/TranslationPage;->slots:[Ljdbm/recman/PhysicalRowId;

    return-void
.end method

.method static getTranslationPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/TranslationPage;
    .locals 2

    .line 77
    invoke-virtual {p0}, Ljdbm/recman/BlockIo;->getView()Ljdbm/recman/BlockView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    instance-of v1, v0, Ljdbm/recman/TranslationPage;

    if-eqz v1, :cond_0

    .line 79
    check-cast v0, Ljdbm/recman/TranslationPage;

    return-object v0

    .line 81
    :cond_0
    new-instance v0, Ljdbm/recman/TranslationPage;

    invoke-direct {v0, p0}, Ljdbm/recman/TranslationPage;-><init>(Ljdbm/recman/BlockIo;)V

    return-object v0
.end method


# virtual methods
.method get(S)Ljdbm/recman/PhysicalRowId;
    .locals 4

    add-int/lit8 v0, p1, -0x12

    .line 86
    div-int/lit8 v0, v0, 0xa

    .line 87
    iget-object v1, p0, Ljdbm/recman/TranslationPage;->slots:[Ljdbm/recman/PhysicalRowId;

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    .line 88
    new-instance v2, Ljdbm/recman/PhysicalRowId;

    iget-object v3, p0, Ljdbm/recman/TranslationPage;->block:Ljdbm/recman/BlockIo;

    invoke-direct {v2, v3, p1}, Ljdbm/recman/PhysicalRowId;-><init>(Ljdbm/recman/BlockIo;S)V

    aput-object v2, v1, v0

    .line 89
    :cond_0
    iget-object p1, p0, Ljdbm/recman/TranslationPage;->slots:[Ljdbm/recman/PhysicalRowId;

    aget-object p1, p1, v0

    return-object p1
.end method
