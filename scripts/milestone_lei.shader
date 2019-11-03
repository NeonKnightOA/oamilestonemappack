// Leilei's shaders for the milestone pack maps




textures/milestone_lei/lavarock2bl
{
	q3map_nonplanar
	q3map_shadeAngle 90
	q3map_editorImage textures/milestone_lei/lavarock21.png
	q3map_forcemeta
	q3map_alphaMod dotproduct ( 1 0 0 )
//	q3map_normalImage textures/milestone_lei/lavarock21.png
//	q3map_lightmapSampleSize 32
	{
		map textures/milestone_lei/lavarock21.png
		rgbGen identity
	}
	{
		map textures/milestone_lei/lavarock22.png
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map gfx/fx/detail/d_rock.tga
		blendfunc gl_dst_color gl_src_color
		rgbGen identity
		//tcGen lightmap
		tcMod scale 16 16
		
		detail
	}
}

textures/milestone_lei/lavarock21
{
	q3map_nonplanar
	q3map_shadeAngle 90
	q3map_editorImage textures/milestone_lei/lavarock21.png
	q3map_forcemeta
//	q3map_normalImage textures/milestone_lei/lavarock21.png
//	q3map_lightmapSampleSize 32
	{
		map textures/milestone_lei/lavarock21.png
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map gfx/fx/detail/d_rock.tga
		blendfunc gl_dst_color gl_src_color
		rgbGen identity
		//tcGen lightmap
		tcMod scale 16 16
		
		detail
	}
}










textures/milestone_lei/lavarock22
{
	q3map_nonplanar
	q3map_shadeAngle 90
	q3map_editorImage textures/milestone_lei/lavarock22.png
	q3map_forcemeta
//	q3map_alphaMod dotproduct ( 1 0 0 )
//	q3map_normalImage textures/milestone_lei/lavarock22.png
//	q3map_lightmapSampleSize 32
	{
		map textures/milestone_lei/lavarock22.png
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map gfx/fx/detail/d_rock.tga
		blendfunc gl_dst_color gl_src_color
		rgbGen identity
		//tcGen lightmap
		tcMod scale 16 16
		
		detail
	}
}




textures/milestone_lei/lava1
{
	surfaceparm lava

	surfaceparm nomarks
	surfaceparm nolightmap
//	cull disable
	q3map_lightimage textures/milestone_lei/lava1.tga
	q3map_surfacelight 333
 	q3map_tcGen ivector ( 128 0 0 ) ( 0 128 0 )
	{
		map textures/milestone_lei/lava1.tga
		//blendfunc blend
		rgbGen identityLight
		tcMod turb 0 0.02 0 0.25
		tcMod turb 1 -0.1 0 0.12
	}
	{
		map textures/milestone_lei/lava1.tga
		blendfunc blend
		//blendfunc gl_dst_color gl_one
		rgbGen identityLight
		tcMod scale -1 -1
		tcMod turb 0 0.02 0 0.25
		tcMod turb 1 -0.1 0 0.12
		alphaGen wave square 0.3 0 0 1 
	//	detail
	}

}



textures/milestone_lei/lava1under
{
	surfaceparm nomarks
	surfaceparm nolightmap
//	cull disable
	q3map_lightimage textures/milestone_lei/lava1.tga
//	q3map_surfacelight 333
 	q3map_tcGen ivector ( 128 0 0 ) ( 0 128 0 )
	q3map_fur 1 -1 1

	{
		map textures/milestone_lei/lava1.tga
		rgbGen identityLight
		tcGen vector ( 0.1 0 0 ), ( 0 0.1 0 )
		tcMod scroll 0.4 0.2
		tcMod turb 0 0.5 0 0.25
	}
}



