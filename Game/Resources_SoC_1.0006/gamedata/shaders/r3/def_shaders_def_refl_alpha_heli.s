// Фикс стекла у вертолета на янтаре. По работе[ScaV]

function normal    (shader, t_base, t_second, t_detail)
  shader:begin  ("model_env_lq","model_env_lq") 
      : sorting  (3, true)
      : blend    (true,blend.srcalpha,blend.invsrcalpha)
      : aref     (true,0)
      : zb     (true,false)
      : fog    (true)

	shader: dx10texture ("s_base", t_base)
	shader: dx10texture ("s_env", "glas\\glas_dirt")
	shader: dx10sampler ("smp_base")
	shader: dx10sampler ("smp_rtlinear")
end


function l_special  (shader, t_base, t_second, t_detail)
  shader:begin  ("model_distort4glass","particle_distort")
      : sorting   (3, true)
      : blend    (true,blend.srcalpha,blend.invsrcalpha)
      : zb        (true,false)
      : fog       (false)
      : distort   (true)

	shader: dx10texture ("s_base", t_base)
	shader: dx10texture ("s_distort", "pfx\\pfx_dist_glass")
	shader: dx10sampler ("smp_linear")

end
