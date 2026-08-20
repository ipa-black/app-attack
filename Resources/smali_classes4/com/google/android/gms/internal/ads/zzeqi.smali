.class public final Lcom/google/android/gms/internal/ads/zzeqi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekq;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbke;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgfc;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfnj;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzeqr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfnj;Lcom/google/android/gms/internal/ads/zzgfc;Lcom/google/android/gms/internal/ads/zzbke;Lcom/google/android/gms/internal/ads/zzeqr;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqi;->zzc:Lcom/google/android/gms/internal/ads/zzfnj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeqi;->zzb:Lcom/google/android/gms/internal/ads/zzgfc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeqi;->zza:Lcom/google/android/gms/internal/ads/zzbke;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeqi;->zzd:Lcom/google/android/gms/internal/ads/zzeqr;

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzeqi;)Lcom/google/android/gms/internal/ads/zzeqr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeqi;->zzd:Lcom/google/android/gms/internal/ads/zzeqr;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfil;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 9

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzcig;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzcig;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzeqn;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzeqn;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzeqh;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeqh;-><init>(Lcom/google/android/gms/internal/ads/zzeqi;Lcom/google/android/gms/internal/ads/zzcig;Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzeqn;)V

    .line 2
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzeqn;->zzd(Lcom/google/android/gms/ads/internal/zzf;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbjz;

    .line 3
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfil;->zzt:Lcom/google/android/gms/internal/ads/zzfiq;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzfiq;->zzb:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfiq;->zza:Ljava/lang/String;

    invoke-direct {p1, v7, v0, p2}, Lcom/google/android/gms/internal/ads/zzbjz;-><init>(Lcom/google/android/gms/ads/internal/zzf;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeqi;->zzc:Lcom/google/android/gms/internal/ads/zzfnj;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfnd;->zzs:Lcom/google/android/gms/internal/ads/zzfnd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeqg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzeqg;-><init>(Lcom/google/android/gms/internal/ads/zzeqi;Lcom/google/android/gms/internal/ads/zzbjz;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqi;->zzb:Lcom/google/android/gms/internal/ads/zzgfc;

    .line 5
    invoke-static {v1, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzfmt;->zzd(Lcom/google/android/gms/internal/ads/zzfmn;Lcom/google/android/gms/internal/ads/zzgfc;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfnb;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzfnd;->zzt:Lcom/google/android/gms/internal/ads/zzfnd;

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfna;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/zzfna;->zzd(Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzfna;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfna;->zza()Lcom/google/android/gms/internal/ads/zzfmo;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfil;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqi;->zza:Lcom/google/android/gms/internal/ads/zzbke;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfil;->zzt:Lcom/google/android/gms/internal/ads/zzfiq;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfiq;->zza:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzbjz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqi;->zza:Lcom/google/android/gms/internal/ads/zzbke;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbke;->zze(Lcom/google/android/gms/internal/ads/zzbkb;)V

    return-void
.end method