textures/milestone_lei/lava1flowe
{
	surfaceparm lava
	surfaceparm nomarks
	surfaceparm nolightmap
//	cull disable
	q3map_lightimage textures/milestone_lei/lava1.tga
	q3map_surfacelight 333
 	q3map_tcGen ivector ( 128 0 0 ) ( 0 128 0 )
	{
		map textures/milestone_lei/lava1.tga
		rgbGen identityLight
	//	tcMod turb 0 0.02 0 0.25
		//tcMod turb 1 -0.1 0 0.12
		tcMod scroll -0.225 0
	}
	{
		map $whiteimage
		rgbGen vertex
		rgbGen const ( 0.6 0.0 0.0 )
		blendFunc blend
	//	tcMod turb 0 0.02 0 0.25
		//tcMod turb 1 -0.1 0 0.12
	}
}


textures/milestone_lei/lavarock2blLava
{
	q3map_nonplanar
	q3map_shadeAngle 90
	q3map_editorImage textures/milestone_lei/lavarock21.png
	q3map_forcemeta
//	q3map_alphaMod volume
	q3map_cloneshader textures/milestone_lei/lava1under

	{
		map textures/milestone_lei/lavarock21.png
		alphaFunc GE128
		rgbGen vertex
		rgbGen identity
		depthWrite
	}

	{
		map $lightmap
		blendFunc filter
		depthFunc equal
	}
	{
		map gfx/fx/detail/d_rock.tga
		blendfunc gl_dst_color gl_src_color
		rgbGen identity
		tcMod scale 16 16
		depthFunc equal
		detail
	}

}









textures/milestone_lei/fog_cave1
{
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm fog
	surfaceparm nolightmap
	fogparms ( 1.0 0.3 0.1 ) 3048
	q3map_editorImage textures/common/fog
}










// Water

// Additive, shallow water
textures/milestone_lei/water1
{
	surfaceparm water
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nolightmap
	//cull disable
	{
		map textures/milestone_lei/water1.tga
		blendfunc add
		rgbGen vertex
		tcMod turb 0 0.03 0 1.15
		tcMod turb 1 -0.01 0 1.12
	}
	{
		map textures/milestone_lei/water1.tga
		blendfunc add
		rgbGen vertex
		tcMod scale -0.5 -0.5
		tcMod turb 0 0.03 0.11 1.2
		tcMod turb 1 -0.01 0.11 1.5
	}
}


// Something slightly deeper, expects alphamod use
textures/milestone_lei/water2
{
	surfaceparm water
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nolightmap
	//cull disable
	{
		map textures/milestone_lei/water2.tga
		blendfunc blend
		rgbGen vertex	     // Take alpha
		rgbGen identityLight // Clear RGB
		tcMod turb 0 0.3 0 1.25
		tcMod turb 1 -0.1 0 0.12
	}
}

textures/milestone_lei/water2fall
{
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nolightmap
	cull disable
	q3map_editorImage textures/milestone_lei/editor/watdown.png
	{
		map textures/milestone_lei/water1.tga
		blendfunc GL_SRC_ALPHA GL_ONE
	//	blendFunc blend
		rgbGen vertex		// Take alpha
		rgbGen identity // Clear RGB
		tcGen vector ( 0 0.001 0 ), ( 0 0 -0.001 )
		tcMod scroll 0.01 -0.2
	}
	{
		map textures/milestone_lei/water1.tga
		blendfunc GL_SRC_ALPHA GL_ONE
	//	blendFunc blend
		rgbGen vertex		// Take alpha
		rgbGen identity // Clear RGB
		tcGen vector ( 0 0.006 0 ), ( 0 0 -0.006 )
		tcMod scroll -0.01 -1
	}
}






textures/milestone_lei/tcompscreen
{
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm nolightmap
	cull disable
	{
		map textures/milestone_lei/tcompscreen.png
		blendfunc add
		rgbGen vertex
		tcMod scroll 0 0.2
	}

}

textures/milestone_lei/haveahexual
{
	surfaceparm trans
	surfaceparm lightfilter
	surfaceparm metalsteps
	cull disable
	{
		map textures/milestone_lei/haveahexual.tga
		//blendfunc blend
		rgbGen identity
		alphaFunc GE128
		depthwrite
	}
	{
		map gfx/fx/detail/d_met.tga
		blendfunc gl_dst_color gl_src_color
		rgbGen identity
		//tcGen lightmap
		tcMod scale 4 2
		depthFunc equal
		detail
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
		depthFunc equal
	}

}


