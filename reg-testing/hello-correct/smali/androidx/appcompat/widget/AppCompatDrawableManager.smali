.class public final Landroidx/appcompat/widget/AppCompatDrawableManager;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatDrawableManager$AsldcInflateDelegate;,
        Landroidx/appcompat/widget/AppCompatDrawableManager$AvdcInflateDelegate;,
        Landroidx/appcompat/widget/AppCompatDrawableManager$VdcInflateDelegate;,
        Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;,
        Landroidx/appcompat/widget/AppCompatDrawableManager$InflateDelegate;
    }
.end annotation


# static fields
.field private static final COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

.field private static final COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

.field private static final COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

.field private static final COLOR_FILTER_CACHE:Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static INSTANCE:Landroidx/appcompat/widget/AppCompatDrawableManager; = null

.field private static final PLATFORM_VD_CLAZZ:Ljava/lang/String; = "android.graphics.drawable.VectorDrawable"

.field private static final SKIP_DRAWABLE_TAG:Ljava/lang/String; = "appcompat_skip_skip"

.field private static final TAG:Ljava/lang/String; = "AppCompatDrawableManag"

.field private static final TINT_CHECKABLE_BUTTON_LIST:[I

.field private static final TINT_COLOR_CONTROL_NORMAL:[I

.field private static final TINT_COLOR_CONTROL_STATE_LIST:[I


# instance fields
.field private mDelegates:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroidx/appcompat/widget/AppCompatDrawableManager$InflateDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrawableCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mHasCheckedVectorDrawableSetup:Z

.field private mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTintLists:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroidx/collection/SparseArrayCompat<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 78
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 107
    new-instance v0, Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;-><init>(I)V

    sput-object v0, Landroidx/appcompat/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;

    const/4 v0, 0x3

    new-array v2, v0, [I

    .line 113
    sget v3, Landroidx/appcompat/R$drawable;->abc_textfield_search_default_mtrl_alpha:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Landroidx/appcompat/R$drawable;->abc_textfield_default_mtrl_alpha:I

    const/4 v5, 0x1

    aput v3, v2, v5

    sget v3, Landroidx/appcompat/R$drawable;->abc_ab_share_pack_mtrl_alpha:I

    const/4 v6, 0x2

    aput v3, v2, v6

    sput-object v2, Landroidx/appcompat/widget/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    const/4 v2, 0x7

    new-array v3, v2, [I

    .line 123
    sget v7, Landroidx/appcompat/R$drawable;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v7, v3, v4

    sget v7, Landroidx/appcompat/R$drawable;->abc_seekbar_tick_mark_material:I

    aput v7, v3, v5

    sget v7, Landroidx/appcompat/R$drawable;->abc_ic_menu_share_mtrl_alpha:I

    aput v7, v3, v6

    sget v7, Landroidx/appcompat/R$drawable;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v7, v3, v0

    sget v7, Landroidx/appcompat/R$drawable;->abc_ic_menu_cut_mtrl_alpha:I

    const/4 v8, 0x4

    aput v7, v3, v8

    sget v7, Landroidx/appcompat/R$drawable;->abc_ic_menu_selectall_mtrl_alpha:I

    const/4 v9, 0x5

    aput v7, v3, v9

    sget v7, Landroidx/appcompat/R$drawable;->abc_ic_menu_paste_mtrl_am_alpha:I

    aput v7, v3, v1

    sput-object v3, Landroidx/appcompat/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    const/16 v3, 0xa

    new-array v3, v3, [I

    .line 137
    sget v7, Landroidx/appcompat/R$drawable;->abc_textfield_activated_mtrl_alpha:I

    aput v7, v3, v4

    sget v7, Landroidx/appcompat/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I

    aput v7, v3, v5

    sget v7, Landroidx/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    aput v7, v3, v6

    sget v7, Landroidx/appcompat/R$drawable;->abc_text_cursor_material:I

    aput v7, v3, v0

    sget v7, Landroidx/appcompat/R$drawable;->abc_text_select_handle_left_mtrl_dark:I

    aput v7, v3, v8

    sget v7, Landroidx/appcompat/R$drawable;->abc_text_select_handle_middle_mtrl_dark:I

    aput v7, v3, v9

    sget v7, Landroidx/appcompat/R$drawable;->abc_text_select_handle_right_mtrl_dark:I

    aput v7, v3, v1

    sget v1, Landroidx/appcompat/R$drawable;->abc_text_select_handle_left_mtrl_light:I

    aput v1, v3, v2

    sget v1, Landroidx/appcompat/R$drawable;->abc_text_select_handle_middle_mtrl_light:I

    const/16 v2, 0x8

    aput v1, v3, v2

    sget v1, Landroidx/appcompat/R$drawable;->abc_text_select_handle_right_mtrl_light:I

    const/16 v2, 0x9

    aput v1, v3, v2

    sput-object v3, Landroidx/appcompat/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    new-array v0, v0, [I

    .line 154
    sget v1, Landroidx/appcompat/R$drawable;->abc_popup_background_mtrl_mult:I

    aput v1, v0, v4

    sget v1, Landroidx/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    aput v1, v0, v5

    sget v1, Landroidx/appcompat/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v1, v0, v6

    sput-object v0, Landroidx/appcompat/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    new-array v0, v6, [I

    .line 164
    sget v1, Landroidx/appcompat/R$drawable;->abc_tab_indicator_material:I

    aput v1, v0, v4

    sget v1, Landroidx/appcompat/R$drawable;->abc_textfield_search_material:I

    aput v1, v0, v5

    sput-object v0, Landroidx/appcompat/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    new-array v0, v6, [I

    .line 174
    sget v1, Landroidx/appcompat/R$drawable;->abc_btn_check_material:I

    aput v1, v0, v4

    sget v1, Landroidx/appcompat/R$drawable;->abc_btn_radio_material:I

    aput v1, v0, v5

    sput-object v0, Landroidx/appcompat/widget/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    return-void
.end method

.method private addDelegate(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatDrawableManager$InflateDelegate;)V
    .locals 6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "addDelegate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDelegates:Landroidx/collection/ArrayMap;

    if-nez v5, :cond_0

    new-instance v5, Landroidx/collection/ArrayMap;

    invoke-direct {v5}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v5, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDelegates:Landroidx/collection/ArrayMap;

    :cond_0
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDelegates:Landroidx/collection/ArrayMap;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/collection/SimpleArrayMap;"

    const-string v1, "put"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/SimpleArrayMap;"

    const-string v1, "put"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "addDelegate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .locals 2

    monitor-enter p0

    .line 415
    :try_start_0
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 417
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/LongSparseArray;

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 420
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 423
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 425
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .locals 7

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    aput-object p3, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "addTintListToCache"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/WeakHashMap;

    invoke-direct {v5}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v5, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    :cond_0
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/util/WeakHashMap;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/WeakHashMap;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v5, Landroidx/collection/SparseArrayCompat;

    if-nez v5, :cond_1

    new-instance v5, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v5}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iget-object v6, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/WeakHashMap;"

    const-string v1, "put"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, p1, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/WeakHashMap;"

    const-string v1, "put"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v5, p2, p3}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "addTintListToCache"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static arrayContains([II)Z
    .locals 9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "arrayContains"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    array-length v5, p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_1

    aget v8, p0, v7

    if-ne v8, p1, :cond_0

    const/4 p0, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "arrayContains"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "arrayContains"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6
.end method

.method private checkVectorDrawableSetup(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "checkVectorDrawableSetup"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v5, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    if-eqz v5, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "checkVectorDrawableSetup"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    sget v5, Landroidx/appcompat/R$drawable;->abc_vector_test:I

    invoke-virtual {p0, p1, v5}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroidx/appcompat/widget/AppCompatDrawableManager;->isVectorDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "checkVectorDrawableSetup"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v5, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {p1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "checkVectorDrawableSetup"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private createBorderlessButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "createBorderlessButtonColorStateList"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Landroidx/appcompat/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "createBorderlessButtonColorStateList"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method private createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 10

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "createButtonColorStateList"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x4

    new-array v6, v5, [[I

    new-array v5, v5, [I

    sget v7, Landroidx/appcompat/R$attr;->colorControlHighlight:I

    invoke-static {p1, v7}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    sget v8, Landroidx/appcompat/R$attr;->colorButtonNormal:I

    invoke-static {p1, v8}, Landroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result p1

    sget-object v8, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    const/4 v9, 0x0

    aput-object v8, v6, v9

    aput p1, v5, v9

    sget-object p1, Landroidx/appcompat/widget/ThemeUtils;->PRESSED_STATE_SET:[I

    const/4 v8, 0x1

    aput-object p1, v6, v8

    invoke-static {v7, p2}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p1

    aput p1, v5, v8

    sget-object p1, Landroidx/appcompat/widget/ThemeUtils;->FOCUSED_STATE_SET:[I

    const/4 v8, 0x2

    aput-object p1, v6, v8

    invoke-static {v7, p2}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p1

    aput p1, v5, v8

    sget-object p1, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    const/4 v7, 0x3

    aput-object p1, v6, v7

    aput p2, v5, v7

    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v6, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "createButtonColorStateList"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method private static createCacheKey(Landroid/util/TypedValue;)J
    .locals 9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "createCacheKey"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v5, v5

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    iget p0, p0, Landroid/util/TypedValue;->data:I

    int-to-long v7, p0

    or-long/2addr v5, v7

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "createCacheKey"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v5
.end method

.method private createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "createColoredButtonColorStateList"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v5, Landroidx/appcompat/R$attr;->colorAccent:I

    invoke-static {p1, v5}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {p0, p1, v5}, Landroidx/appcompat/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "createColoredButtonColorStateList"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method private createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "createDefaultButtonColorStateList"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v5, Landroidx/appcompat/R$attr;->colorButtonNormal:I

    invoke-static {p1, v5}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {p0, p1, v5}, Landroidx/appcompat/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "createDefaultButtonColorStateList"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method private createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 12

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "createDrawableIfNeeded"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    if-nez v5, :cond_0

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    iput-object v5, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    :cond_0
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "getResources"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "getResources"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, 0x1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object v5, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v7 .. v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/content/res/Resources;"

    const-string v1, "getValue"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, p2, v5, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/content/res/Resources;"

    const-string v1, "getValue"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5}, Landroidx/appcompat/widget/AppCompatDrawableManager;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v8

    invoke-direct {p0, p1, v8, v9}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "createDrawableIfNeeded"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6

    :cond_1
    sget v10, Landroidx/appcompat/R$drawable;->abc_cab_background_top_material:I

    if-ne p2, v10, :cond_2

    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    sget v11, Landroidx/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    invoke-virtual {p0, p1, v11}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, p2, v10

    sget v10, Landroidx/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    invoke-virtual {p0, p1, v10}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, p2, v7

    invoke-direct {v6, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz v6, :cond_3

    iget p2, v5, Landroid/util/TypedValue;->changingConfigurations:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "setChangingConfigurations"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, p2}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "setChangingConfigurations"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, v8, v9, v6}, Landroidx/appcompat/widget/AppCompatDrawableManager;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    :cond_3
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "createDrawableIfNeeded"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6
.end method

.method private createSwitchThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 12

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "createSwitchThumbColorStateList"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x3

    new-array v6, v5, [[I

    new-array v5, v5, [I

    sget v7, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v7}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v7, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/content/res/ColorStateList;"

    const-string v1, "isStateful"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v11 .. v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/content/res/ColorStateList;"

    const-string v1, "isStateful"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v11, :cond_0

    sget-object v11, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v11, v6, v10

    aget-object v11, v6, v10

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    aput-object v11, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/content/res/ColorStateList;"

    const-string v1, "getColorForState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7, v11, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v11 .. v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/content/res/ColorStateList;"

    const-string v1, "getColorForState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    aput v11, v5, v10

    sget-object v10, Landroidx/appcompat/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v10, v6, v9

    sget v10, Landroidx/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v10}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p1

    aput p1, v5, v9

    sget-object p1, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object p1, v6, v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/content/res/ColorStateList;"

    const-string v1, "getDefaultColor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/content/res/ColorStateList;"

    const-string v1, "getDefaultColor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    aput p1, v5, v8

    goto/16 :goto_0

    :cond_0
    sget-object v7, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v7, v6, v10

    sget v7, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v7}, Landroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v10

    sget-object v7, Landroidx/appcompat/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v7, v6, v9

    sget v7, Landroidx/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v7}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v9

    sget-object v7, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v7, v6, v8

    sget v7, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v7}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p1

    aput p1, v5, v8

    :goto_0
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v6, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "createSwitchThumbColorStateList"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method private static createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .locals 6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "createTintFilter"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/content/res/ColorStateList;"

    const-string v1, "getColorForState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/content/res/ColorStateList;"

    const-string v1, "getColorForState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "createTintFilter"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "createTintFilter"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static declared-synchronized get()Landroidx/appcompat/widget/AppCompatDrawableManager;
    .locals 2

    const-class v0, Landroidx/appcompat/widget/AppCompatDrawableManager;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->INSTANCE:Landroidx/appcompat/widget/AppCompatDrawableManager;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Landroidx/appcompat/widget/AppCompatDrawableManager;

    invoke-direct {v1}, Landroidx/appcompat/widget/AppCompatDrawableManager;-><init>()V

    sput-object v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->INSTANCE:Landroidx/appcompat/widget/AppCompatDrawableManager;

    .line 91
    sget-object v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->INSTANCE:Landroidx/appcompat/widget/AppCompatDrawableManager;

    invoke-static {v1}, Landroidx/appcompat/widget/AppCompatDrawableManager;->installDefaultInflateDelegates(Landroidx/appcompat/widget/AppCompatDrawableManager;)V

    .line 93
    :cond_0
    sget-object v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->INSTANCE:Landroidx/appcompat/widget/AppCompatDrawableManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 3

    monitor-enter p0

    .line 394
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/LongSparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 396
    monitor-exit p0

    return-object v1

    .line 399
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    .line 402
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_1

    .line 404
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 407
    :cond_1
    :try_start_2
    invoke-virtual {v0, p2, p3}, Landroidx/collection/LongSparseArray;->delete(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 410
    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3

    const-class v0, Landroidx/appcompat/widget/AppCompatDrawableManager;

    monitor-enter v0

    .line 727
    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;

    invoke-virtual {v1, p0, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 731
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 732
    sget-object v2, Landroidx/appcompat/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;

    invoke-virtual {v2, p0, p1, v1}, Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 7

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "getTintListFromCache"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/util/WeakHashMap;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/util/WeakHashMap;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Landroidx/collection/SparseArrayCompat;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/content/res/ColorStateList;

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "getTintListFromCache"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6
.end method

.method static getTintMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "getTintMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v5, Landroidx/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne p0, v5, :cond_0

    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "getTintMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method private static installDefaultInflateDelegates(Landroidx/appcompat/widget/AppCompatDrawableManager;)V
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "installDefaultInflateDelegates"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-ge v5, v6, :cond_0

    new-instance v5, Landroidx/appcompat/widget/AppCompatDrawableManager$VdcInflateDelegate;

    invoke-direct {v5}, Landroidx/appcompat/widget/AppCompatDrawableManager$VdcInflateDelegate;-><init>()V

    const-string v6, "vector"

    invoke-direct {p0, v6, v5}, Landroidx/appcompat/widget/AppCompatDrawableManager;->addDelegate(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatDrawableManager$InflateDelegate;)V

    new-instance v5, Landroidx/appcompat/widget/AppCompatDrawableManager$AvdcInflateDelegate;

    invoke-direct {v5}, Landroidx/appcompat/widget/AppCompatDrawableManager$AvdcInflateDelegate;-><init>()V

    const-string v6, "animated-vector"

    invoke-direct {p0, v6, v5}, Landroidx/appcompat/widget/AppCompatDrawableManager;->addDelegate(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatDrawableManager$InflateDelegate;)V

    new-instance v5, Landroidx/appcompat/widget/AppCompatDrawableManager$AsldcInflateDelegate;

    invoke-direct {v5}, Landroidx/appcompat/widget/AppCompatDrawableManager$AsldcInflateDelegate;-><init>()V

    const-string v6, "animated-selector"

    invoke-direct {p0, v6, v5}, Landroidx/appcompat/widget/AppCompatDrawableManager;->addDelegate(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatDrawableManager$InflateDelegate;)V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "installDefaultInflateDelegates"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static isVectorDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "isVectorDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v5, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-nez v5, :cond_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "getClass"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "getClass"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/lang/Class;"

    const-string v1, "getName"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/lang/Class;"

    const-string v1, "getName"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "android.graphics.drawable.VectorDrawable"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 p0, 0x0

    goto/16 :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "isVectorDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method private loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 15

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "loadDrawableFromDelegates"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDelegates:Landroidx/collection/ArrayMap;

    const/4 v6, 0x0

    if-eqz v5, :cond_a

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroidx/collection/SimpleArrayMap;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/collection/SimpleArrayMap;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v5, :cond_a

    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    const-string v7, "appcompat_skip_skip"

    if-eqz v5, :cond_1

    move-object/from16 v0, v5

    move/from16 v1, p2

    invoke-virtual/range {v0 .. v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v8 .. v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v8, :cond_0

    if-eqz v5, :cond_2

    iget-object v8, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDelegates:Landroidx/collection/ArrayMap;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Landroidx/collection/SimpleArrayMap;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v5}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroidx/collection/SimpleArrayMap;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v5, :cond_2

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "loadDrawableFromDelegates"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6

    :cond_1
    new-instance v5, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v5}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v5, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    :cond_2
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    if-nez v5, :cond_3

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    iput-object v5, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    :cond_3
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "getResources"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "getResources"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v8, 0x1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object v5, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v8 .. v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/content/res/Resources;"

    const-string v1, "getValue"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v6

    move/from16 v1, p2

    move-object/from16 v2, v5

    move/from16 v3, v8

    invoke-virtual/range {v0 .. v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/content/res/Resources;"

    const-string v1, "getValue"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5}, Landroidx/appcompat/widget/AppCompatDrawableManager;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v9

    invoke-direct/range {v0 .. v3}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_4

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "loadDrawableFromDelegates"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v11

    :cond_4
    iget-object v12, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v12, :cond_8

    iget-object v12, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v12, v2, v1

    const-string v0, "Ljava/lang/CharSequence;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v12, v2, v1

    const-string v0, "Ljava/lang/CharSequence;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v13, ".xml"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v12, v2, v1

    const/4 v1, 0x5

    aput-object v13, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "endsWith"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v12 .. v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "endsWith"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v12, :cond_8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/content/res/Resources;"

    const-string v1, "getXml"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    move-object/from16 v0, v6

    move/from16 v1, p2

    invoke-virtual/range {v0 .. v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroid/content/res/Resources;"

    const-string v1, "getXml"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroid/util/Xml;"

    const-string v1, "asAttributeSet"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v12, v2, v1

    const-string v0, "Landroid/util/Xml;"

    const-string v1, "asAttributeSet"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Lorg/xmlpull/v1/XmlPullParser;"

    const-string v1, "next"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Lorg/xmlpull/v1/XmlPullParser;"

    const-string v1, "next"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_3
    const/4 v14, 0x2

    if-eq v13, v14, :cond_5

    if-eq v13, v8, :cond_5

    goto/16 :goto_0

    :cond_5
    if-ne v13, v14, :cond_7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Lorg/xmlpull/v1/XmlPullParser;"

    const-string v1, "getName"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_4
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Lorg/xmlpull/v1/XmlPullParser;"

    const-string v1, "getName"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_5
    iget-object v13, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    move-object/from16 v0, v13

    move/from16 v1, p2

    move-object/from16 v2, v8

    invoke-virtual/range {v0 .. v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    iget-object v13, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDelegates:Landroidx/collection/ArrayMap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v13, v2, v1

    const/4 v1, 0x5

    aput-object v8, v2, v1

    const-string v0, "Landroidx/collection/SimpleArrayMap;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_6
    invoke-virtual {v13, v8}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Landroidx/collection/SimpleArrayMap;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_7
    check-cast v8, Landroidx/appcompat/widget/AppCompatDrawableManager$InflateDelegate;

    if-eqz v8, :cond_6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "getTheme"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_8
    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v13, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "getTheme"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object v6, v2, v1

    const/4 v1, 0x7

    aput-object v12, v2, v1

    const/16 v1, 0x8

    aput-object v13, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "createFromXmlInner"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_9
    move-object/from16 v0, v8

    move-object/from16 v1, p1

    move-object/from16 v2, v6

    move-object/from16 v3, v12

    move-object/from16 v4, v13

    invoke-interface/range {v0 .. v4}, Landroidx/appcompat/widget/AppCompatDrawableManager$InflateDelegate;->createFromXmlInner(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "createFromXmlInner"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_a
    move-object v11, v6

    :cond_6
    if-eqz v11, :cond_8

    iget v5, v5, Landroid/util/TypedValue;->changingConfigurations:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "setChangingConfigurations"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_b
    invoke-virtual {v11, v5}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "setChangingConfigurations"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v9

    move-object/from16 v4, v11

    invoke-direct/range {v0 .. v4}, Landroidx/appcompat/widget/AppCompatDrawableManager;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    :try_start_c
    goto/16 :goto_1

    :cond_7
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "No start tag found"

    move-object/from16 v0, p1

    move-object/from16 v1, v5

    invoke-direct/range {v0 .. v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "loadDrawableFromDelegates"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :catch_0
    move-exception p1

    const-string v5, "AppCompatDrawableManag"

    const-string v6, "Exception while inflating drawable"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const/4 v1, 0x6

    aput-object p1, v2, v1

    const-string v0, "Landroid/util/Log;"

    const-string v1, "e"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v5

    move-object/from16 v1, v6

    move-object/from16 v2, p1

    invoke-static/range {v0 .. v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/util/Log;"

    const-string v1, "e"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_1
    if-nez v11, :cond_9

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    move-object/from16 p1, v2

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v7

    invoke-virtual/range {v0 .. v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    :cond_9
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "loadDrawableFromDelegates"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v11

    :cond_a
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "loadDrawableFromDelegates"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6
.end method

.method private removeDelegate(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatDrawableManager$InflateDelegate;)V
    .locals 6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "removeDelegate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDelegates:Landroidx/collection/ArrayMap;

    if-eqz v5, :cond_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/collection/SimpleArrayMap;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroidx/collection/SimpleArrayMap;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne v5, p2, :cond_0

    iget-object p2, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDelegates:Landroidx/collection/ArrayMap;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/collection/SimpleArrayMap;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/SimpleArrayMap;"

    const-string v1, "remove"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "removeDelegate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "setPorterDuffColorFilter"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "mutate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "mutate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    :cond_1
    invoke-static {p1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "setColorFilter"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "setColorFilter"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "setPorterDuffColorFilter"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    aput-object p4, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "tintDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {p4}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p4, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "mutate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p4, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "mutate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {p4}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-static {p4, v5}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-static {p2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getTintMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {p4, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_1

    :cond_1
    sget v5, Landroidx/appcompat/R$drawable;->abc_seekbar_track_material:I

    const v6, 0x102000d

    const v7, 0x102000f

    const/high16 v8, 0x1020000

    if-ne p2, v5, :cond_2

    move-object p2, p4

    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/drawable/LayerDrawable;"

    const-string v1, "findDrawableByLayerId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p3, v2, v1

    const-string v0, "Landroid/graphics/drawable/LayerDrawable;"

    const-string v1, "findDrawableByLayerId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v5, Landroidx/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v5}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    sget-object v8, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p3, v5, v8}, Landroidx/appcompat/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/drawable/LayerDrawable;"

    const-string v1, "findDrawableByLayerId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p3, v2, v1

    const-string v0, "Landroid/graphics/drawable/LayerDrawable;"

    const-string v1, "findDrawableByLayerId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v5, Landroidx/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v5}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    sget-object v7, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p3, v5, v7}, Landroidx/appcompat/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/drawable/LayerDrawable;"

    const-string v1, "findDrawableByLayerId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/graphics/drawable/LayerDrawable;"

    const-string v1, "findDrawableByLayerId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget p3, Landroidx/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, p3}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p1

    sget-object p3, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p2, p1, p3}, Landroidx/appcompat/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_1

    :cond_2
    sget v5, Landroidx/appcompat/R$drawable;->abc_ratingbar_material:I

    if-eq p2, v5, :cond_4

    sget v5, Landroidx/appcompat/R$drawable;->abc_ratingbar_indicator_material:I

    if-eq p2, v5, :cond_4

    sget v5, Landroidx/appcompat/R$drawable;->abc_ratingbar_small_material:I

    if-ne p2, v5, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-static {p1, p2, p4}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz p3, :cond_5

    const/4 p4, 0x0

    goto/16 :goto_1

    :cond_4
    :goto_0
    move-object p2, p4

    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/drawable/LayerDrawable;"

    const-string v1, "findDrawableByLayerId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p3, v2, v1

    const-string v0, "Landroid/graphics/drawable/LayerDrawable;"

    const-string v1, "findDrawableByLayerId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v5, Landroidx/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v5}, Landroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    sget-object v8, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p3, v5, v8}, Landroidx/appcompat/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/drawable/LayerDrawable;"

    const-string v1, "findDrawableByLayerId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p3, v2, v1

    const-string v0, "Landroid/graphics/drawable/LayerDrawable;"

    const-string v1, "findDrawableByLayerId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v5, Landroidx/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v5}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    sget-object v7, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p3, v5, v7}, Landroidx/appcompat/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/drawable/LayerDrawable;"

    const-string v1, "findDrawableByLayerId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/graphics/drawable/LayerDrawable;"

    const-string v1, "findDrawableByLayerId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget p3, Landroidx/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, p3}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p1

    sget-object p3, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p2, p1, p3}, Landroidx/appcompat/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    :cond_5
    :goto_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "tintDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p4
.end method

.method static tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V
    .locals 7

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "tintDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "mutate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "mutate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v5, p0, :cond_0

    const-string p0, "AppCompatDrawableManag"

    const-string p1, "Mutated drawable is not the same instance as the input."

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroid/util/Log;"

    const-string v1, "d"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/util/Log;"

    const-string v1, "d"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "tintDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v5, p1, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    if-nez v5, :cond_2

    iget-boolean v5, p1, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    if-eqz v5, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "clearColorFilter"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "clearColorFilter"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    :goto_0
    iget-boolean v5, p1, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    if-eqz v5, :cond_3

    iget-object v5, p1, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    goto/16 :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    iget-boolean v6, p1, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    if-eqz v6, :cond_4

    iget-object p1, p1, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    goto/16 :goto_2

    :cond_4
    sget-object p1, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    invoke-static {v5, p1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "setColorFilter"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "setColorFilter"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-gt p1, p2, :cond_5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "invalidateSelf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "invalidateSelf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "tintDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 11

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "tintDrawableUsingColorFilter"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    sget-object v6, Landroidx/appcompat/widget/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    invoke-static {v6, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v6

    const v7, 0x1010031

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v6, :cond_0

    sget v7, Landroidx/appcompat/R$attr;->colorControlNormal:I

    :goto_0
    const/4 p1, 0x1

    const/4 v6, -0x1

    goto/16 :goto_1

    :cond_0
    sget-object v6, Landroidx/appcompat/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    invoke-static {v6, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v6

    if-eqz v6, :cond_1

    sget v7, Landroidx/appcompat/R$attr;->colorControlActivated:I

    goto/16 :goto_0

    :cond_1
    sget-object v6, Landroidx/appcompat/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    invoke-static {v6, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto/16 :goto_0

    :cond_2
    sget v6, Landroidx/appcompat/R$drawable;->abc_list_divider_mtrl_alpha:I

    if-ne p1, v6, :cond_3

    const v7, 0x1010030

    const p1, 0x42233333    # 40.8f

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "round"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "round"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, p1

    const/4 p1, 0x1

    goto/16 :goto_1

    :cond_3
    sget v6, Landroidx/appcompat/R$drawable;->abc_dialog_material_background:I

    if-ne p1, v6, :cond_4

    goto/16 :goto_0

    :cond_4
    const/4 p1, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    :goto_1
    if-eqz p1, :cond_7

    invoke-static {p2}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "mutate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "mutate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    invoke-static {p0, v7}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0, v5}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    aput-object p0, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "setColorFilter"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "setColorFilter"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v6, v8, :cond_6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "setAlpha"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/drawable/Drawable;"

    const-string v1, "setAlpha"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "tintDrawableUsingColorFilter"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v10

    :cond_7
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatDrawableManager;"

    const-string v1, "tintDrawableUsingColorFilter"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v9
.end method


# virtual methods
.method public declared-synchronized getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 191
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    .line 196
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager;->checkVectorDrawableSetup(Landroid/content/Context;)V

    .line 198
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 200
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 203
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 208
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 212
    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2

    monitor-enter p0

    .line 522
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_c

    .line 526
    sget v1, Landroidx/appcompat/R$drawable;->abc_edit_text_material:I

    if-ne p2, v1, :cond_0

    .line 527
    sget v0, Landroidx/appcompat/R$color;->abc_tint_edittext:I

    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto/16 :goto_1

    .line 528
    :cond_0
    sget v1, Landroidx/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I

    if-ne p2, v1, :cond_1

    .line 529
    sget v0, Landroidx/appcompat/R$color;->abc_tint_switch_track:I

    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto/16 :goto_1

    .line 530
    :cond_1
    sget v1, Landroidx/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne p2, v1, :cond_2

    .line 531
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager;->createSwitchThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto/16 :goto_1

    .line 532
    :cond_2
    sget v1, Landroidx/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I

    if-ne p2, v1, :cond_3

    .line 533
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager;->createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 534
    goto/16 :goto_1

    :cond_3
    sget v1, Landroidx/appcompat/R$drawable;->abc_btn_borderless_material:I

    .line 535
    if-ne p2, v1, :cond_4

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager;->createBorderlessButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 536
    move-result-object v0

    goto/16 :goto_1

    :cond_4
    sget v1, Landroidx/appcompat/R$drawable;->abc_btn_colored_material:I

    .line 537
    if-ne p2, v1, :cond_5

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager;->createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 538
    move-result-object v0

    goto/16 :goto_1

    :cond_5
    sget v1, Landroidx/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I

    if-eq p2, v1, :cond_a

    sget v1, Landroidx/appcompat/R$drawable;->abc_spinner_textfield_background_material:I

    .line 541
    if-ne p2, v1, :cond_6

    goto/16 :goto_0

    :cond_6
    sget-object v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    invoke-static {v1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->arrayContains([II)Z

    .line 542
    move-result v1

    if-eqz v1, :cond_7

    sget v0, Landroidx/appcompat/R$attr;->colorControlNormal:I

    .line 543
    invoke-static {p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    sget-object v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    .line 544
    invoke-static {v1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_8

    sget v0, Landroidx/appcompat/R$color;->abc_tint_default:I

    .line 545
    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    sget-object v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    .line 546
    invoke-static {v1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 547
    sget v0, Landroidx/appcompat/R$color;->abc_tint_btn_checkable:I

    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 548
    move-result-object v0

    goto/16 :goto_1

    :cond_9
    sget v1, Landroidx/appcompat/R$drawable;->abc_seekbar_thumb_material:I

    if-ne p2, v1, :cond_b

    .line 540
    sget v0, Landroidx/appcompat/R$color;->abc_tint_seek_thumb:I

    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto/16 :goto_1

    .line 552
    :cond_a
    :goto_0
    sget v0, Landroidx/appcompat/R$color;->abc_tint_spinner:I

    .line 555
    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :cond_b
    :goto_1
    if-eqz v0, :cond_c

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onConfigurationChanged(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 218
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/collection/LongSparseArray;

    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onDrawableLoadedFromResources(Landroid/content/Context;Landroidx/appcompat/widget/VectorEnabledTintResources;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    .line 430
    :try_start_0
    invoke-direct {p0, p1, p3}, Landroidx/appcompat/widget/AppCompatDrawableManager;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 432
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/VectorEnabledTintResources;->superGetDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p2, 0x0

    .line 435
    invoke-direct {p0, p1, p3, p2, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 437
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
