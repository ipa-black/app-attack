.class public final Lcom/google/android/gms/internal/ads/zzepw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekq;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeks;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzekx;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfnj;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgfc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfnj;Lcom/google/android/gms/internal/ads/zzgfc;Lcom/google/android/gms/internal/ads/zzeks;Lcom/google/android/gms/internal/ads/zzekx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepw;->zzc:Lcom/google/android/gms/internal/ads/zzfnj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzepw;->zzd:Lcom/google/android/gms/internal/ads/zzgfc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzepw;->zzb:Lcom/google/android/gms/internal/ads/zzekx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzepw;->zza:Lcom/google/android/gms/internal/ads/zzeks;

    return-void
.end method

.method static final zze(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error from: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", code: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfil;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 6

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzfil;->zzu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzepw;->zza:Lcom/google/android/gms/internal/ads/zzeks;

    .line 2
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzfil;->zzw:Lorg/json/JSONObject;

    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzeks;->zza(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzekt;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfjl; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeny;

    const-string p2, "Unable to instantiate mediation adapter class."

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzeny;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzger;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcig;

    .line 4
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcig;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzepv;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzepv;-><init>(Lcom/google/android/gms/internal/ads/zzepw;Lcom/google/android/gms/internal/ads/zzekt;Lcom/google/android/gms/internal/ads/zzcig;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzekt;->zzc:Lcom/google/android/gms/internal/ads/zzdfx;

    .line 5
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzdfx;->zza(Lcom/google/android/gms/internal/ads/zzdfw;)V

    .line 6
    iget-boolean v2, p2, Lcom/google/android/gms/internal/ads/zzfil;->zzN:Z

    if-eqz v2, :cond_3

    .line 7
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzfix;->zza:Lcom/google/android/gms/internal/ads/zzfiu;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfiu;->zza:Lcom/google/android/gms/internal/ads/zzfjg;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfjg;->zzd:Lcom/google/android/gms/ads/internal/client/zzl;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/zzl;->zzm:Landroid/os/Bundle;

    const-class v3, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 8
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Landroid/os/Bundle;

    .line 9
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-class v4, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 10
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    const-string v2, "render_test_ad_label"

    const/4 v4, 0x1

    .line 11
    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzepw;->zzc:Lcom/google/android/gms/internal/ads/zzfnj;

    .line 12
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfnd;->zzp:Lcom/google/android/gms/internal/ads/zzfnd;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzept;

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzept;-><init>(Lcom/google/android/gms/internal/ads/zzepw;Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzekt;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzepw;->zzd:Lcom/google/android/gms/internal/ads/zzgfc;

    .line 13
    invoke-static {v4, v5, v3, v2}, Lcom/google/android/gms/internal/ads/zzfmt;->zzd(Lcom/google/android/gms/internal/ads/zzfmn;Lcom/google/android/gms/internal/ads/zzgfc;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfnb;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfnd;->zzq:Lcom/google/android/gms/internal/ads/zzfnd;

    .line 14
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfna;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object v2

    .line 15
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfna;->zzd(Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfnd;->zzr:Lcom/google/android/gms/internal/ads/zzfnd;

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfna;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzepu;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzepu;-><init>(Lcom/google/android/gms/internal/ads/zzepw;Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzekt;)V

    .line 17
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfna;->zze(Lcom/google/android/gms/internal/ads/zzfmm;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfna;->zza()Lcom/google/android/gms/internal/ads/zzfmo;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfil;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfil;->zzu:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzekt;Ljava/lang/Void;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzepw;->zzb:Lcom/google/android/gms/internal/ads/zzekx;

    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzekx;->zza(Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzekt;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzekt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepw;->zzb:Lcom/google/android/gms/internal/ads/zzekx;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzekx;->zzb(Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzekt;)V

    return-void
.end method