textures/milestone_lei/bluescan
{
	surfaceparm nomarks
	surfaceparm trans
 	surfaceparm nolightmap
	q3map_lightimage textures/milestone_lei/bluescan.png
	q3map_surfacelight 77
	q3map_backSplash 1 8
	//cull disable
	{
		map textures/milestone_lei/bluescan.png
		blendfunc add
		rgbGen identityLighting
		tcMod scroll 0 0.2
	}

}

textures/milestone_lei/flares/bigone
{
	{
		map textures/milestone_lei/flares/bigone
		rgbGen vertex
		blendFunc add
	}
}


textures/milestone_lei/tliteorg
{
	surfaceparm nomarks
	q3map_lightimage textures/milestone_lei/tliteorg-lite.png
	q3map_surfacelight 5000
	q3map_backSplash 1 8
	q3map_flareshader textures/milestone_lei/flares/bigone.tga
	{
		map textures/milestone_lei/tliteorg.png
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map textures/milestone_lei/tliteorg-lite.png
		rgbGen identityLight
		blendFunc add
	}

}

textures/milestone_lei/tstairs2
{
	q3map_lightimage textures/milestone_lei/tstairs2_lite.png
	q3map_surfacelight 200
	{
		map textures/milestone_lei/tstairs2.png
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map textures/milestone_lei/tstairs2_lite.png
		rgbGen identityLight
		blendFunc add
	}
	{
		map gfx/fx/detail/d_met.tga
		blendfunc gl_dst_color gl_src_color
		rgbGen identity
		//tcGen lightmap
		tcMod scale 8 2
		
		detail
	}
}


textures/milestone_lei/tstairs3
{
	{
		map textures/milestone_lei/tstairs3.png
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map gfx/fx/detail/d_met.tga
		blendfunc gl_dst_color gl_src_color
		rgbGen identity
		//tcGen lightmap
		tcMod scale 8 2
		
		detail
	}
}



textures/milestone_lei/tliteorgtall
{
	q3map_lightimage textures/milestone_lei/tliteorgtall_lite.png
	q3map_surfacelight 1000
	q3map_backSplash 1 16
	q3map_flareshader textures/milestone_lei/flares/bigone.tga
	{
		map textures/milestone_lei/tliteorgtall.png
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}

	{
		map textures/milestone_lei/tliteorgtall_lite.png
		rgbGen identityLight
		blendFunc add
	}

}

textures/milestone_lei/flareonly-org
{
	surfaceparm nonsolid
	surfaceparm nomarks
	surfaceparm trans
 	surfaceparm nolightmap
	q3map_lightimage textures/milestone_lei/tliteorg-lite.png
	q3map_surfacelight 0
	q3map_flareshader textures/milestone_lei/flares/bigone.tga

	{
		map $whiteimage
		blendFunc GL_ZERO GL_ONE
		rgbGen identity
	}
}

textures/milestone_lei/flareandabeam-org
{
	surfaceparm nonsolid
	surfaceparm nomarks
	surfaceparm trans
 	surfaceparm nolightmap
	q3map_lightimage textures/milestone_lei/tliteorg-lite.png
	q3map_surfacelight 0
	deformVertexes autosprite2
	{
		map textures/milestone_lei/flareandabeam-org
		blendFunc add
		rgbGen vertex
	}
}


