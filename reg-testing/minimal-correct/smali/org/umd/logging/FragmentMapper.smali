.class public Lorg/umd/logging/FragmentMapper;
.super Ljava/lang/Object;
.source "FragmentMapper.java"


# static fields
.field private static check_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lorg/umd/logging/FragmentMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/umd/logging/FragmentMapper;
    .locals 1

    .line 14
    sget-object v0, Lorg/umd/logging/FragmentMapper;->instance:Lorg/umd/logging/FragmentMapper;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/umd/logging/FragmentMapper;->check_map:Ljava/util/HashMap;

    .line 16
    new-instance v0, Lorg/umd/logging/FragmentMapper;

    invoke-direct {v0}, Lorg/umd/logging/FragmentMapper;-><init>()V

    sput-object v0, Lorg/umd/logging/FragmentMapper;->instance:Lorg/umd/logging/FragmentMapper;

    .line 18
    :cond_0
    sget-object v0, Lorg/umd/logging/FragmentMapper;->instance:Lorg/umd/logging/FragmentMapper;

    return-object v0
.end method

.method public static isFragment(Ljava/lang/Class;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-nez p0, :cond_0

    return-object v0

    .line 25
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 27
    sget-object v2, Lorg/umd/logging/FragmentMapper;->check_map:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    const-string v2, "android.app.Fragment"

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "android.support.v4.app.Fragment"

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_3

    .line 37
    sget-object p0, Lorg/umd/logging/FragmentMapper;->check_map:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 40
    :cond_3
    invoke-static {p0}, Lorg/umd/logging/FragmentMapper;->isFragment(Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object p0

    .line 41
    sget-object v0, Lorg/umd/logging/FragmentMapper;->check_map:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 32
    :cond_4
    :goto_0
    sget-object p0, Lorg/umd/logging/FragmentMapper;->check_map:Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