textures/milestone_lei/energyblue
{
	surfaceparm nonsolid
	q3map_lightimage textures/milestone_lei/energyblue
	surfaceparm nomarks
	//surfaceparm water
	surfaceparm trans
	surfaceparm nolightmap
	cull disable
	q3map_nonplanar
	q3map_shadeAngle 172
	q3map_forcemeta
	deformVertexes normal 0.05 0.4
	deformVertexes normal 0.253 0.22
	deformVertexes normal 0.51 0.11
	q3map_alphaMod set 1
	polygonoffset
	//sort 4
	{
		map textures/milestone_lei/energyblue.tga
		rgbGen vertex
		
		blendfunc GL_SRC_ALPHA GL_ONE
	//	alphaFunc GE128
		//tcGen environment
		tcMod scale 0.4 0.4
		tcMod scroll 0.04 0.5
		//depthWrite
	}
	{
		map textures/milestone_lei/energyblue.tga
		rgbGen vertex
		
		blendfunc add
		alphaFunc GE128
		//tcGen environment
		tcMod scale -0.3 -0.3
		tcMod scroll 0.04 -0.5
		//depthWrite
	}
	{
		map textures/milestone_lei/energyblue.tga
		rgbGen vertex
		
		blendfunc add
		tcGen environment
		tcMod scale 0.2 0.2
		tcMod scroll 0.00 0.2	
		depthFunc equal
	}
}


// NOT VISIBLE so we can separate visual from contents to avoid weird artifacts
textures/milestone_lei/energybluewater
{
	q3map_lightimage textures/milestone_lei/energyblue
	surfaceparm nomarks
	surfaceparm water
	surfaceparm trans
	surfaceparm nolightmap
	surfaceparm nodraw
}


textures/milestone_lei/energyscroll
{
	q3map_lightimage textures/milestone_lei/energygrad-blue
	q3map_editorimage textures/milestone_lei/energygrad-blue
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm trans
	cull disable
	q3map_nonplanar
	q3map_shadeAngle 172
	q3map_forcemeta
	q3map_surfacelight 300 // was 1000, washed out the map!!!
	q3map_backSplash 1 8
	sort 13
	{
		map textures/milestone_lei/energygrad-blue.tga
		rgbGen identityLight
		blendfunc add
		tcMod scroll -0.5 0
	}
	{
		map textures/milestone_lei/energystuff.tga
		rgbGen identityLight
		blendfunc add
		alphaFunc GE128
		tcMod scale 8 8
		tcMod scroll -0.5 0.5
		depthWrite
		detail
	}

	// 'stuff' is rendered in this layer
	{
		map textures/milestone_lei/energygrad-blue.tga
		rgbGen identityLight
		blendfunc add
		tcMod scroll -0.5 0
		depthfunc equal
		detail
	}
}



textures/milestone_lei/panosky1
{
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm noimpact
	q3map_nonplanar
	q3map_shadeAngle 172
	q3map_forcemeta
	nomipmaps
	{
		map textures/milestone_lei/panosky1.tga
		rgbGen identityLight
	}
}

textures/milestone_lei/cloudz
{

	q3map_forceMeta
	q3map_nonplanar
	q3map_shadeAngle 179
	cull disable
	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm noimpact
	surfaceparm trans
	//sort sky
	q3map_alphaMod set 0
	sort 4
	nomipmaps
	{
		map textures/milestone_lei/cloudz
		blendFunc blend
		rgbGen vertex
		//alphaGen vertex
		tcMod scroll 0.03 0
	}
}

textures/milestone_lei/cloudz2
{

	q3map_forceMeta
	q3map_nonplanar
	q3map_shadeAngle 179
	cull disable
	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm noimpact
	surfaceparm trans
	//sort sky
	q3map_alphaMod set 0
	sort 4
	nomipmaps
	{
		map textures/milestone_lei/cloudz2
		blendFunc blend
		rgbGen vertex
		//alphaGen vertex
		tcMod scroll 0.03 0
	}
}


textures/milestone_lei/trainground
{

	q3map_forceMeta
	q3map_nonplanar
	q3map_shadeAngle 179
	surfaceparm nomarks
	surfaceparm noimpact
	surfaceparm nodrop
	deformvertexes move 0 0 4 sin 0 1 0 5
	deformvertexes move 0 0 4 sin 0 1 0 2
	deformvertexes move 0 100 0 sin 0 0.5 0 0.3
	{
		map textures/milestone_lei/trainground.tga
		rgbGen identity	
		tcMod scroll -1 0
	}
}



textures/milestone_lei/trainwheel
{

	q3map_forceMeta
	q3map_nonplanar
	q3map_shadeAngle 179
	surfaceparm nomarks
	surfaceparm noimpact
	{
		map textures/milestone_lei/trainwheel
		rgbGen identity	
		alphafunc GE128
		tcMod rotate 66
	}
}


textures/milestone_lei/techtrims
{
	q3map_nonplanar
	q3map_shadeAngle 90
	q3map_editorImage textures/milestone_lei/lavarock21.png
	q3map_forcemeta
	q3map_alphaMod dotproduct ( 1 0 0 )
	surfaceparm metalsteps
//	q3map_normalImage textures/milestone_lei/lavarock21.png
//	q3map_lightmapSampleSize 32
	{
		map textures/milestone_lei/techtrims.png
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map gfx/fx/detail/d_met.tga
		blendfunc gl_dst_color gl_src_color
		rgbGen identity
		//tcGen lightmap
		tcMod scale 16 16
		
		detail
	}
}

textures/milestone_lei/swirly
{
	surfaceparm nolightmap
	q3map_surfacelight 700
	q3map_backSplash 1 8
	cull disable
	{
		clampmap textures/milestone_lei/swirly
		rgbGen identityLight
		tcMod rotate 69
	}
	{
		map textures/milestone_lei/bluescan
		rgbGen identityLight
		blendFunc add
		tcMod scale 16 16
		tcMod scroll 0.0 0.5

	}
}

textures/milestone_lei/metalhexglow
{
	surfaceparm metalsteps
	q3map_backshader textures/milestone_lei/swirly
	polygonoffset
	{
		map textures/milestone_lei/metalhexglow
		rgbGen identity
		alphaFunc GE128
		depthWrite
	}
	{
		map $lightmap
		blendFunc filter
		depthFunc equal
	}
	{
		map gfx/fx/detail/d_met.tga
		blendfunc gl_dst_color gl_src_color
		rgbGen identity
		tcMod scale 16 16
		depthfunc equal
		detail
	}

}


textures/milestone_lei/metpans
{
	surfaceparm metalsteps
	{
		map textures/milestone_lei/metpans
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
		depthfunc equal
	}
	{
		map gfx/fx/detail/d_met.tga
		blendfunc gl_dst_color gl_src_color
		rgbGen identity
		tcMod scale 8 8
		depthfunc equal
		detail
	}
}


textures/milestone_lei/sideplate
{
	surfaceparm metalsteps
	{
		map textures/milestone_lei/sideplate
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map gfx/fx/detail/d_met.tga
		blendfunc gl_dst_color gl_src_color
		rgbGen identity
		tcMod scale 16 16
		detail
	}
}




textures/milestone_lei/liteblue
{
	q3map_lightimage textures/oa_neo/liteblue.tga
	surfaceparm nolightmap
	surfaceparm nomarks
	q3map_surfacelight 3500
	q3map_colorGen const ( 1 1 1 )
	q3map_novertexshadows
	q3map_lightmapFilterRadius 0 8
	{
		map textures/milestone_lei/liteblue.tga
			rgbGen identity
	}
}

textures/milestone_lei/liteblue2
{
	q3map_lightimage textures/milestone_lei/liteblue2.tga
	surfaceparm nolightmap
	surfaceparm nomarks
	q3map_surfacelight 12000
	q3map_colorGen const ( 1 1 1 )
	q3map_flare flareShader
	q3map_novertexshadows
	q3map_lightmapFilterRadius 0 8
	{
		map textures/milestone_lei/liteblue2.tga
			rgbGen identity
	}
}



textures/milestone_lei/liteturq
{
	q3map_lightimage textures/milestone_lei/liteturq.tga
	surfaceparm nolightmap
	surfaceparm nomarks
	q3map_surfacelight 3500
	q3map_colorGen const ( 1 1 1 )
	q3map_novertexshadows
	{
		map textures/milestone_lei/liteturq.tga
			rgbGen identity
	}
}


textures/milestone_lei/liteturq2
{
	q3map_lightimage textures/milestone_lei/liteturq2.tga
	surfaceparm nolightmap
	surfaceparm nomarks
	q3map_surfacelight 3500
	q3map_flare flareShader
	q3map_colorGen const ( 1 1 1 )
	q3map_novertexshadows
	{
		map textures/milestone_lei/liteturq2.tga
			rgbGen identity
	}
}



textures/oa_sfx/anysky
{
 	q3map_editorimage textures/oa_sfx/sky.tga
	q3map_forceMeta
	q3map_nonplanar
	q3map_shadeAngle 179
	cull disable

	surfaceparm nolightmap
	surfaceparm nodlight
	surfaceparm nomarks
	surfaceparm noimpact
	surfaceparm sky
	q3map_colorGen const ( 0 0 0 )
	q3map_colorMod volume
	skyParms env/simple/gray 555 -	// not even going to be a 'sky'
}


// pulled from oa3 common


textures/common/lightgrid
{
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm detail
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm lightgrid
}

textures/common/alphamodvolume
{
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm detail
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nodlight
	surfaceparm noimpact
	surfaceparm noclip
	q3map_alphaMod volume
}


textures/common/alpha100
{
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm detail
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nodlight
	surfaceparm noimpact
	surfaceparm noclip
	q3map_alphaMod volume
	q3map_alphamod set 1.0
	qer_editorimage textures/common/alphamodvolume.tga
}



textures/common/alpha95
{
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm detail
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nodlight
	surfaceparm noimpact
	surfaceparm noclip
	q3map_alphaMod volume
	q3map_alphamod set 0.95
	qer_editorimage textures/common/alphamodvolume.tga
}

textures/common/alpha90
{
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm detail
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nodlight
	surfaceparm noimpact
	surfaceparm noclip
	q3map_alphaMod volume
	q3map_alphamod set 0.90
	qer_editorimage textures/common/alphamodvolume.tga
}

textures/common/alpha85
{
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm detail
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nodlight
	surfaceparm noimpact
	surfaceparm noclip
	q3map_alphaMod volume
	q3map_alphamod set 0.85
	qer_editorimage textures/common/alphamodvolume.tga
}

textures/common/alpha80
{
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm detail
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nodlight
	surfaceparm noimpact
	surfaceparm noclip
	q3map_alphaMod volume
	q3map_alphamod set 0.80
	qer_editorimage textures/common/alphamodvolume.tga
}

textures/common/alpha75
{
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm detail
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nodlight
	surfaceparm noimpact
	surfaceparm noclip
	q3map_alphaMod volume
	q3map_alphamod set 0.75
	qer_editorimage textures/common/alphamodvolume.tga
}

textures/common/alpha50
{
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm detail
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nodlight
	surfaceparm noimpact
	surfaceparm noclip
	q3map_alphaMod volume
	q3map_alphamod set 0.50
	qer_editorimage textures/common/alphamodvolume.tga
}

textures/common/alpha25
{
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm detail
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nodlight
	surfaceparm noimpact
	surfaceparm noclip
	q3map_alphaMod volume
	q3map_alphamod set 0.25
	qer_editorimage textures/common/alphamodvolume.tga
}

textures/common/alpha33
{
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm detail
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nodlight
	surfaceparm noimpact
	surfaceparm noclip
	q3map_alphaMod volume
	q3map_alphamod set 0.333
	qer_editorimage textures/common/alphamodvolume.tga
}

textures/common/alpha66
{
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm detail
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nodlight
	surfaceparm noimpact
	surfaceparm noclip
	q3map_alphaMod volume
	q3map_alphamod set 0.666
	qer_editorimage textures/common/alphamodvolume.tga
}

textures/common/alpha0
{
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm detail
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nodlight
	surfaceparm noimpact
	surfaceparm noclip
	q3map_alphaMod volume
	q3map_alphamod set 0.0
	qer_editorimage textures/common/alphamodvolume.tga
}

textures/common/skip
{
	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm noimpact
	surfaceparm skip
}



